CREATE TABLE IF NOT EXISTS ucs_satellites_data(
    sat_name TEXT,
    country_org TEXT,
    operator_country TEXT,
    operator_owner TEXT,
    users TEXT,
    purpose TEXT,
    detailed_purpose TEXT,
    orbit_class TEXT,
    orbit_type TEXT,
    geo FLOAT,
    perigee FLOAT,
    apogee FLOAT,
    eccentricity FLOAT,
    inclination FLOAT,
    period_min FLOAT,
    launch_mass FLOAT,
    dry_mass TEXT,
    power TEXT,
    expected_lifetime FLOAT,
    contractor TEXT,
    contractor_country TEXT,
    launch_site TEXT,
    launch_vehicle TEXT,
    cospar_number TEXT,
    norad_id INT
);
COPY ucs_satellites_data
FROM '/space_data/UCS_satellites_data.csv'
DELIMITER ';'
CSV HEADER
NULL AS '';