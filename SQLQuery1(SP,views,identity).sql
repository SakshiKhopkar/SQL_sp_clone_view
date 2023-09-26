create view  Emp_From_Dev as
select ename,gender,Elocation,salary from Employ where did=(select did from deptment where 
dname='HR')
--fetch the view / display the view
select * from Emp_From_Dev
-- drop the view
drop view Emp_From_Dev
-- modify the view
alter view Emp_From_Dev as
select ename,gender,elocation,salary,did from Employ where did=(select did from deptment where 
dname='hr')

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----create procedure
create proc sp_emp_select
as begin
select * from employ
return
end
-- call the SP

exec SP_Emp_select
-- with parameters

create proc SP_Emp_City(@city varchar(10))
as begin
select * from Employ where Elocation =@city
return 
end

exec SP_Emp_City
@city='Pune'

-- DML
create proc SP_Insert_Emp
(
@id int,
@name varchar(20),
@sal numeric(12,2),
@deptNmae varchar(25),
@gender varchar(25),
@city varchar(10),
@designation varchar(30),
@age int,
@did int
)
as begin
insert into Employee values(@id,@name,@sal,@deptName,@gender,@city,@designation,@age,@did)
return
end



select * from employ
select * from deptment
------------------------------------------------------------------------------------------
create table Products(
Pid int primary key identity (1,1),
Pname varchar(20),
price int,
)
drop table products
