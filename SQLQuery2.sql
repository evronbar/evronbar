CREATE PROC AddGame
@Player1 varchar(50),
@Player2 varchar(50)
AS
    INSERT INTO gamesTable(Player1, Player2)
    VALUES (@Player1, @Player2);