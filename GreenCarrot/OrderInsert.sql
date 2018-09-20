CREATE PROCEDURE [dbo].[OrderInsert]
	@UserId INT
	,@OrderStatusId INT
	,@Description VARCHAR(500)
	,@Created DATETIME
AS
SET NOCOUNT ON
SET XACT_ABORT ON

BEGIN TRAN

INSERT INTO [dbo].[Order]
	([UserId], [OrderStatusId], [Description], [Created])
SELECT @UserId ,@OrderStatusId ,@Description ,@Created

SELECT [Id] ,[UserId] ,[OrderStatusId] ,[Description] ,[Created]
FROM [dbo].[Order]
WHERE  [Id] = SCOPE_IDENTITY()

COMMIT
RETURN SCOPE_IDENTITY()
GO
