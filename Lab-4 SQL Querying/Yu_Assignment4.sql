select cityName, countryName,district,City.population from City join Country 
on City.CountryCode = Country.Code
where countryName = "Afghanistan" ;

SELECT Region, countryName, LifeExpectancy FROM Country where Region = "Middle East"
Order by LifeExpectancy DESC limit 1;

Select Region, SUM(GNP) FROM Country where Region = "Caribbean";

Select Region, countryName, CountryLanguage.Language, CountryLanguage.IsOfficial FROM Country join CountryLanguage
on Country.Code = CountryLanguage.CountryCode
where CountryLanguage.Language = "French" and Region = "Western Europe" and CountryLanguage.IsOfficial = "T";

Select countryName, City.cityName From City join Country
on City.CountryCode = Country.Code
where Country.countryName = "Madagascar" and City.cityName like  "A%";