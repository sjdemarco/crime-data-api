-- Builds the Materialized views for grouping/counts on the denormalized nibrs_offense table (by year)

SET work_mem='4096MB'; -- Go Super Saiyan.
SET effective_cache_size='4GB'; -- Go Super Saiyan 2.

drop materialized view offense_counts_2014 CASCADE;
create materialized view offense_counts_2014 as select count(offense_id), offense_name,weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id 
from ( SELECT DISTINCT(offense_id), offense_name, weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id, year from nibrs_offense_denorm where year = '2014' ) as temp
GROUP BY GROUPING SETS (
    (year, offense_name),
    (year, weapon_name),
    (year, method_entry_code),
    (year, num_premises_entered),
    (year, location_name),
    (year, state_id, offense_name),
    (year, state_id, weapon_name),
    (year, state_id, method_entry_code),
    (year, state_id, num_premises_entered),
    (year, state_id, location_name),
    (year, county_id, offense_name),
    (year, county_id, weapon_name),
    (year, county_id, method_entry_code),
    (year, county_id, num_premises_entered),
    (year, county_id, location_name)
);

SET work_mem='4096MB';
SET effective_cache_size='4GB';

drop materialized view offense_counts_2013 CASCADE;
create materialized view offense_counts_2013 as select count(offense_id), offense_name,weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id 
from ( SELECT DISTINCT(offense_id), offense_name, weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id, year from nibrs_offense_denorm where year = '2013' ) as temp
GROUP BY GROUPING SETS (
    (year, offense_name),
    (year, weapon_name),
    (year, method_entry_code),
    (year, num_premises_entered),
    (year, location_name),
    (year, state_id, offense_name),
    (year, state_id, weapon_name),
    (year, state_id, method_entry_code),
    (year, state_id, num_premises_entered),
    (year, state_id, location_name),
    (year, county_id, offense_name),
    (year, county_id, weapon_name),
    (year, county_id, method_entry_code),
    (year, county_id, num_premises_entered),
    (year, county_id, location_name)
);

SET work_mem='4096MB';
SET effective_cache_size='4GB';

drop materialized view offense_counts_2012 CASCADE;
create materialized view offense_counts_2012 as select count(offense_id), offense_name,weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id 
from ( SELECT DISTINCT(offense_id), offense_name, weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id, year from nibrs_offense_denorm where year = '2012' ) as temp
GROUP BY GROUPING SETS (
    (year, offense_name),
    (year, weapon_name),
    (year, method_entry_code),
    (year, num_premises_entered),
    (year, location_name),
    (year, state_id, offense_name),
    (year, state_id, weapon_name),
    (year, state_id, method_entry_code),
    (year, state_id, num_premises_entered),
    (year, state_id, location_name),
    (year, county_id, offense_name),
    (year, county_id, weapon_name),
    (year, county_id, method_entry_code),
    (year, county_id, num_premises_entered),
    (year, county_id, location_name)
);

SET work_mem='4096MB';
SET effective_cache_size='4GB';


drop materialized view offense_counts_2011 CASCADE;
create materialized view offense_counts_2011 as select count(offense_id), offense_name,weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id 
from ( SELECT DISTINCT(offense_id), offense_name, weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id, year from nibrs_offense_denorm where year = '2011' ) as temp
GROUP BY GROUPING SETS (
    (year, offense_name),
    (year, weapon_name),
    (year, method_entry_code),
    (year, num_premises_entered),
    (year, location_name),
    (year, state_id, offense_name),
    (year, state_id, weapon_name),
    (year, state_id, method_entry_code),
    (year, state_id, num_premises_entered),
    (year, state_id, location_name),
    (year, county_id, offense_name),
    (year, county_id, weapon_name),
    (year, county_id, method_entry_code),
    (year, county_id, num_premises_entered),
    (year, county_id, location_name)
);

SET work_mem='4096MB';
SET effective_cache_size='4GB';

drop materialized view offense_counts_2010 CASCADE;
create materialized view offense_counts_2010 as select count(offense_id), offense_name,weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id 
from ( SELECT DISTINCT(offense_id), offense_name, weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id, year from nibrs_offense_denorm where year = '2010' ) as temp
GROUP BY GROUPING SETS (
    (year, offense_name),
    (year, weapon_name),
    (year, method_entry_code),
    (year, num_premises_entered),
    (year, location_name),
    (year, state_id, offense_name),
    (year, state_id, weapon_name),
    (year, state_id, method_entry_code),
    (year, state_id, num_premises_entered),
    (year, state_id, location_name),
    (year, county_id, offense_name),
    (year, county_id, weapon_name),
    (year, county_id, method_entry_code),
    (year, county_id, num_premises_entered),
    (year, county_id, location_name)
);

SET work_mem='4096MB';
SET effective_cache_size='4GB';

drop materialized view offense_counts_2009 CASCADE;
create materialized view offense_counts_2009 as select count(offense_id), offense_name,weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id 
from ( SELECT DISTINCT(offense_id), offense_name, weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id, year from nibrs_offense_denorm where year = '2009' ) as temp
GROUP BY GROUPING SETS (
    (year, offense_name),
    (year, weapon_name),
    (year, method_entry_code),
    (year, num_premises_entered),
    (year, location_name),
    (year, state_id, offense_name),
    (year, state_id, weapon_name),
    (year, state_id, method_entry_code),
    (year, state_id, num_premises_entered),
    (year, state_id, location_name),
    (year, county_id, offense_name),
    (year, county_id, weapon_name),
    (year, county_id, method_entry_code),
    (year, county_id, num_premises_entered),
    (year, county_id, location_name)
);

drop materialized view offense_counts_2008 CASCADE;
create materialized view offense_counts_2008 as select count(offense_id), offense_name,weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id 
from ( SELECT DISTINCT(offense_id), offense_name, weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id, year from nibrs_offense_denorm where year = '2008' ) as temp
GROUP BY GROUPING SETS (
    (year, offense_name),
    (year, weapon_name),
    (year, method_entry_code),
    (year, num_premises_entered),
    (year, location_name),
    (year, state_id, offense_name),
    (year, state_id, weapon_name),
    (year, state_id, method_entry_code),
    (year, state_id, num_premises_entered),
    (year, state_id, location_name),
    (year, county_id, offense_name),
    (year, county_id, weapon_name),
    (year, county_id, method_entry_code),
    (year, county_id, num_premises_entered),
    (year, county_id, location_name)
);

SET work_mem='4096MB';
SET effective_cache_size='4GB';

drop materialized view offense_counts_2007 CASCADE;
create materialized view offense_counts_2007 as select count(offense_id), offense_name,weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id 
from ( SELECT DISTINCT(offense_id), offense_name, weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id, year from nibrs_offense_denorm where year = '2007' ) as temp
GROUP BY GROUPING SETS (
    (year, offense_name),
    (year, weapon_name),
    (year, method_entry_code),
    (year, num_premises_entered),
    (year, location_name),
    (year, state_id, offense_name),
    (year, state_id, weapon_name),
    (year, state_id, method_entry_code),
    (year, state_id, num_premises_entered),
    (year, state_id, location_name),
    (year, county_id, offense_name),
    (year, county_id, weapon_name),
    (year, county_id, method_entry_code),
    (year, county_id, num_premises_entered),
    (year, county_id, location_name)
);

SET work_mem='4096MB';
SET effective_cache_size='4GB';

drop materialized view offense_counts_2006 CASCADE;
create materialized view offense_counts_2006 as select count(offense_id), offense_name,weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id 
from ( SELECT DISTINCT(offense_id), offense_name, weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id, year from nibrs_offense_denorm where year = '2006' ) as temp
GROUP BY GROUPING SETS (
    (year, offense_name),
    (year, weapon_name),
    (year, method_entry_code),
    (year, num_premises_entered),
    (year, location_name),
    (year, state_id, offense_name),
    (year, state_id, weapon_name),
    (year, state_id, method_entry_code),
    (year, state_id, num_premises_entered),
    (year, state_id, location_name),
    (year, county_id, offense_name),
    (year, county_id, weapon_name),
    (year, county_id, method_entry_code),
    (year, county_id, num_premises_entered),
    (year, county_id, location_name)
);


SET work_mem='4096MB';
SET effective_cache_size='4GB';

drop materialized view offense_counts_2005 CASCADE;
create materialized view offense_counts_2005 as select count(offense_id), offense_name,weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id 
from ( SELECT DISTINCT(offense_id), offense_name, weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id, year from nibrs_offense_denorm where year = '2005' ) as temp
GROUP BY GROUPING SETS (
    (year, offense_name),
    (year, weapon_name),
    (year, method_entry_code),
    (year, num_premises_entered),
    (year, location_name),
    (year, state_id, offense_name),
    (year, state_id, weapon_name),
    (year, state_id, method_entry_code),
    (year, state_id, num_premises_entered),
    (year, state_id, location_name),
    (year, county_id, offense_name),
    (year, county_id, weapon_name),
    (year, county_id, method_entry_code),
    (year, county_id, num_premises_entered),
    (year, county_id, location_name)
);

SET work_mem='4096MB';
SET effective_cache_size='4GB';

drop materialized view offense_counts_2004 CASCADE;
create materialized view offense_counts_2004 as select count(offense_id), offense_name,weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id 
from ( SELECT DISTINCT(offense_id), offense_name, weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id, year from nibrs_offense_denorm where year = '2004' ) as temp
GROUP BY GROUPING SETS (
    (year, offense_name),
    (year, weapon_name),
    (year, method_entry_code),
    (year, num_premises_entered),
    (year, location_name),
    (year, state_id, offense_name),
    (year, state_id, weapon_name),
    (year, state_id, method_entry_code),
    (year, state_id, num_premises_entered),
    (year, state_id, location_name),
    (year, county_id, offense_name),
    (year, county_id, weapon_name),
    (year, county_id, method_entry_code),
    (year, county_id, num_premises_entered),
    (year, county_id, location_name)
);

SET work_mem='4096MB';
SET effective_cache_size='4GB';

drop materialized view offense_counts_2003 CASCADE;
create materialized view offense_counts_2003 as select count(offense_id), offense_name,weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id 
from ( SELECT DISTINCT(offense_id), offense_name, weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id, year from nibrs_offense_denorm where year = '2003' ) as temp
GROUP BY GROUPING SETS (
    (year, offense_name),
    (year, weapon_name),
    (year, method_entry_code),
    (year, num_premises_entered),
    (year, location_name),
    (year, state_id, offense_name),
    (year, state_id, weapon_name),
    (year, state_id, method_entry_code),
    (year, state_id, num_premises_entered),
    (year, state_id, location_name),
    (year, county_id, offense_name),
    (year, county_id, weapon_name),
    (year, county_id, method_entry_code),
    (year, county_id, num_premises_entered),
    (year, county_id, location_name)
);

SET work_mem='4096MB';
SET effective_cache_size='4GB';

drop materialized view offense_counts_2002 CASCADE;
create materialized view offense_counts_2002 as select count(offense_id), offense_name,weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id 
from ( SELECT DISTINCT(offense_id), offense_name, weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id, year from nibrs_offense_denorm where year = '2002' ) as temp
GROUP BY GROUPING SETS (
    (year, offense_name),
    (year, weapon_name),
    (year, method_entry_code),
    (year, num_premises_entered),
    (year, location_name),
    (year, state_id, offense_name),
    (year, state_id, weapon_name),
    (year, state_id, method_entry_code),
    (year, state_id, num_premises_entered),
    (year, state_id, location_name),
    (year, county_id, offense_name),
    (year, county_id, weapon_name),
    (year, county_id, method_entry_code),
    (year, county_id, num_premises_entered),
    (year, county_id, location_name)
);

SET work_mem='4096MB';
SET effective_cache_size='4GB';

drop materialized view offense_counts_2001 CASCADE;
create materialized view offense_counts_2001 as select count(offense_id), offense_name,weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id 
from ( SELECT DISTINCT(offense_id), offense_name, weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id, year from nibrs_offense_denorm where year = '2001' ) as temp
GROUP BY GROUPING SETS (
    (year, offense_name),
    (year, weapon_name),
    (year, method_entry_code),
    (year, num_premises_entered),
    (year, location_name),
    (year, state_id, offense_name),
    (year, state_id, weapon_name),
    (year, state_id, method_entry_code),
    (year, state_id, num_premises_entered),
    (year, state_id, location_name),
    (year, county_id, offense_name),
    (year, county_id, weapon_name),
    (year, county_id, method_entry_code),
    (year, county_id, num_premises_entered),
    (year, county_id, location_name)
);

SET work_mem='4096MB';
SET effective_cache_size='4GB';

drop materialized view offense_counts_2000 CASCADE;
create materialized view offense_counts_2000 as select count(offense_id), offense_name,weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id 
from ( SELECT DISTINCT(offense_id), offense_name, weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id, year from nibrs_offense_denorm where year = '2000' ) as temp
GROUP BY GROUPING SETS (
    (year, offense_name),
    (year, weapon_name),
    (year, method_entry_code),
    (year, num_premises_entered),
    (year, location_name),
    (year, state_id, offense_name),
    (year, state_id, weapon_name),
    (year, state_id, method_entry_code),
    (year, state_id, num_premises_entered),
    (year, state_id, location_name),
    (year, county_id, offense_name),
    (year, county_id, weapon_name),
    (year, county_id, method_entry_code),
    (year, county_id, num_premises_entered),
    (year, county_id, location_name)
);

SET work_mem='4096MB';
SET effective_cache_size='4GB';

drop materialized view offense_counts_1999 CASCADE;
create materialized view offense_counts_1999 as select count(offense_id), offense_name,weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id 
from ( SELECT DISTINCT(offense_id), offense_name, weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id, year from nibrs_offense_denorm where year = '1999' ) as temp
GROUP BY GROUPING SETS (
    (year, offense_name),
    (year, weapon_name),
    (year, method_entry_code),
    (year, num_premises_entered),
    (year, location_name),
    (year, state_id, offense_name),
    (year, state_id, weapon_name),
    (year, state_id, method_entry_code),
    (year, state_id, num_premises_entered),
    (year, state_id, location_name),
    (year, county_id, offense_name),
    (year, county_id, weapon_name),
    (year, county_id, method_entry_code),
    (year, county_id, num_premises_entered),
    (year, county_id, location_name)
);


SET work_mem='4096MB';
SET effective_cache_size='4GB';

drop materialized view offense_counts_1998 CASCADE;
create materialized view offense_counts_1998 as select count(offense_id), offense_name,weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id 
from ( SELECT DISTINCT(offense_id), offense_name, weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id, year from nibrs_offense_denorm where year = '1998' ) as temp
GROUP BY GROUPING SETS (
    (year, offense_name),
    (year, weapon_name),
    (year, method_entry_code),
    (year, num_premises_entered),
    (year, location_name),
    (year, state_id, offense_name),
    (year, state_id, weapon_name),
    (year, state_id, method_entry_code),
    (year, state_id, num_premises_entered),
    (year, state_id, location_name),
    (year, county_id, offense_name),
    (year, county_id, weapon_name),
    (year, county_id, method_entry_code),
    (year, county_id, num_premises_entered),
    (year, county_id, location_name)
);

SET work_mem='4096MB';
SET effective_cache_size='4GB';

drop materialized view offense_counts_1997 CASCADE;
create materialized view offense_counts_1997 as select count(offense_id), offense_name,weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id 
from ( SELECT DISTINCT(offense_id), offense_name, weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id, year from nibrs_offense_denorm where year = '1997' ) as temp
GROUP BY GROUPING SETS (
    (year, offense_name),
    (year, weapon_name),
    (year, method_entry_code),
    (year, num_premises_entered),
    (year, location_name),
    (year, state_id, offense_name),
    (year, state_id, weapon_name),
    (year, state_id, method_entry_code),
    (year, state_id, num_premises_entered),
    (year, state_id, location_name),
    (year, county_id, offense_name),
    (year, county_id, weapon_name),
    (year, county_id, method_entry_code),
    (year, county_id, num_premises_entered),
    (year, county_id, location_name)
);

SET work_mem='4096MB';
SET effective_cache_size='4GB';


drop materialized view offense_counts_1996 CASCADE;
create materialized view offense_counts_1996 as select count(offense_id), offense_name,weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id 
from ( SELECT DISTINCT(offense_id), offense_name, weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id, year from nibrs_offense_denorm where year = '1996' ) as temp
GROUP BY GROUPING SETS (
    (year, offense_name),
    (year, weapon_name),
    (year, method_entry_code),
    (year, num_premises_entered),
    (year, location_name),
    (year, state_id, offense_name),
    (year, state_id, weapon_name),
    (year, state_id, method_entry_code),
    (year, state_id, num_premises_entered),
    (year, state_id, location_name),
    (year, county_id, offense_name),
    (year, county_id, weapon_name),
    (year, county_id, method_entry_code),
    (year, county_id, num_premises_entered),
    (year, county_id, location_name)
);

SET work_mem='4096MB';
SET effective_cache_size='4GB';

drop materialized view offense_counts_1995 CASCADE;
create materialized view offense_counts_1995 as select count(offense_id), offense_name,weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id 
from ( SELECT DISTINCT(offense_id), offense_name, weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id, year from nibrs_offense_denorm where year = '1995' ) as temp
GROUP BY GROUPING SETS (
    (year, offense_name),
    (year, weapon_name),
    (year, method_entry_code),
    (year, num_premises_entered),
    (year, location_name),
    (year, state_id, offense_name),
    (year, state_id, weapon_name),
    (year, state_id, method_entry_code),
    (year, state_id, num_premises_entered),
    (year, state_id, location_name),
    (year, county_id, offense_name),
    (year, county_id, weapon_name),
    (year, county_id, method_entry_code),
    (year, county_id, num_premises_entered),
    (year, county_id, location_name)
);

SET work_mem='4096MB';
SET effective_cache_size='4GB';

drop materialized view offense_counts_1994 CASCADE;
create materialized view offense_counts_1994 as select count(offense_id), offense_name,weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id 
from ( SELECT DISTINCT(offense_id), offense_name, weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id, year from nibrs_offense_denorm where year = '1994' ) as temp
GROUP BY GROUPING SETS (
    (year, offense_name),
    (year, weapon_name),
    (year, method_entry_code),
    (year, num_premises_entered),
    (year, location_name),
    (year, state_id, offense_name),
    (year, state_id, weapon_name),
    (year, state_id, method_entry_code),
    (year, state_id, num_premises_entered),
    (year, state_id, location_name),
    (year, county_id, offense_name),
    (year, county_id, weapon_name),
    (year, county_id, method_entry_code),
    (year, county_id, num_premises_entered),
    (year, county_id, location_name)
);

SET work_mem='4096MB';
SET effective_cache_size='4GB';

drop materialized view offense_counts_1993 CASCADE;
create materialized view offense_counts_1993 as select count(offense_id), offense_name,weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id 
from ( SELECT DISTINCT(offense_id), offense_name, weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id, year from nibrs_offense_denorm where year = '1993' ) as temp
GROUP BY GROUPING SETS (
    (year, offense_name),
    (year, weapon_name),
    (year, method_entry_code),
    (year, num_premises_entered),
    (year, location_name),
    (year, state_id, offense_name),
    (year, state_id, weapon_name),
    (year, state_id, method_entry_code),
    (year, state_id, num_premises_entered),
    (year, state_id, location_name),
    (year, county_id, offense_name),
    (year, county_id, weapon_name),
    (year, county_id, method_entry_code),
    (year, county_id, num_premises_entered),
    (year, county_id, location_name)
);

SET work_mem='4096MB';
SET effective_cache_size='4GB';

drop materialized view offense_counts_1992 CASCADE;
create materialized view offense_counts_1992 as select count(offense_id), offense_name,weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id 
from ( SELECT DISTINCT(offense_id), offense_name, weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id, year from nibrs_offense_denorm where year = '1992' ) as temp
GROUP BY GROUPING SETS (
    (year, offense_name),
    (year, weapon_name),
    (year, method_entry_code),
    (year, num_premises_entered),
    (year, location_name),
    (year, state_id, offense_name),
    (year, state_id, weapon_name),
    (year, state_id, method_entry_code),
    (year, state_id, num_premises_entered),
    (year, state_id, location_name),
    (year, county_id, offense_name),
    (year, county_id, weapon_name),
    (year, county_id, method_entry_code),
    (year, county_id, num_premises_entered),
    (year, county_id, location_name)
);

SET work_mem='4096MB';
SET effective_cache_size='4GB';

drop materialized view offense_counts_1991 CASCADE;
create materialized view offense_counts_1991 as select count(offense_id), offense_name,weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id 
from ( SELECT DISTINCT(offense_id), offense_name, weapon_name, method_entry_code, num_premises_entered,location_name, state_id,county_id, year from nibrs_offense_denorm where year = '1991' ) as temp
GROUP BY GROUPING SETS (
    (year, offense_name),
    (year, weapon_name),
    (year, method_entry_code),
    (year, num_premises_entered),
    (year, location_name),
    (year, state_id, offense_name),
    (year, state_id, weapon_name),
    (year, state_id, method_entry_code),
    (year, state_id, num_premises_entered),
    (year, state_id, location_name),
    (year, county_id, offense_name),
    (year, county_id, weapon_name),
    (year, county_id, method_entry_code),
    (year, county_id, num_premises_entered),
    (year, county_id, location_name)
);