--1 --VIEW DATASET
SELECT *
FROM fashion_products

--2 --DISTINCT NUMBER OF BRAND
SELECT DISTINCT Brand
FROM fashion_products

--3 --DISTINCT NUMBER OF Category
SELECT DISTINCT Category
FROM fashion_products

--4 --DISTINCT NUMBER OF Product_Name
SELECT DISTINCT Product_Name
FROM fashion_products

--5 --No of products in each category
SELECT Category, COUNT(*) AS product_count
FROM fashion_products
GROUP BY category;

--6 --Average rating per brand
SELECT AVG(Rating) AS avg_rating, Brand
FROM fashion_products
GROUP BY Brand
ORDER BY avg_rating DESC ;

--7 --Most purchased product
SELECT product_name, COUNT(Product_ID) AS purchase_count
FROM fashion_products
GROUP BY product_name
ORDER BY purchase_count DESC;

--8 --Most purchased brand
SELECT Brand, COUNT(Product_ID) AS purchase_count
FROM fashion_products
GROUP BY Brand
ORDER BY purchase_count DESC;

--9 --Most purchased category
SELECT Category, COUNT(Product_ID) AS purchase_count
FROM fashion_products
GROUP BY Category
ORDER BY purchase_count DESC;

--10 --Average price per category
SELECT AVG(Price) AS avg_price ,Category
FROM fashion_products
GROUP BY Category
ORDER BY avg_price DESC ;

--11 --Most expensive Brand
SELECT MAX (Price),Brand
FROM fashion_products
GROUP BY Brand

--12 --Most expensive product in Gucci brand
SELECT product_name, Price
FROM fashion_products
WHERE Brand = 'Gucci' AND price > (
  SELECT AVG(price)
  FROM fashion_products
  WHERE Brand = 'Gucci'
)
ORDER BY price DESC;

--12 --Cheapest prices per category
SELECT category, MIN(price) AS min_price
FROM fashion_products
GROUP BY category;

--13 --Cheapest prices per Brand
SELECT Brand, MIN(price) AS min_price
FROM fashion_products
GROUP BY Brand;

--14 --Cheapest prices per Brand
SELECT size, COUNT(Product_ID) AS size_count
FROM fashion_products
GROUP BY size
ORDER BY size_count DESC;

