CREATE DATABASE Market

Use Market

Create Table Products(
Id int,
Name nvarchar(50),
Price int
);

Alter table Products
Add BrandName nvarchar(50);

Insert into Products
Values (1,'Iphone',1500,'Apple');

Insert into Products(Id,Name,BrandName,Price)
Values 
(2,'Galaxy A33','Samsung',700),
(3,'Redmi Note 11','Xiaomi',500),
(4,'Nova','Huawei',400),
(5,'Iphone 11','Apple',1200),
(6,'Playstation 5','Sony',1600),
(7,'Xbox','Microsoft',2000),
(8,'Rog','Asus',4000),
(9,'Ideapad','Lenovo',800),
(10,'Dualsense','Sony',150);

Select AVG(Price) from Products

Select * from Products
Where Price < (Select AVG(Price) from Products)

Select * from Products Where Price > 10

Select * from Products 
Where LEN(BrandName) > 5

Select * from Products
Where BrandName Like '%a%'