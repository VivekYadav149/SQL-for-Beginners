Show databases;
Create Database CoffeeStore;

Use CoffeeStore;

Create Table Products(
	ID int Auto_Increment PRIMARY KEY,
    Name Varchar(20),
    Price Decimal(3,2)
);

Show Tables;

Create Table Customers(
	ID int Auto_Increment PRIMARY KEY,	
    First_Name varchar(20),
    Last_Name varchar(20),
    Gender Enum('M','F','O'),
    Phone_Number varchar(11)
);

Create Table Orders(
	ID int Auto_Increment Primary Key,
    Product_ID int,
    Customer_ID int,
    Order_Time DateTime,
    Foreign Key(Product_ID) References Products(ID),
    Foreign Key(Customer_ID) References Customers(ID)
);





Select * From Products;

Alter Table Products Add Column CoffeeOrigin varchar(20);

Alter Table Products Drop Column CoffeeOrigin;

-- Delete table -- 
Drop Table Products;

-- To delete all the data from table -- 
Truncate Table Products;

