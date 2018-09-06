CREATE TABLE [dbo].[Address]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    [Line1] VARCHAR(250) NOT NULL,
    [Line2] VARCHAR(250) NOT NULL,
    [Line3] VARCHAR(250) NOT NULL,
    [CityId] INT NOT NULL,
    [ProvinceId] INT NOT NULL,
    [CountryId] INT NOT NULL,
    [ZipCode] VARCHAR(10) NOT NULL,
    [Details] VARCHAR(1000) NOT NULL,
    [Geography] [sys].[geography] NOT NULL,
    CONSTRAINT [FK_Address_City] FOREIGN KEY ([CityId]) REFERENCES [City]([Id]),
    CONSTRAINT [FK_Address_Province] FOREIGN KEY ([ProvinceId]) REFERENCES [Province]([Id]),
    CONSTRAINT [FK_Address_Country] FOREIGN KEY ([CountryId]) REFERENCES [Country]([Id])
)
