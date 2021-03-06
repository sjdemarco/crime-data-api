CREATE INDEX reta_month_offense_subcat_summary_year_idx ON reta_month_offense_subcat_summary(year);
CREATE INDEX reta_month_offense_subcat_summary_month_idx ON reta_month_offense_subcat_summary(month);
CREATE INDEX reta_month_offense_subcat_summary_grouping_bitmap_idx ON reta_month_offense_subcat_summary(grouping_bitmap);
CREATE INDEX reta_month_offense_subcat_summary_lower_idx ON reta_month_offense_subcat_summary(LOWER(state_name));
CREATE INDEX reta_month_offense_subcat_summary_lower_idx1 ON reta_month_offense_subcat_summary(LOWER(state));
CREATE INDEX reta_month_offense_subcat_summary_lower_idx2 ON reta_month_offense_subcat_summary(LOWER(classification));
CREATE INDEX reta_month_offense_subcat_summary_lower_idx3 ON reta_month_offense_subcat_summary(LOWER(offense_category));
CREATE INDEX reta_month_offense_subcat_summary_lower_idx4 ON reta_month_offense_subcat_summary(LOWER(offense_code));
CREATE INDEX reta_month_offense_subcat_summary_lower_idx5 ON reta_month_offense_subcat_summary(LOWER(offense));
CREATE INDEX reta_month_offense_subcat_summary_lower_idx6 ON reta_month_offense_subcat_summary(LOWER(offense_subcat_code));
CREATE INDEX reta_month_offense_subcat_summary_lower_idx7 ON reta_month_offense_subcat_summary(LOWER(offense_subcat));
