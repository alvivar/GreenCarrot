CREATE PROCEDURE [dbo].[AddressUpdate]
	@Id INT
	,@Line1 VARCHAR(500)
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

-- Update
UPDATE [dbo].[Address]
SET    [Line1] = @Line1, [Line2] = @Line2, [Line3] = @Line3, [CityId] = @CityId, [ProvinceId] = @ProvinceId, [CountryId] = @CountryId, [ZipCode] = @ZipCode, [Description] = @Description, [Geography] = @Geography, [Created] = @Created
WHERE  [Id] = @Id

-- Updated Id
DECLARE @UpdatedId INT
SELECT @UpdatedId = [Id]
FROM [dbo].[Address]
WHERE  [Id] = @Id

COMMIT

-- Return
IF @UpdatedId IS NULL
RETURN -1  -- It means error
ELSE
RETURN @UpdatedId

GO