CREATE PROCEDURE [dbo].[PaymentTokenInsert]
	@PaymentMethodId INT
	,@Token VARCHAR(250)
	,@Valid BIT
	,@Expires DATETIME
	,@Created DATETIME
AS
SET NOCOUNT ON
SET XACT_ABORT ON

BEGIN TRAN

INSERT INTO [dbo].[PaymentToken]
	([PaymentMethodId]
	,[Token]
	,[Valid]
	,[Expires]
	,[Created])
SELECT @PaymentMethodId
	,@Token
	,@Valid
	,@Expires
	,@Created

SELECT [Id]
	,[PaymentMethodId]
	,[Token]
	,[Valid]
	,[Expires]
	,[Created]
FROM [dbo].[PaymentToken]
WHERE  [Id] = SCOPE_IDENTITY()

COMMIT
RETURN SCOPE_IDENTITY()
GO
