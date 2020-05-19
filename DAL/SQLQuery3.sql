ALTER PROC UserAdd
@Name varchar(50),
@Password varchar(50)
AS
	INSERT INTO table1(Name, Password)
	VALUES (@Name, @Password);