CREATE PROCEDURE [dbo].[GreenCarrotAddEditClient]
	@UserName VARCHAR(100)
	,@Name VARCHAR(100)
	,@LastName VARCHAR(100)
	,@Email VARCHAR(100)
AS

BEGIN TRAN

DECLARE @UserId INT
EXEC @UserId = [dbo].UserUpdate @UserName, @Name, @LastName, @Email
IF @UserId = -1
BEGIN
	DECLARE @now DATETIME = CURRENT_TIMESTAMP
	EXECUTE @UserId = [dbo].[UserInsert] @UserName, @Name, @LastName, @Email, @now
END

COMMIT
RETURN @UserId
GO
