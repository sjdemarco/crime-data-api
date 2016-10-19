import os
import re
from datetime import date, datetime

import sqlalchemy as sa
from flask import request
from flask_login import login_required
#from webservices.common.views import ApiResource
from flask_restful import Resource, fields, marshal_with, reqparse
from sqlalchemy import func

from crime_data.common import models
# from webservices import args
# from webservices import docs
# from webservices import utils
# from webservices import schemas
# from webservices import exceptions
from crime_data.extensions import db

from .helpers import QueryWithAggregates, add_standard_arguments, verify_api_key

# from flask_apispec import doc

OFFENSE_FIELDS = {
    'offense_id': fields.Integer,
    'location': fields.Nested({
        'location_code': fields.String,
        'location_name': fields.String,
    }),
    'offense_type': fields.Nested({
        'offense_code': fields.String,
        'offense_name': fields.String,
        'crime_against': fields.String,
        'offense_category_name': fields.String,
    })
}

FIELDS = {
    'incident_number': fields.String,
    'incident_date': fields.DateTime,
    'submission_date': fields.DateTime,
    'incident_hour': fields.Integer,
    'offenses': fields.List(fields.Nested(OFFENSE_FIELDS)),
    'agency': fields.Nested({'ori': fields.String}),
}

parser = reqparse.RequestParser()
parser.add_argument('crime_against')
parser.add_argument('offense_code')
parser.add_argument('offense_name')
parser.add_argument('offense_category_name')
parser.add_argument('location_code')
parser.add_argument('location_name')
add_standard_arguments(parser)


class IncidentsList(Resource):
    @marshal_with(FIELDS)
    def get(self):
        args = parser.parse_args()
        verify_api_key(args)
        result = models.NibrsIncident.query
        if args['offense_code']:
            result = result.join(models.NibrsOffense). \
                join(models.NibrsOffenseType)
            result = result.filter(
                models.NibrsOffenseType.offense_code == args['offense_code'])

        return result.paginate(args['page'], args['page_size']).items


class IncidentsDetail(Resource):
    @marshal_with(FIELDS)
    def get(self, nbr):
        args = parser.parse_args()
        verify_api_key(args)
        incident = models.NibrsIncident.query.filter_by(
            incident_number=nbr).first()
        return incident


summary_parser = reqparse.RequestParser()
summary_parser.add_argument('by', default='year')
summary_parser.add_argument('fields')
# no nargs available for multiple use of field names
add_standard_arguments(summary_parser)

SUMM_FIELDS = {
    'year': fields.String,
    'total_actual_count': fields.Integer,
    'report_date': fields.DateTime,
    }

class IncidentsCount(Resource):

    SPLITTER = re.compile(r"\s*,\s*")

    def _stringify(self, data):
        """Avoid JSON serialization errors
        by converting values in list of dicts
        into strings."""
        return [{k: (d[k] if hasattr(d[k], '__pow__') else str(d[k])) for k in d}
        for d in (r._asdict() for r in data)]


    def get(self):
        args = summary_parser.parse_args()
        verify_api_key(args)
        by = self.SPLITTER.split(args['by'].lower())
        if args['fields']:
            fields = self.SPLITTER.split(args['fields'].lower())
        else:
            fields = []
        result = models.RetaMonthQuery(aggregated=fields, grouped=by)
        return self._stringify(result.qry)
        # This result isn't working with @marshal_with
