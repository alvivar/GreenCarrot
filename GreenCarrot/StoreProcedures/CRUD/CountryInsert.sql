CREATE PROCEDURE [dbo].[CountryInsert]
	@Name VARCHAR(100)
	,@Created DATETIME
AS
SET NOCOUNT ON
SET XACT_ABORT ON

BEGIN TRAN

INSERT INTO [dbo].[Country]
	([Name], [Created])
SELECT
	@Name
	,@Created

SELECT
	[Id]
	,[Name]
	,[Created]
FROM
	[dbo].[Country]
WHERE  [Id] = SCOPE_IDENTITY()

COMMIT
RETURN SCOPE_IDENTITY()
GO