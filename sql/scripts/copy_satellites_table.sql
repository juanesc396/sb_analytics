CREATE TABLE IF NOT EXISTS satellites_data(
    intldes TEXT,
    norad_cat_id INT PRIMARY KEY,
    object_type TEXT,
    satname TEXT,
    country TEXT,
    launch_date DATE,
    launch_site TEXT,
    decay TEXT,
    orbital_period FLOAT,
    inclination FLOAT,
    apogee FLOAT,
    perigee FLOAT,
    comment TEXT,
    commentcode TEXT,
    rcsvalue INT,
    rcs_size TEXT,
    file_num INT,
    launch_year INT,
    launch_num INT,
    launch_piece TEXT,
    current TEXT,
    object_name TEXT,
    object_id TEXT,
    object_number INT
);
COPY satellites_data
FROM '/space_data/satellites.csv'
DELIMITER ',' 
CSV HEADER
NULL AS '';