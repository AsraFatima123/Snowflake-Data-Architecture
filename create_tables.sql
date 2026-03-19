CREATE OR REPLACE TABLE raw_data (
    id INT,
    event_time TIMESTAMP,
    event_type STRING,
    user_id STRING,
    metadata VARIANT
);

CREATE OR REPLACE TABLE curated_data (
    id INT,
    event_date DATE,
    event_type STRING,
    user_id STRING
);
