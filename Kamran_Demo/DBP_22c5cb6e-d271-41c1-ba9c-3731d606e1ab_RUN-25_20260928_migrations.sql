-- ============================================================
-- MIGRATION SCRIPT
-- ============================================================
-- Target: PROD.TEST
-- ============================================================

USE DATABASE PROD;
USE SCHEMA TEST;


-- ------------------------------------------------------------
-- DROP OBJECTS
-- ------------------------------------------------------------

DROP TABLE IF EXISTS "PROD"."TEST"."PROD_TEMP_DATA";

-- ------------------------------------------------------------
-- CREATE OBJECTS
-- ------------------------------------------------------------

CREATE OR REPLACE TRANSIENT TABLE "PROD"."TEST"."DEV_TEMP_DATA" (
	ID NUMBER(38,0),
	VALUE VARCHAR(16777216)
)
  DATA_RETENTION_TIME_IN_DAYS = 1
;

CREATE OR REPLACE TRANSIENT TABLE "PROD"."TEST"."TEMP_USERS" (
	ID NUMBER(38,0),
	NAME VARCHAR(16777216)
)
  DATA_RETENTION_TIME_IN_DAYS = 1
;


-- ============================================================
-- END - 3 statement(s)
-- ============================================================