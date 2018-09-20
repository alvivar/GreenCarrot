DECLARE @now DATETIME = CURRENT_TIMESTAMP
DECLARE @geo GEOGRAPHY = GEOGRAPHY::Point('9.945736', '-84.055214', '4326')

DECLARE @countryId INT
EXECUTE @countryId = [dbo].[CountryInsert] 'Costa Rica', @now

DECLARE @cityId INT
EXECUTE @cityId = [dbo].[CityInsert] 'ITCR', @now
DECLARE @provinceId INT
EXECUTE @provinceId = [dbo].[ProvinceInsert] 'Cartago', @now

EXEC [dbo].[GreenCarrotAddEditUser]  'adros', 'Andrés', 'Villalobos', 'andresalvivar@gmail.com', 'Line1', 'Line2', 'Line3', @cityId, @provinceId, @countryId, '10103', 'Description1', @geo, @now
