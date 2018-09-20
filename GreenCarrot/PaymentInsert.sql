CREATE PROCEDURE [dbo].[PaymentInsert]
	@OrderId INT
	,@UserPaymentMethodId INT
	,@InsertionUserId INT
	,@Computer VARCHAR(100)
	,@Amount DECIMAL(19, 4)
	,@Description VARCHAR(500)
	,@Created DATETIME
	,@CheckSum VARBINARY(100)
AS
SET NOCOUNT ON
SET XACT_ABORT ON

BEGIN TRAN

INSERT INTO [dbo].[Payment]
	([OrderId]
	,[UserPaymentMethodId]
	,[InsertionUserId]
	,[Computer]
	,[Amount]
	,[Description]
	,[Created]
	,[CheckSum])
SELECT @OrderId
	,@UserPaymentMethodId
	,@InsertionUserId
	,@Computer
	,@Amount
	,@Description
	,@Created
	,@CheckSum

SELECT [Id]
	,[OrderId]
	,[UserPaymentMethodId]
	,[InsertionUserId]
	,[Computer]
	,[Amount]
	,[Description]
	,[Created]
	,[CheckSum]
FROM [dbo].[Payment]
WHERE  [Id] = SCOPE_IDENTITY()

COMMIT
RETURN SCOPE_IDENTITY()
GO
