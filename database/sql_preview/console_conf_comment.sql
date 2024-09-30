
   COMMENT ON COLUMN "CONSOLE_CONF"."CONF_ID" IS 'The primary key - is secured by a check constraint which allows only one record in the table.';
   COMMENT ON COLUMN "CONSOLE_CONF"."CONF_SYSDATE" IS 'The date when console was configured the last time.';
   COMMENT ON COLUMN "CONSOLE_CONF"."CONF_USER" IS 'The user who configured the console the last time.';
   COMMENT ON COLUMN "CONSOLE_CONF"."LEVEL_ID" IS 'The defined log level ID.';
   COMMENT ON COLUMN "CONSOLE_CONF"."LEVEL_NAME" IS 'The defined log level name (only for informational purposes).';
   COMMENT ON COLUMN "CONSOLE_CONF"."CHECK_INTERVAL" IS 'The number of seconds a session looks for a changed configuration.';
   COMMENT ON COLUMN "CONSOLE_CONF"."ENABLE_ASCII_ART" IS 'Currently used to have more fun with the APEX error handling messages. But who knows...';
   COMMENT ON COLUMN "CONSOLE_CONF"."CLIENT_PREFS" IS 'Client preferences in CSV format. We save it in this way to have always only one row of configuration data which we read with the result cache.';
   COMMENT ON TABLE "CONSOLE_CONF"  IS 'Holds the console configuration in a single record.';