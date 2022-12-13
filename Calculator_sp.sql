USE [Asignment]
GO
ALTER proc [dbo].[calculator2](@num1 integer,@num2 integer,@operation varchar(10))
as
begin
begin try

			select @num1 as input1,@num2 as input2,@operation as operation,
			case
			when @operation = 'add' then @num1+@num2
			when @operation = 'sub' then @num1-@num2
			when @operation = 'mul' then @num1*@num2
			when @operation = 'div' then @num1/@num2
			when @operation = 'mod' then @num1%@num2
			else 'Wrong operation'
			end as Output
		end try
		begin catch 
			print error_message();
			print error_number();
			print error_line();
			
		end catch
	 end


 
-- As if we get error in the typecasting then below try catch will handle	 
	 
begin try
exec calculator2 10,'e','div'
end try
begin catch
			print error_message();
			print error_number();
			print error_line();
end catch
	
