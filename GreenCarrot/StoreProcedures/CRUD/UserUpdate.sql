CREATE PROCEDURE [dbo].[UserUpdate]
	@UserName VARCHAR(100)
	,@Name VARCHAR(100)
	,@LastName VARCHAR(100)
	,@Email VARCHAR(100)
AS
SET NOCOUNT ON
SET XACT_ABORT ON

BEGIN TRAN

-- Update
UPDATE [dbo].[User]
SET [Name] = @Name, [LastName] = @LastName, [Email] = @Email
WHERE [UserName] = @UserName

-- Updated Id
DECLARE @UpdatedId INT
SELECT @UpdatedId = [Id]
FROM [dbo].[User]
WHERE [UserName] = @UserName

COMMIT

-- Return
IF @UpdatedId IS NULL
RETURN -1		-- It means error
ELSE
RETURN @UpdatedId

GO
