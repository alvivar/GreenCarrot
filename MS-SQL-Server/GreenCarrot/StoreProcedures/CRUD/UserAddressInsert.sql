CREATE PROCEDURE [dbo].[UserAddressInsert]
	@UserId INT
	,@AddressId INT
	,@Created DATETIME
AS
SET NOCOUNT ON
SET XACT_ABORT ON

BEGIN TRAN

INSERT INTO [dbo].[UserAddress]
	([UserId], [AddressId], [Created])
SELECT
	@UserId
	,@AddressId
	,@Created

SELECT
	[Id]
	,[UserId]
	,[AddressId]
	,[Created]
FROM
	[dbo].[UserAddress]
WHERE  [Id] = SCOPE_IDENTITY()

COMMIT
RETURN SCOPE_IDENTITY()
GO
