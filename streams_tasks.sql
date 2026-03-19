CREATE OR REPLACE STREAM raw_stream ON TABLE raw_data;

CREATE OR REPLACE TASK transform_task
WAREHOUSE = compute_wh
SCHEDULE = '1 MINUTE'
AS
INSERT INTO curated_data
SELECT
    id,
    CAST(event_time AS DATE),
    event_type,
    user_id
FROM raw_stream;
