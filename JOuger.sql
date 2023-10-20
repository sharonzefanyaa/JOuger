-- 2501961022 / Sharon Zefanya Setiawan

-- 1.
USE JOuger;

-- 2.
SELECT msapparel.ApparelName, mstype.TypeName AS 'Apparel Type' FROM msapparel JOIN mstype
ON msapparel.TypeID = mstype.TypeID
WHERE mstype.TypeName LIKE 'V%';

-- 3.
SELECT msstaff.StaffID AS 'ID', UPPER(msstaff.StaffName) AS 'Name'
FROM msstaff WHERE YEAR(msstaff.StaffDOB) < 2002
UNION
SELECT mscustomer.CustomerID AS 'ID', UPPER(mscustomer.CustomerName) AS 'Name'
FROM mscustomer WHERE YEAR(mscustomer.CustomerDOB) < 1996;

-- 4. 
SELECT msapparel.ApparelName AS 'Name', transactionheader.TransactionDate, UPPER(mstype.TypeName) AS 'Type' FROM mstype JOIN msapparel 
ON mstype.TypeID = msapparel.TypeID JOIN transactiondetail
ON msapparel.ApparelID = transactiondetail.ApparelID JOIN transactionheader
ON transactiondetail.TransactionID = transactionheader.TransactionID
WHERE DATEDIFF('2022-11-02', transactionheader.TransactionDate) < 10
UNION
SELECT msapparel.ApparelName AS 'Name', transactionheader.TransactionDate, UPPER(mstype.TypeName) AS 'Type' FROM mstype JOIN msapparel 
ON mstype.TypeID = msapparel.TypeID JOIN transactiondetail
ON msapparel.ApparelID = transactiondetail.ApparelID JOIN transactionheader
ON transactiondetail.TransactionID = transactionheader.TransactionID
WHERE DATEDIFF('2022-11-02', transactionheader.TransactionDate) > 10
AND msapparel.ApparelName LIKE '%Top';

-- 5.
ALTER TABLE mscustomer ADD COLUMN `MembershipType` VARCHAR(7) NULL;

-- 6.
UPDATE mscustomer, transactionheader, transactiondetail, msapparel
SET CustomerName = 'Josua Quere' 
WHERE mscustomer.CustomerID = transactionheader.CustomerID
AND transactionheader.TransactionID = transactiondetail.TransactionID
AND transactiondetail.ApparelID = msapparel.ApparelID
AND msapparel.ApparelName LIKE '%Hiking' 
AND MONTH(transactionheader.TransactionDate) > 10;

-- 7.
SELECT msapparel.ApparelName, mstype.TypeName, UPPER(RIGHT(mstype.TypeName, 3)) AS 'Type Initial'
FROM mstype JOIN msapparel 
ON mstype.TypeID = msapparel.TypeID JOIN transactiondetail
ON msapparel.ApparelID = transactiondetail.ApparelID JOIN transactionheader 
ON transactiondetail.TransactionID = transactionheader.TransactionID
WHERE transactionheader.TransactionDate = '2022-10-30'
AND msapparel.ApparelPrice > 500000;

-- 8.
SELECT msapparel.ApparelName AS 'Name', transactiondetail.Quantity, msapparel.ApparelPrice, (msapparel.ApparelPrice * transactiondetail.Quantity) AS 'Total Price'
FROM msapparel JOIN transactiondetail
ON msapparel.ApparelID = transactiondetail.ApparelID
WHERE msapparel.ApparelName REGEXP '[a-z][0-9]'
ORDER BY (msapparel.ApparelPrice * transactiondetail.Quantity) ASC;

-- 9.
CREATE VIEW `Transaction_Revenue` AS
SELECT msapparel.ApparelName, transactiondetail.Quantity, CONCAT('IDR ', msapparel.ApparelPrice) AS 'Price', CONCAT('IDR ', (msapparel.ApparelPrice * transactiondetail.Quantity)) AS 'Total Price' FROM msapparel JOIN transactiondetail
ON msapparel.ApparelID = transactiondetail.ApparelID
WHERE LENGTH(msapparel.ApparelName) > 15;

-- 10.
CREATE VIEW `Staff_Address` AS
SELECT msstaff.StaffName, REPLACE(msstaff.StaffAddress, 'Street', 'St') AS 'Address', LOWER(msstaff.StaffID), msapparel.ApparelName, transactionheader.TransactionDate FROM msstaff JOIN transactionheader
ON msstaff.StaffID = transactionheader.StaffID JOIN transactiondetail
ON transactionheader.TransactionID = transactiondetail.TransactionID JOIN msapparel
ON transactiondetail.ApparelID = msapparel.ApparelID
WHERE msapparel.ApparelName LIKE '%a%';