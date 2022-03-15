SELECT countries.countriesAndTerritories,(1.0* SUM(casesbydate.cases))/countries.popData2018,(1.0*SUM(casesbydate.deaths))/countries.popData2018 FROM countries, casesbydate
GROUP BY countries.geoId;
