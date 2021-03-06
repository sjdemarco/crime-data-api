# -*- coding: utf-8 -*-
"""Functional tests using WebTest.

See: http://webtest.readthedocs.org/
"""
from flex.core import validate_api_call

class TestAgenciesEndpoint:
    def test_agencies_endpoint_exists(self, testapp, swagger):
        res = testapp.get('/agencies')
        assert res.status_code == 200
        validate_api_call(swagger, raw_request=res.request, raw_response=res)

    def test_agencies_endpoint_returns_agencies(self, testapp, swagger):
        res = testapp.get('/agencies')
        validate_api_call(swagger, raw_request=res.request, raw_response=res)
        assert len(res.json['results']) > 0
        assert 'ori' in res.json['results'][0]

    def _single_ori(self, testapp):
        res = testapp.get('/agencies')
        return res.json['results'][0]['ori']

    def test_agencies_endpoint_single_record_works(self, testapp, swagger):
        id_no = self._single_ori(testapp)
        res = testapp.get('/agencies/{}'.format(id_no))
        assert res.status_code == 200
        validate_api_call(swagger, raw_request=res.request, raw_response=res)

    def test_agencies_paginate(self, testapp, swagger):
        page1 = testapp.get('/agencies?page=1')
        page2 = testapp.get('/agencies?page=2')
        assert len(page1.json['results']) == 10
        assert len(page2.json['results']) == 10
        assert page2.json['results'][0] not in page1.json['results']

    def test_agencies_page_size(self, testapp, swagger):
        res = testapp.get('/agencies?per_page=5')
        validate_api_call(swagger, raw_request=res.request, raw_response=res)
        assert len(res.json['results']) == 5
