CREATE PROCEDURE [dbo].[AddressInsert]
	@Line1 VARCHAR(500)
	,@Line2 VARCHAR(500)
	,@Line3 VARCHAR(500)
	,@CityId INT
	,@ProvinceId INT
	,@CountryId INT
	,@ZipCode VARCHAR(10)
	,@Description VARCHAR(1000)
	,@Geography GEOGRAPHY
	,@Created DATETIME
AS
SET NOCOUNT ON
SET XACT_ABORT ON

BEGIN TRAN

INSERT INTO [dbo].[Address]
	([Line1], [Line2], [Line3], [CityId], [ProvinceId], [CountryId], [ZipCode], [Description], [Geography], [Created])
SELECT
	@Line1
	,@Line2
	,@Line3
	,@CityId
	,@ProvinceId
	,@CountryId
	,@ZipCode
	,@Description
	,@Geography
	,@Created

SELECT
	[Id]
	,[Line1]
	,[Line2]
	,[Line3]
	,[CityId]
	,[ProvinceId]
	,[CountryId]
	,[ZipCode]
	,[Description]
	,[Geography]
	,[Created]
FROM
	[dbo].[Address]
WHERE  [Id] = SCOPE_IDENTITY()

COMMIT
RETURN SCOPE_IDENTITY()
GO
