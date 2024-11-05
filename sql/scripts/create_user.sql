DO $$
BEGIN
    IF NOT EXISTS (SELECT FROM pg_roles WHERE rolname = 'spark_sql') THEN
        CREATE USER spark_sql WITH PASSWORD 'password';
        GRANT CONNECT ON DATABASE sd_analytics TO spark_sql;
        GRANT SELECT, INSERT ON satellites_data TO spark_sql;
        GRANT SELECT, INSERT ON ucs_sateliltes_data TO spark_sql;
    END IF;
END $$;