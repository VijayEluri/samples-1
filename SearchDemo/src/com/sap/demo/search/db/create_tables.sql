CREATE COLUMN TABLE "SNWD_PD" ("CLIENT" NVARCHAR(3) DEFAULT '000' NOT NULL ,	 "NODE_KEY" VARBINARY(16) CS_RAW NOT NULL ,	 "PRODUCT_ID" NVARCHAR(10) DEFAULT '' NOT NULL ,	 "TYPE_CODE" NVARCHAR(2) DEFAULT '' NOT NULL ,	 "CATEGORY" NVARCHAR(40) DEFAULT '' NOT NULL ,	 "CREATED_BY" VARBINARY(16) CS_RAW,	 "CREATED_AT" DECIMAL(21,	7) CS_FIXED DEFAULT 0 NOT NULL ,	 "CHANGED_BY" VARBINARY(16) CS_RAW,	 "CHANGED_AT" DECIMAL(21,	7) CS_FIXED DEFAULT 0 NOT NULL ,	 "NAME_GUID" VARBINARY(16) CS_RAW,	 "DESC_GUID" VARBINARY(16) CS_RAW,	 "SUPPLIER_GUID" VARBINARY(16) CS_RAW,	 "TAX_TARIF_CODE" SMALLINT CS_INT DEFAULT 0 NOT NULL ,	 "MEASURE_UNIT" NVARCHAR(3) DEFAULT '' NOT NULL ,	 "WEIGHT_MEASURE" DECIMAL(13,	3) CS_FIXED DEFAULT 0 NOT NULL ,	 "WEIGHT_UNIT" NVARCHAR(3) DEFAULT '' NOT NULL ,	 "CURRENCY_CODE" NVARCHAR(5) DEFAULT '' NOT NULL ,	 "PRICE" DECIMAL(15,2) CS_FIXED DEFAULT 0 NOT NULL ,	 "PRODUCT_PIC_URL" NVARCHAR(255) DEFAULT '' NOT NULL ,	 "WIDTH" DECIMAL(13,	3) CS_FIXED DEFAULT 0 NOT NULL ,	 "DEPTH" DECIMAL(13,	3) CS_FIXED DEFAULT 0 NOT NULL ,	 "HEIGHT" DECIMAL(13,	3) CS_FIXED DEFAULT 0 NOT NULL ,	 "DIM_UNIT" NVARCHAR(3) DEFAULT '' NOT NULL ,	 PRIMARY KEY ("CLIENT",	 "NODE_KEY"))
CREATE COLUMN TABLE "SNWD_TEXTS" ("CLIENT" NVARCHAR(3) DEFAULT '000' NOT NULL ,	 "NODE_KEY" VARBINARY(16) CS_RAW NOT NULL ,	 "PARENT_KEY" VARBINARY(16) CS_RAW,	 "LANGUAGE" NVARCHAR(1) DEFAULT '' NOT NULL ,	 "TEXT" NVARCHAR(255) DEFAULT '' NOT NULL ,	 PRIMARY KEY ("CLIENT",	 "NODE_KEY"))


CREATE TYPE "PRODUCT_RESULT" AS TABLE ("CLIENT" NVARCHAR(3) CS_STRING,"NODE_KEY" VARBINARY(16) CS_RAW,"PRODUCT_ID" NVARCHAR(10) CS_STRING,"TYPE_CODE" NVARCHAR(2) CS_STRING,"CATEGORY" NVARCHAR(40) CS_STRING,"CREATED_BY" VARBINARY(16) CS_RAW,"CREATED_AT" DECIMAL(21,7) CS_FIXED,"CHANGED_BY" VARBINARY(16) CS_RAW,"CHANGED_AT" DECIMAL(21,7) CS_FIXED,"NAME_GUID" VARBINARY(16) CS_RAW,"DESC_GUID" VARBINARY(16) CS_RAW,"SUPPLIER_GUID" VARBINARY(16) CS_RAW,"TAX_TARIF_CODE" SMALLINT CS_INT,"MEASURE_UNIT" NVARCHAR(3) CS_STRING,"WEIGHT_MEASURE" DECIMAL(13,3) CS_FIXED,"WEIGHT_UNIT" NVARCHAR(3) CS_STRING,"CURRENCY_CODE" NVARCHAR(5) CS_STRING,"PRICE" DECIMAL(15,2) CS_FIXED,"PRODUCT_PIC_URL" NVARCHAR(255) CS_STRING,	"WIDTH" DECIMAL(13,3) CS_FIXED,"DEPTH" DECIMAL(13,3) CS_FIXED,"HEIGHT" DECIMAL(13,3) CS_FIXED,"DIM_UNIT" NVARCHAR(3) CS_STRING,"NAME" NVARCHAR(255) CS_STRING,"DESCRIPTION" NVARCHAR(255) CS_STRING,"RELEVANCE" double)