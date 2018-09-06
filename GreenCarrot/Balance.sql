CREATE TABLE [dbo].[Balance]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    [UserId] INT NOT NULL,
    [TransactionId] INT NOT NULL,
    [Amount] DECIMAL(19, 4) NOT NULL,
    [Details] VARCHAR(500) NOT NULL,
    [Created] DATETIME NOT NULL,
    CONSTRAINT [FK_Balance_User] FOREIGN KEY ([UserId]) REFERENCES [User]([Id]),
    CONSTRAINT [FK_Balance_Transaction] FOREIGN KEY ([TransactionId]) REFERENCES [Transaction]([Id])
)
