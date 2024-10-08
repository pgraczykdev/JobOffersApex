  CREATE TABLE "CONSOLE_LOGS" 
   (	"LOG_ID" NUMBER(*,0) GENERATED BY DEFAULT ON NULL AS IDENTITY
 MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 2001 CACHE 1000 NOORDER NOCYCLE NOT NULL ENABLE,
	"LOG_TIME" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE,
	"LEVEL_ID" NUMBER(1,0) NOT NULL ENABLE,
	"LEVEL_NAME" VARCHAR2(10) NOT NULL ENABLE,
	"PERMANENT" VARCHAR2(1) NOT NULL ENABLE,
	"SCOPE" VARCHAR2(256),
	"MESSAGE" CLOB,
	"ERROR_CODE" NUMBER(10,0),
	"CALL_STACK" VARCHAR2(4000),
	"SESSION_USER" VARCHAR2(32),
	"MODULE" VARCHAR2(48),
	"ACTION" VARCHAR2(32),
	"CLIENT_INFO" VARCHAR2(64),
	"CLIENT_IDENTIFIER" VARCHAR2(64),
	"IP_ADDRESS" VARCHAR2(48),
	"HOST" VARCHAR2(64),
	"OS_USER" VARCHAR2(64),
	"OS_USER_AGENT" VARCHAR2(200),
	CONSTRAINT "CONSOLE_LOGS_CK" CHECK (permanent in ('Y','N')) ENABLE,
	CONSTRAINT "CONSOLE_LOGS_PK" PRIMARY KEY ("LOG_ID")
  USING INDEX
  PCTFREE 10 INITRANS 20 MAXTRANS 255 LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"  ENABLE
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 10 NOCOMPRESS LOGGING
  STORAGE( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"
 LOB ("MESSAGE") STORE AS SECUREFILE  (
  TABLESPACE "DATA" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING NOCOMPRESS KEEP_DUPLICATES 
  STORAGE( INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT))