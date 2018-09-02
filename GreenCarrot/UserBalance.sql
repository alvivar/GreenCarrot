CREATE TABLE [dbo].[UserBalance]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1), 
    [UserId] INT NOT NULL, 
    [BalanceAmount] INT NOT NULL, 
    [Details] VARCHAR(500) NOT NULL, 
    [Date] DATETIME NOT NULL, 
    CONSTRAINT [FK_UserBalance_User] FOREIGN KEY ([UserId]) REFERENCES [User]([Id])
)
