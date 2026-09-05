SELECT 
	FIS.ProductKey, FIS.CustomerKey, FIS.UnitPrice, FIS.OrderQuantity, FIS.SalesAmount, FIS.SalesOrderNumber,FIS.OrderDate, 
	C.FirstName, C.LastName,C.BirthDate, C.MaritalStatus, C.Gender, C.EmailAddress, C.YearlyIncome, C.NumberCarsOwned, 
	G.GeographyKey,G.City, G.StateProvinceName, G.EnglishCountryRegionName, G.SalesTerritoryKey,
	P.EnglishProductName,
	SubC.ProductSubcategoryKey, SubC.EnglishProductSubcategoryName,
	PC.ProductCategoryKey, PC.EnglishProductCategoryName

FROM FactInternetSales as FIS

JOIN DimCustomer as C
	ON FIS.CustomerKey = C.CustomerKey

JOIN DimGeography as G
	ON C.GeographyKey = G.GeographyKey

JOIN DimProduct as P
	ON FIS.ProductKey = P.ProductKey

JOIN DimProductSubcategory as SubC
	ON P.ProductSubcategoryKey = SubC.ProductSubcategoryKey

JOIN DimProductCategory as PC
	ON PC.ProductCategoryKey = SubC.ProductCategoryKey