/*
* Replace DB_SCHEMA_NAME" by  your database schema name
*/

--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "DB_SCHEMA_NAME"."USERS" 
   (	"USERNAME" VARCHAR2(50 BYTE), 
	"PASSWORD" VARCHAR2(30 BYTE), 
	"GIVENNAME" VARCHAR2(50 BYTE), 
	"FAMILYNAME" VARCHAR2(50 BYTE), 
	"EMAIL" VARCHAR2(40 BYTE), 
	"ROLE" VARCHAR2(20 BYTE), 
	"CREATED_USER" VARCHAR2(50 BYTE), 
	"CREATED_DATE" DATE, 
	"LAST_MODIFIED_USER" VARCHAR2(50 BYTE), 
	"LAST_MODIFIED_DATE" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into DB_SCHEMA_NAME.USERS
SET DEFINE OFF;

--------------------------------------------------------
--  DDL for Index USERS_USERNAME_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DB_SCHEMA_NAME"."USERS_USERNAME_PK" ON "DB_SCHEMA_NAME"."USERS" ("USERNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "DB_SCHEMA_NAME"."USERS" MODIFY ("USERNAME" NOT NULL ENABLE);
 
  ALTER TABLE "DB_SCHEMA_NAME"."USERS" MODIFY ("PASSWORD" NOT NULL ENABLE);
 
  ALTER TABLE "DB_SCHEMA_NAME"."USERS" MODIFY ("GIVENNAME" NOT NULL ENABLE);
 
  ALTER TABLE "DB_SCHEMA_NAME"."USERS" MODIFY ("FAMILYNAME" NOT NULL ENABLE);
 
  ALTER TABLE "DB_SCHEMA_NAME"."USERS" MODIFY ("ROLE" NOT NULL ENABLE);
 
  ALTER TABLE "DB_SCHEMA_NAME"."USERS" MODIFY ("CREATED_USER" NOT NULL ENABLE);
 
  ALTER TABLE "DB_SCHEMA_NAME"."USERS" MODIFY ("CREATED_DATE" NOT NULL ENABLE);
 
  ALTER TABLE "DB_SCHEMA_NAME"."USERS" ADD CONSTRAINT "USERS_USERNAME_PK" PRIMARY KEY ("USERNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;

--------------------------------------------------------
--  DDL for Table EMAIL_TEMPLATE
--------------------------------------------------------

  CREATE TABLE "DB_SCHEMA_NAME"."EMAIL_TEMPLATE" 
   (	"EMAIL_ID" NUMBER, 
	"EMAIL_TEMPLATE" VARCHAR2(4000 BYTE), 
	"CREATED_USER" VARCHAR2(30 BYTE), 
	"CREATED_DATE" DATE, 
	"LAST_MODIFIED_USER" VARCHAR2(30 BYTE), 
	"LAST_MODIFIED_DATE" DATE, 
	"EMAIL_TEMPLATE_ID" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into DB_SCHEMA_NAME.EMAIL_TEMPLATE
SET DEFINE OFF;

--------------------------------------------------------
--  DDL for Index EMAIL_TEMPLATE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DB_SCHEMA_NAME"."EMAIL_TEMPLATE_PK" ON "DB_SCHEMA_NAME"."EMAIL_TEMPLATE" ("EMAIL_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table EMAIL_TEMPLATE
--------------------------------------------------------

  ALTER TABLE "DB_SCHEMA_NAME"."EMAIL_TEMPLATE" ADD CONSTRAINT "EMAIL_TEMPLATE_PK" PRIMARY KEY ("EMAIL_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "DB_SCHEMA_NAME"."EMAIL_TEMPLATE" MODIFY ("EMAIL_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DB_SCHEMA_NAME"."EMAIL_TEMPLATE" MODIFY ("EMAIL_TEMPLATE" NOT NULL ENABLE);
 
  ALTER TABLE "DB_SCHEMA_NAME"."EMAIL_TEMPLATE" MODIFY ("CREATED_USER" NOT NULL ENABLE);
 
  ALTER TABLE "DB_SCHEMA_NAME"."EMAIL_TEMPLATE" MODIFY ("CREATED_DATE" NOT NULL ENABLE);


--------------------------------------------------------
--  DDL for Table ADMIN_GRID
--------------------------------------------------------

  CREATE TABLE "DB_SCHEMA_NAME"."ADMIN_GRID" 
   (	"ADMIN_GRID_ID" NUMBER, 
	"GRID_ID" NUMBER, 
	"STATUS" VARCHAR2(20 BYTE), 
	"SIMULATION_TIME" NUMBER, 
	"CREATED_USER" VARCHAR2(50 BYTE), 
	"CREATED_DATE" DATE, 
	"LAST_MODIFIED_USER" VARCHAR2(50 BYTE), 
	"LAST_MODIFIED_DATE" DATE, 
	"GRID_NAME" VARCHAR2(50 BYTE), 
	"ROAD1_SIDE1" NUMBER, 
	"ROAD1_SIDE2" NUMBER, 
	"ROAD2_SIDE1" NUMBER, 
	"ROAD2_SIDE2" NUMBER, 
	"ROAD3_SIDE1" NUMBER, 
	"ROAD3_SIDE2" NUMBER, 
	"ROAD4_SIDE1" NUMBER, 
	"ROAD4_SIDE2" NUMBER, 
	"ROAD5_SIDE1" NUMBER, 
	"ROAD5_SIDE2" NUMBER, 
	"ROAD6_SIDE1" NUMBER, 
	"ROAD6_SIDE2" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into DB_SCHEMA_NAME.ADMIN_GRID


--------------------------------------------------------
--  DDL for Index ADMIN_GRID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DB_SCHEMA_NAME"."ADMIN_GRID_PK" ON "DB_SCHEMA_NAME"."ADMIN_GRID" ("ADMIN_GRID_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table ADMIN_GRID
--------------------------------------------------------

  ALTER TABLE "DB_SCHEMA_NAME"."ADMIN_GRID" ADD CONSTRAINT "ADMIN_GRID_PK" PRIMARY KEY ("ADMIN_GRID_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "DB_SCHEMA_NAME"."ADMIN_GRID" MODIFY ("GRID_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DB_SCHEMA_NAME"."ADMIN_GRID" MODIFY ("CREATED_USER" NOT NULL ENABLE);
 
  ALTER TABLE "DB_SCHEMA_NAME"."ADMIN_GRID" MODIFY ("CREATED_DATE" NOT NULL ENABLE);
 
  ALTER TABLE "DB_SCHEMA_NAME"."ADMIN_GRID" MODIFY ("ADMIN_GRID_ID" NOT NULL ENABLE);
 
  ALTER TABLE "DB_SCHEMA_NAME"."ADMIN_GRID" MODIFY ("STATUS" NOT NULL ENABLE);
 
  ALTER TABLE "DB_SCHEMA_NAME"."ADMIN_GRID" MODIFY ("SIMULATION_TIME" NOT NULL ENABLE);
 
  ALTER TABLE "DB_SCHEMA_NAME"."ADMIN_GRID" MODIFY ("GRID_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "DB_SCHEMA_NAME"."ADMIN_GRID" MODIFY ("ROAD1_SIDE1" NOT NULL ENABLE);
 
  ALTER TABLE "DB_SCHEMA_NAME"."ADMIN_GRID" MODIFY ("ROAD1_SIDE2" NOT NULL ENABLE);
 
  ALTER TABLE "DB_SCHEMA_NAME"."ADMIN_GRID" MODIFY ("ROAD2_SIDE1" NOT NULL ENABLE);
 
  ALTER TABLE "DB_SCHEMA_NAME"."ADMIN_GRID" MODIFY ("ROAD2_SIDE2" NOT NULL ENABLE);
 
  ALTER TABLE "DB_SCHEMA_NAME"."ADMIN_GRID" MODIFY ("ROAD3_SIDE1" NOT NULL ENABLE);
 
  ALTER TABLE "DB_SCHEMA_NAME"."ADMIN_GRID" MODIFY ("ROAD3_SIDE2" NOT NULL ENABLE);
 
  ALTER TABLE "DB_SCHEMA_NAME"."ADMIN_GRID" MODIFY ("ROAD4_SIDE1" NOT NULL ENABLE);
 
  ALTER TABLE "DB_SCHEMA_NAME"."ADMIN_GRID" MODIFY ("ROAD4_SIDE2" NOT NULL ENABLE);
 
  ALTER TABLE "DB_SCHEMA_NAME"."ADMIN_GRID" MODIFY ("ROAD5_SIDE1" NOT NULL ENABLE);
 
  ALTER TABLE "DB_SCHEMA_NAME"."ADMIN_GRID" MODIFY ("ROAD5_SIDE2" NOT NULL ENABLE);
 
  ALTER TABLE "DB_SCHEMA_NAME"."ADMIN_GRID" MODIFY ("ROAD6_SIDE1" NOT NULL ENABLE);
 
  ALTER TABLE "DB_SCHEMA_NAME"."ADMIN_GRID" MODIFY ("ROAD6_SIDE2" NOT NULL ENABLE);

--------------------------------------------------------
--  File created - Wednesday-September-28-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table GRAPH
--------------------------------------------------------

  CREATE TABLE "S3620636"."GRAPH" 
   (	"ADMIN_GRID_ID" NUMBER, 
	"CREATED_USER" VARCHAR2(50 BYTE), 
	"CREATED_DATE" TIMESTAMP (6), 
	"LAST_MODIFIED_USER" VARCHAR2(50 BYTE), 
	"LAST_MODIFIED_DATE" DATE, 
	"LIGHT1_TIME" NUMBER, 
	"LIGHT2_TIME" NUMBER, 
	"LIGHT3_TIME" NUMBER, 
	"LIGHT4_TIME" NUMBER, 
	"LIGHT5_TIME" NUMBER, 
	"LIGHT6_TIME" NUMBER, 
	"LIGHT7_TIME" NUMBER, 
	"LIGHT8_TIME" NUMBER, 
	"LIGHT9_TIME" NUMBER, 
	"LIGHT10_TIME" NUMBER, 
	"LIGHT11_TIME" NUMBER, 
	"LIGHT12_TIME" NUMBER, 
	"LIGHT13_TIME" NUMBER, 
	"LIGHT14_TIME" NUMBER, 
	"LIGHT15_TIME" NUMBER, 
	"LIGHT16_TIME" NUMBER, 
	"LIGHT17_TIME" NUMBER, 
	"LIGHT18_TIME" NUMBER, 
	"ROAD1_SIDE1_CARS" NUMBER, 
	"ROAD1_SIDE2_CARS" NUMBER, 
	"ROAD2_SIDE1_CARS" NUMBER, 
	"ROAD2_SIDE2_CARS" NUMBER, 
	"ROAD3_SIDE1_CARS" NUMBER, 
	"ROAD3_SIDE2_CARS" NUMBER, 
	"ROAD4_SIDE1_CARS" NUMBER, 
	"ROAD4_SIDE2_CARS" NUMBER, 
	"ROAD5_SIDE1_CARS" NUMBER, 
	"ROAD5_SIDE2_CARS" NUMBER, 
	"ROAD6_SIDE1_CARS" NUMBER, 
	"ROAD6_SIDE2_CARS" NUMBER, 
	"GRAPH_ID" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;

--------------------------------------------------------
--  Constraints for Table GRAPH
--------------------------------------------------------

  ALTER TABLE "S3620636"."GRAPH" MODIFY ("ADMIN_GRID_ID" NOT NULL ENABLE);
 
  ALTER TABLE "S3620636"."GRAPH" MODIFY ("CREATED_USER" NOT NULL ENABLE);
 
  ALTER TABLE "S3620636"."GRAPH" MODIFY ("CREATED_DATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table GRAPH
--------------------------------------------------------

  ALTER TABLE "S3620636"."GRAPH" ADD CONSTRAINT "GRAPH_FK1_ADMIN_GRID" FOREIGN KEY ("ADMIN_GRID_ID")
	  REFERENCES "S3620636"."ADMIN_GRID" ("ADMIN_GRID_ID") ENABLE;



