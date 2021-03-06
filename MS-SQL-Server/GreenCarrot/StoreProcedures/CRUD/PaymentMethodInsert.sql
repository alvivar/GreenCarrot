﻿CREATE PROCEDURE [dbo].[PaymentMethodInsert]
	@Name VARCHAR(100)
	,@Description VARCHAR(500)
	,@ApiUrl VARCHAR(250)
	,@Created DATETIME
AS
SET NOCOUNT ON
SET XACT_ABORT ON

BEGIN TRAN

INSERT INTO [dbo].[PaymentMethod]
	([Name], [Description], [ApiUrl], [Created])
SELECT
	@Name
	,@Description
	,@ApiUrl
	,@Created

SELECT
	[Id]
	,[Name]
	,[Description]
	,[ApiUrl]
	,[Created]
FROM
	[dbo].[PaymentMethod]
WHERE  [Id] = SCOPE_IDENTITY()

COMMIT
RETURN SCOPE_IDENTITY()
GO
