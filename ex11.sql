BEGIN TRANSACTION;
CREATE TABLE monthYear(
	"month" tinyint PRIMARY KEY,
	"year" YEAR
);
CREATE TABLE dates(
	"dateRep" DATE PRIMARY KEY,
	"day" tinyint,
	"month" tinyint,
	FOREIGN KEY (month)
		REFERENCES "monthYear" (month)
		ON DELETE CASCADE
		ON UPDATE NO ACTION
);
CREATE TABLE countries(
	"countriesAndTerritories" VARCHAR(35),
	"geoId" VARCHAR(2) PRIMARY KEY,
	"countryterritoryCode" VARCHAR(3),
	"popData2018" int,
	"continentExp" VARCHAR(10)
);
CREATE TABLE casesbydate(
	"dateRep" DATE,
	"cases" int,
	"deaths" int,
	"geoId" VARCHAR(2),
	PRIMARY KEY (dateRep,geoId),
	FOREIGN KEY (dateRep)
		REFERENCES "dates"(dateRep)
		ON DELETE CASCADE
		ON UPDATE NO ACTION,
	FOREIGN KEY (geoId)
		REFERENCES "countries"(geoId)
		ON DELETE CASCADE
		ON UPDATE NO ACTION

);
COMMIT;
