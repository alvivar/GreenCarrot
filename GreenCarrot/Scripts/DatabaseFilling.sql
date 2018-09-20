
-- Script that fills the database

-- Misc
DECLARE @now DATETIME = CURRENT_TIMESTAMP
DECLARE @geo GEOGRAPHY = GEOGRAPHY::Point('9.945736', '-84.055214', '4326')


-- Address required
-- #1
DECLARE @countryId INT
EXECUTE @countryId = [dbo].[CountryInsert] 'Costa Rica', @now

DECLARE @cityId INT
EXECUTE @cityId = [dbo].[CityInsert] 'ITCR', @now
DECLARE @provinceId INT
EXECUTE @provinceId = [dbo].[ProvinceInsert] 'Cartago', @now

-- #2
DECLARE @cityId2 INT
EXECUTE @cityId2 = [dbo].[CityInsert] 'Guadalupe', @now
DECLARE @provinceId2 INT
EXECUTE @provinceId2 = [dbo].[ProvinceInsert] 'San José', @now


-- Users
-- #1
DECLARE @userId INT
EXECUTE @userId = [dbo].[UserInsert] 'User1', 'Name1', 'LastName1', 'Email1', @now

DECLARE @addressId INT
EXECUTE @addressId = [dbo].[AddressInsert] 'Line1', 'Line2', 'Line3', @cityId, @provinceId, @countryId, '10103', 'Description1', @geo, @now
EXECUTE [dbo].[UserAddressInsert] @userId, @addressId, @now


-- #2
DECLARE @userId2 INT
EXECUTE @userId2 = [dbo].[UserInsert] 'User2', 'Name2', 'LastName2', 'Email2', @now

DECLARE @addressId2 INT
EXECUTE @addressId2 = [dbo].[AddressInsert] 'Line1', 'Line2', 'Line3', @cityId2, @provinceId2, @countryId, '10103', 'Description1', @geo, @now
EXECUTE [dbo].[UserAddressInsert] @userId2, @addressId2, @now


-- #3
DECLARE @userId3 INT
EXECUTE @userId3 = [dbo].[UserInsert] 'User3', 'Name3', 'LastName3', 'Email3', @now

DECLARE @addressId3 INT
EXECUTE @addressId3 = [dbo].[AddressInsert] 'Line1', 'Line2', 'Line3', @cityId, @provinceId, @countryId, '10103', 'Description1', @geo, @now
EXECUTE [dbo].[UserAddressInsert] @userId3, @addressId3, @now
