SELECT P.FullName, P.FaxNumber AS Fax, P.PhoneNumber AS Phone, S.FaxNumber AS CompanyFax, S.PhoneNumber AS CompanyPhone
FROM Application.People P
LEFT JOIN Purchasing.Suppliers S
ON P.PersonID = S.PrimaryContactPersonID