CREATE PROCEDURE [dbo].[UserPaymentMethodInsert]
	@UserId INT
	,@PaymentMethodId INT
	,@PaymentTokenId INT
	,@Description VARCHAR(500)
	,@Created DATETIME
AS
SET NOCOUNT ON
SET XACT_ABORT ON

BEGIN TRAN

INSERT INTO [dbo].[UserPaymentMethod]
	([UserId], [PaymentMethodId], [PaymentTokenId], [Description], [Created])
SELECT
	@UserId
	,@PaymentMethodId
	,@PaymentTokenId
	,@Description
	,@Created

-- Begin Return Select <- do not remove
SELECT
	[Id]
	,[UserId]
	,[PaymentMethodId]
	,[PaymentTokenId]
	,[Description]
	,[Created]
FROM
	[dbo].[UserPaymentMethod]
WHERE  [Id] = SCOPE_IDENTITY()
-- End Return Select <- do not remove

COMMIT
GO
