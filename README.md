# JOuger

JOuger is a clothing manufacturing company that fabricates clothes to sell nationally. The shop provides various types of clothes to sell such as jumpers, vests, and hoodies. The owner, Mr. Jepon wants a working database system for the company. As the database developer, you’re asked to create a complex database system for the company.

1.	Import and use the database using SQL Query. **(USE)**
2.	Display ApparelName and Apparel Type (obtained from TypeName) for every Apparel which have the TypeName starts with ‘v’. **(LIKE)**
3.	Display ID (obtained from StaffID) and Name (obtained from StaffName in uppercase) for every staff that was born before 2002. Then combine with ID (obtained from CustomerID) CustomerName (obtained from CustomerName in uppercase), for every customer that was born before 1996. **(YEAR, UPPER, UNION)**
4.	Display Name (obtained from ApparelName), TransactionDate, and Type (obtained from TypeName in uppercase) for every Apparel that was sold in the last 10 days. Then combine with Name (obtained from ApparelName), TransactionDate, and Type (obtained from TypeName in uppercase) for every Apparel that was sold more than 10 days ago that have its name ends with ‘top’. **(UPPER, LIKE, DATEDIFF, UNION)**
5.	Add a column in MsCustomer table named ‘MembershipType’ with varchar data type with the length of 7. **(ALTER TABLE, ADD)**
6.	Update the CustomerName column from MsCustomer table to ‘Josua Quere’ for Customer that bought Apparel with the name ends with ‘Hiking’ and was bought after the 10th month. **(UPDATE, LIKE, MONTH)**
7.	Display ApparelName, TypeName, and Type Initial (obtained from last three character of TypeName in uppercase) for every Apparel that was bought in ‘2022-10-30’ and the price is higher than 500000. **(UPPER, RIGHT)**
8.	Display Name (obtained from ApparelName), Quantity, ApparelPrice and Total Price (obtained from multiplying ApparelPrice and Quantity) for every Apparel that name contains an alphabet then followed by integer. Then sorting the apparel from Total Price by ascending. **(REGEXP, ORDER BY)**
9.	Create a view named ‘Transaction_Revenue’ that display ApparelName, Quantity, Price (obtained from adding ‘IDR’ in front of ApparelPrice), and Total Price (obtained from multiplying Quantity with ApparelPrice, then adding ‘IDR’ in front of it) for every apparel with the length of name greater than 15. **(CREATE VIEW, LENGTH, CONCAT)**
10.	Create a view named ‘Staff_Address’ that display StaffName, Address (obtained from replacing ‘Street’ with ‘St’ from StaffAddress), StaffID (obtained from StaffID in lowercase), ApparelName, TransactionDate for every Staff that sells Apparel with ApparelName that contains ‘A’. **(CREATE VIEW, LOWER, LIKE, REPLACE)**
