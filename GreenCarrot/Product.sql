CREATE TABLE [dbo].[Product]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1), 
    [Name] VARCHAR(50) NOT NULL, 
    [Description] VARCHAR(50) NOT NULL, 
    [Quantity] INT NOT NULL, 
    [Available] BIT NOT NULL
)
