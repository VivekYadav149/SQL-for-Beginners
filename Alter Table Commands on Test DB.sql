-- Creating our Test Databse --

Create Database Test;
Use Test;

Create Table Addresses(
	ID int,
    HNo int,
    City varchar(10),
    PostCode varchar(10)
);

Create Table People(
	ID int,
    FirstName varchar(20),
    LastName varchar(20),
    Address_ID int
);

Create Table Pets(
	ID int,
    Name varchar(20),
    Species varchar(20),
    Owner_ID int
);

Show Tables;


-- Add and Remove Primary Key --

Describe Addresses;
Describe People;

Alter Table Addresses Add Primary Key(ID);
Alter Table Addresses Drop Primary Key;
Alter Table People Add Primary Key(ID);


-- Add and Remove Foreign Key -- 

Alter Table People 
Add Constraint FK_PeopleAddress
Foreign Key(Address_ID) References Addresses(ID);

Alter Table People 
Drop Foreign Key FK_PeopleAddress;


-- Add and Drop Unique Constraint To a Table --

Select * from Pets;

Alter Table Pets
Add Constraint U_Species Unique(Species);

Alter Table Pets 
Drop Index U_Species;


-- Rename a Column -- 
-- Syntax: Alter Table Table_Name Change Old_Column_Name New_Column_Name <data type>; --

Alter Table Pets Change Species AnimalType varchar(20);
Alter Table Pets Change AnimalType Species varchar(20);


-- Change A Column data type --
Describe Addresses;
Alter Table Addresses Modify City varchar(10);
