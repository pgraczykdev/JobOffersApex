  CREATE TABLE "CONSOLE_CONF" 
   (	"CONF_ID" VARCHAR2(4) NOT NULL ENABLE,
	"CONF_SYSDATE" DATE NOT NULL ENABLE,
	"CONF_USER" VARCHAR2(64),
	"LEVEL_ID" NUMBER(1,0) NOT NULL ENABLE,
	"LEVEL_NAME" VARCHAR2(10) NOT NULL ENABLE,
	"CHECK_INTERVAL" NUMBER(2,0) NOT NULL ENABLE,
	"ENABLE_ASCII_ART" VARCHAR2(5) NOT NULL ENABLE,
	"CLIENT_PREFS" VARCHAR2(4000),
	CONSTRAINT "CONSOLE_CONF_CK1" CHECK ( conf_id = 'CONF' ) ENABLE,
	CONSTRAINT "CONSOLE_CONF_CK2" CHECK ( level_id in (1, 2, 3, 4, 5) ) ENABLE,
	CONSTRAINT "CONSOLE_CONF_CK3" CHECK ( level_name = decode(level_id, 1,'error', 2,'warning', 3,'info', 4,'debug', 5,'trace') ) ENABLE,
	CONSTRAINT "CONSOLE_CONF_CK4" CHECK ( check_interval between 10 and 60 ) ENABLE,
	CONSTRAINT "CONSOLE_CONF_CK5" CHECK ( enable_ascii_art in ('true','false') ) ENABLE,
	CONSTRAINT "CONSOLE_CONF_PK" PRIMARY KEY ("CONF_ID")
  USING INDEX
  PCTFREE 10 INITRANS 20 MAXTRANS 255 LOGGING
  TABLESPACE "DATA"  ENABLE
   ) SEGMENT CREATION DEFERRED
  PCTFREE 10 PCTUSED 40 INITRANS 10 NOCOMPRESS LOGGING
  TABLESPACE "DATA"