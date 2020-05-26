CREATE PROC UserAdd
@Name varchar(50),
@Password varchar(50),
@Icon varchar(50)
AS
    INSERT INTO table1(Name, Password, TotalGames, Icon)
    VALUES (@Name, @Password, 0, @Icon);