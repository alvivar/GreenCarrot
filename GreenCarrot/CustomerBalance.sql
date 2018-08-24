CREATE TABLE [dbo].[CustomerBalance]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1), 
    [FK_CustomerBalance_Customer_Id] INT NOT NULL, 
    [BalanceAmount] INT NOT NULL, 
    [Details] VARCHAR(500) NOT NULL, 
    [Date] DATETIME NOT NULL, 
    CONSTRAINT [FK_CustomerBalance_Customer] FOREIGN KEY ([FK_CustomerBalance_Customer_Id]) REFERENCES [Customer]([Id])
)
