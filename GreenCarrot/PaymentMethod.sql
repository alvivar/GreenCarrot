CREATE TABLE [dbo].[PaymentMethod]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    [Name] VARCHAR(50) NOT NULL,
    [Description] VARCHAR(500) NOT NULL,
    [ApiUrl] VARCHAR(250) NOT NULL    
)
