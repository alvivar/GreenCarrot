CREATE PROCEDURE [dbo].[BalanceInsert]
	@UserId INT
	,@TransactionId INT
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

INSERT INTO [dbo].[Balance]
	([UserId]
	,[TransactionId]
	,[InsertionUserId]
	,[Computer]
	,[Amount]
	,[Description]
	,[Created]
	,[CheckSum])
SELECT @UserId
	,@TransactionId
	,@InsertionUserId
	,@Computer
	,@Amount
	,@Description
	,@Created
	,@CheckSum

SELECT [Id]
	,[UserId]
	,[TransactionId]
	,[InsertionUserId]
	,[Computer]
	,[Amount]
	,[Description]
	,[Created]
	,[CheckSum]
FROM [dbo].[Balance]
WHERE  [Id] = SCOPE_IDENTITY()

COMMIT
RETURN SCOPE_IDENTITY()
GO
