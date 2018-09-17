CREATE PROCEDURE [dbo].[UserInsert]
	@UserName VARCHAR(100)
	,@Name VARCHAR(100)
	,@LastName VARCHAR(100)
	,@Email VARCHAR(100)
	,@Created DATETIME
AS
SET NOCOUNT ON
SET XACT_ABORT ON

BEGIN TRAN

INSERT INTO [dbo].[User]
	([UserName], [Name], [LastName], [Email], [Created])
SELECT
	@UserName
	,@Name
	,@LastName
	,@Email
	,@Created

-- Begin Return Select <- do not remove
SELECT
	[Id]
	,[UserName]
	,[Name]
	,[LastName]
	,[Email]
	,[Created]
FROM
	[dbo].[User]
WHERE  [Id] = SCOPE_IDENTITY()
-- End Return Select <- do not remove

COMMIT
RETURN SCOPE_IDENTITY()
GO
