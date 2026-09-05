SELECT
    FRS.SalesOrderNumber,FRS.OrderDate,FRS.ProductKey,FRS.ResellerKey,FRS.EmployeeKey,FRS.OrderQuantity,FRS.UnitPrice,FRS.SalesAmount,
    DR.ResellerName,DR.NumberEmployees,DR.AnnualRevenue,DR.YearOpened,
	G.City,G.StateProvinceName,G.EnglishCountryRegionName,
    P.EnglishProductName,
    SubC.EnglishProductSubcategoryName,
    PC.EnglishProductCategoryName

FROM FactResellerSales as FRS

JOIN DimReseller AS DR
	ON FRS.ResellerKey = DR.ResellerKey

JOIN DimGeography as G
	ON DR.GeographyKey = G.GeographyKey

JOIN DimProduct as P
	ON FRS.ProductKey = P.ProductKey

JOIN DimProductSubcategory as SubC
	ON P.ProductSubcategoryKey = SubC.ProductSubcategoryKey

JOIN DimProductCategory as PC
	ON PC.ProductCategoryKey = SubC.ProductCategoryKey