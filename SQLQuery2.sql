
Create Database TestDB2
Go

use TestDB2
Go

Create Table tblGender(

Id int primary key,
GenderName varchar(30)

)
Go
insert into tblGender values(1, 'Male')
insert into tblGender values(2, 'Female')
insert into tblGender values(3, 'Male')
insert into tblGender values(4, 'unkwon')

Create Table tblPerson(
Id int primary key,
Name varchar(100),
Email varchar(100),
Gender int 
)
Go

insert into tblPerson (Id, Name, Email) values(1, 'Salman','Salman@gmail')
insert into tblPerson values(2, 'Salma','salma@gmail.com', 2, 'new address')
insert into tblPerson values(3, 'Akhi','akhi@gmail.com',2,'No')




Alter Table tblPerson
Add myAddress varchar(500) NOT NULL
constraint tblPerson_myAddress_Default Default 'No Address'
Go

Alter Table tblPerson
Add constraint tblPerson_Gender_Default Default 1 For Gender
Go

Alter Table tblPerson
Add Constraint tblPerson_Gender_FK Foreign Key(Gender) References tblGender(Id) 
Go


select * from tblPerson
select * from tblGender