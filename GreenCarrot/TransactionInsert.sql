CREATE PROCEDURE [dbo].[TransactionInsert]
	@TransactionStatusId INT
	,@TransactionTypeId INT
	,@TransactionSubtypeId INT
	,@TransactionDetailId INT
	,@InsertionUserId INT
	,@Computer VARCHAR(100)
	,@Amount DECIMAL(19, 4)
	,@Description VARCHAR(500)
	,@Created DATETIME
	,@Checksum VARBINARY(100)
AS
SET NOCOUNT ON
SET XACT_ABORT ON

BEGIN TRAN

INSERT INTO [dbo].[Transaction]
	([TransactionStatusId], [TransactionTypeId], [TransactionSubtypeId], [TransactionDetailId], [InsertionUserId], [Computer], [Amount], [Description], [Created], [Checksum])
SELECT @TransactionStatusId
	,@TransactionTypeId
	,@TransactionSubtypeId
	,@TransactionDetailId
	,@InsertionUserId
	,@Computer
	,@Amount
	,@Description
	,@Created
	,@Checksum

SELECT [Id]
	,[TransactionStatusId]
	,[TransactionTypeId]
	,[TransactionSubtypeId]
	,[TransactionDetailId]
	,[InsertionUserId]
	,[Computer]
	,[Amount]
	,[Description]
	,[Created]
	,[Checksum]
FROM [dbo].[Transaction]
WHERE  [Id] = SCOPE_IDENTITY()

COMMIT
RETURN  SCOPE_IDENTITY()
GO
