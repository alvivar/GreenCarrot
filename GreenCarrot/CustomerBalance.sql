CREATE TABLE [dbo].[CustomerBalance]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1), 
    [CustomerId] INT NOT NULL, 
    [BalanceAmount] INT NOT NULL, 
    [Details] VARCHAR(500) NOT NULL, 
    [Date] DATETIME NOT NULL, 
    CONSTRAINT [FK_CustomerBalance_Customer] FOREIGN KEY ([CustomerId]) REFERENCES [Customer]([Id])
)
