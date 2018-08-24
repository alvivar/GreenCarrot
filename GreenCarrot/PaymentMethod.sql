CREATE TABLE [dbo].[PaymentMethod]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1), 
    [Code] VARCHAR(50) NOT NULL, 
    [Description] VARCHAR(500) NOT NULL
)
