CREATE PROCEDURE [dbo].[GreenCarrotAddEditUser]
	@UserName VARCHAR(100)
	,@Name VARCHAR(100)
	,@LastName VARCHAR(100)
	,@Email VARCHAR(100)
	,@Line1 VARCHAR(500)
	,@Line2 VARCHAR(500)
	,@Line3 VARCHAR(500)
	,@CityId INT
	,@ProvinceId INT
	,@CountryId INT
	,@ZipCode VARCHAR(10)
	,@AddressDescription VARCHAR(1000)
	,@Geography GEOGRAPHY
	,@Created DATETIME

AS
SET NOCOUNT ON
SET XACT_ABORT ON

BEGIN TRAN

DECLARE @now DATETIME = CURRENT_TIMESTAMP

DECLARE @UserId INT
EXEC @UserId = [dbo].UserUpdate @UserName, @Name, @LastName, @Email
IF @UserId = -1
BEGIN
	EXECUTE @UserId = [dbo].[UserInsert] @UserName, @Name, @LastName, @Email, @now

	DECLARE @addressId INT
	EXECUTE @addressId = [dbo].[AddressInsert] @Line1, @Line2, @Line3, @CityId, @ProvinceId, @CountryId, @ZipCode, @AddressDescription, @Geography, @now
	EXECUTE [dbo].[UserAddressInsert] @userId, @addressId, @now
END
ELSE
BEGIN
	DECLARE @currentAddressId INT
	SELECT @currentAddressId = [AddressId]
	FROM [dbo].[UserAddress]
	WHERE  [UserId] = @UserId

	EXECUTE [dbo].[AddressUpdate] @currentAddressId, @Line1, @Line2, @Line3, @CityId, @ProvinceId, @CountryId, @ZipCode, @AddressDescription, @Geography, @now
END

SELECT
	[Id]
	,[UserName]
	,[Name]
	,[LastName]
	,[Email]
	,[Created]
FROM
	[dbo].[User]
WHERE  [Id] = @UserId

COMMIT
RETURN @UserId
GO
