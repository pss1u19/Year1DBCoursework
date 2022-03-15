BEGIN TRANSACTION;
INSERT INTO monthYear SELECT DISTINCT month,year FROM dataset;
INSERT INTO dates SELECT DISTINCT dateRep,day,month FROM dataset;
INSERT INTO countries SELECT DISTINCT countriesAndTerritories,geoId,countryterritoryCode,popData2018,continentExp FROM dataset;
INSERT INTO casesbydate SELECT dateRep,cases,deaths,geoId FROM dataset;
COMMIT;
