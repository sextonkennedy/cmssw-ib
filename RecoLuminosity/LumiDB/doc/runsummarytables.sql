CREATE TABLE "CMSRUNSUMMARY"
   (	"RUNNUM" NUMBER(10,0),
	"HLTKEY" VARCHAR2(128) NOT NULL ENABLE,
	"FILLNUM" NUMBER(10,0),
	"SEQUENCE" VARCHAR2(56) NOT NULL ENABLE,
	"STARTTIME" TIMESTAMP (6),
	"STOPTIME" TIMESTAMP (6),
	"L1KEY" VARCHAR2(128),
	"AMODETAG" VARCHAR2(28),
	"EGEV" NUMBER(10,0),
	"FILLSCHEME" VARCHAR2(128),
	"NCOLLIDINGBUNCHES" NUMBER(10,0),
	 CONSTRAINT "CMSRUNSUMMARY_PK" PRIMARY KEY ("RUNNUM")
)
PARTITION BY RANGE(RUNNUM)
(
PARTITION THEREST VALUES LESS THAN(MAXVALUE)
);
GRANT SELECT ON "CMSRUNSUMMARY" TO PUBLIC;	
GRANT SELECT,INSERT,DELETE,UPDATE ON "CMSRUNSUMMARY" TO CMS_LUMI_WRITER;