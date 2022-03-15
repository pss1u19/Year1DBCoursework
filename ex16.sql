SELECT M.dateRep, SUM(M.cases),SUM(M.deaths),C.continentExp
FROM casesbydate AS M, countries AS C
GROUP BY C.continentExp
ORDER BY M.dateRep ASC;
