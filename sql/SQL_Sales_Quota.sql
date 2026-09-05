SELECT
    FSQ.EmployeeKey,FSQ.Date,FSQ.SalesAmountQuota,
    E.FirstName,E.LastName,E.HireDate,E.BirthDate,E.Gender,E.EmailAddress

FROM FactSalesQuota AS FSQ

JOIN DimEmployee AS E
    ON FSQ.EmployeeKey = E.EmployeeKey;