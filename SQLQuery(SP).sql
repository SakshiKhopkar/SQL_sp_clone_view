create procedure myProc
@num1 int,
@num2 int,
@result int output,
begin
set @result = @num1+@num2
end
go
declare @ans int
exec myproc @num1=4,@num2=6,@result=@ans output
select @ans as 'addition'