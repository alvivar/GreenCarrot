


DECLARE @userId INT
DECLARE @created DATETIME = CURRENT_TIMESTAMP
EXECUTE @userId = [dbo].UserInsert 'username', 'name', 'lastname', 'email', @created
PRINT @userId
