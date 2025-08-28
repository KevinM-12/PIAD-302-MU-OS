/*
1. Mostrar el total de los "Orders" y agruparlos por Company Name.
2. Mostrar la cantidad de "Orders" agrupados por el nombre del empleado.
*/

-- 1.
SELECT  CompanyName, SUM(UnitPrice * Quantity) AS TOTAL FROM Orders o
INNER JOIN [Order Details] d ON o.OrderID = d.OrderID
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY CompanyName
ORDER BY CompanyName ASC

--2.
SELECT FirstName, COUNT(OrderID) AS TOTAL FROM Orders o
INNER JOIN Employees e ON o.EmployeeID = e.EmployeeID
GROUP BY FirstName
ORDER BY FirstName ASC