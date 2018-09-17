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

-- Begin Return Select <- do not remove
SELECT
	[Id]
	,[UserId]
	,[AddressId]
	,[Created]
FROM
	[dbo].[UserAddress]
WHERE  [Id] = SCOPE_IDENTITY()
-- End Return Select <- do not remove

COMMIT
GO
