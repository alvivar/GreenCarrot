CREATE TABLE [dbo].[PaymentToken]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
	[PaymentMethodId] INT NOT NULL, 
    [Token] VARCHAR(250) NOT NULL, 
    [Valid] BIT NOT NULL,
    [Created] DATETIME NOT NULL, 
    [Expires] DATETIME NOT NULL
)
