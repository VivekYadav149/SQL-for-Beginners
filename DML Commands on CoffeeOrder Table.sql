-- Inserting Data into Tables--
Use CoffeeStore;
select * from Products;

Insert into Products(Name, Price, CoffeeOrigin)
values('Espresso', 2.5, 'Brazil'); 

Insert into Products(Name, Price, CoffeeOrigin)
values('Macchiato', 2.00, 'Tokyo'), ('Cappuccino', 3.5, 'Aasam'); 

Insert into Products(Name, Price, CoffeeOrigin)
values ('Latte', 3.50, 'Indonesia'), ('Americano', 3.25, 'Brazil'), 
('Flat White', 3.40, 'Indonesia'), ( 'Filter', 3.00, 'India'); 


-- Update Data into the Table --
Update Products
Set CoffeeOrigin = 'Sri Lanka' Where ID=7;

Set SQL_SAFE_Updates=0;

Update Products 
Set Price=3.45, CoffeeOrigin = 'Ethiopia'
Where Name = 'Americano';

Update Products 
Set CoffeeOrigin = 'Colombia' 
Where CoffeeOrigin = 'Brazil';


-- Delete Data from Table --

Delete from People Where Name = 'John';
Delete from People Where Gender = 'F';

Delete from People;