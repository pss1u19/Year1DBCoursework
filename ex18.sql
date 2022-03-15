SELECT countries.countriesAndTerritories,(1.0*SUM(casesbydate.deaths))/(1.0*SUM(casesbydate.cases)) as perc FROM countries,casesbydate GROUP BY countries.geoId ORDER BY perc DESC LIMIT 10;
