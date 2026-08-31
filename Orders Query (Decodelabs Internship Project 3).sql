USE Decodelabs
SELECT * FROM Orders


-- All cancelled orders --
SELECT * FROM Orders
WHERE OrderStatus = 'Cancelled';

-- High-value orders
SELECT OrderID, CustomerID, TotalPrice
FROM Orders
WHERE TotalPrice > 3330.41;

-- Orders with no coupon used --
SELECT * FROM Orders
WHERE CouponCode = 'NoCoupon';


-- Top 10 highest-value orders --
SELECT TOP 10 OrderID, CustomerID, TotalPrice
FROM Orders
ORDER BY TotalPrice DESC;

-- Orders sorted by date --
SELECT OrderID, Date, TotalPrice
FROM Orders
ORDER BY Date ASC;


-- Total revenue and order count per product --
SELECT Product,
       COUNT(*) AS OrderCount,
       SUM(TotalPrice) AS TotalRevenue,
       AVG(TotalPrice) AS AvgOrderValue
FROM Orders
GROUP BY Product
ORDER BY TotalRevenue DESC;

-- Sales by payment method --
SELECT PaymentMethod,
       COUNT(*) AS NumOrders,
       SUM(TotalPrice) AS TotalSales
FROM Orders
GROUP BY PaymentMethod
ORDER BY TotalSales DESC;

-- Revenue by coupon code --
SELECT CouponCode,
       COUNT(*) AS TimesUsed,
       SUM(TotalPrice) AS TotalRevenue
FROM Orders
GROUP BY CouponCode
ORDER BY TotalRevenue DESC;

-- Order status breakdown --
SELECT OrderStatus,
       COUNT(*) AS NumOrders,
       SUM(TotalPrice) AS TotalValue,
       ROUND(SUM(TotalPrice) * 100.0 / (SELECT SUM(TotalPrice) FROM Orders), 2) AS PctOfTotal
FROM Orders
GROUP BY OrderStatus
ORDER BY TotalValue DESC;

-- Top customers by spend --
SELECT TOP 5 CustomerID,
       COUNT(*) AS OrderCount,
       SUM(TotalPrice) AS TotalSpent
FROM Orders
GROUP BY CustomerID
ORDER BY TotalSpent DESC;


-- Sales by referral source --
SELECT ReferralSource,
       COUNT(*) AS NumOrders,
       SUM(TotalPrice) AS TotalRevenue,
       AVG(TotalPrice) AS AvgOrderValue
FROM Orders
GROUP BY ReferralSource
ORDER BY TotalRevenue DESC;


-- Revenue by product, excluding cancelled/returned --
SELECT Product,
       SUM(TotalPrice) AS NetRevenue
FROM Orders
WHERE OrderStatus NOT IN ('Cancelled', 'Returned')
GROUP BY Product
ORDER BY NetRevenue DESC;

-- Monthly sales trend --
SELECT
    FORMAT(Date, 'yyyy-MM') AS Month,
    SUM(TotalPrice) AS MonthlySales,
    COUNT(*) AS OrderCount
FROM Orders
GROUP BY FORMAT(Date, 'yyyy-MM')
ORDER BY Month;


--- Products with average order value above ₦500 ---
SELECT Product, AVG(TotalPrice) AS AvgValue
FROM Orders
GROUP BY Product
HAVING AVG(TotalPrice) > 500
ORDER BY AvgValue DESC;