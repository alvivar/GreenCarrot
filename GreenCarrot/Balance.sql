CREATE TABLE [dbo].[Balance]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    [UserId] INT NOT NULL,
    [TransactionId] INT NOT NULL,
    [InsertionUserId] INT NOT NULL,
    [Computer] VARCHAR(100) NOT NULL,
    [Amount] DECIMAL(19, 4) NOT NULL,
    [Description] VARCHAR(500) NOT NULL,
    [Created] DATETIME NOT NULL,
    [CheckSum] VARBINARY(100) NOT NULL,
    CONSTRAINT [FK_Balance_User] FOREIGN KEY ([UserId]) REFERENCES [User]([Id]),
    CONSTRAINT [FK_Balance_Transaction] FOREIGN KEY ([TransactionId]) REFERENCES [Transaction]([Id]),
    CONSTRAINT [FK_Balance_InsertionUser] FOREIGN KEY ([InsertionUserId]) REFERENCES [User]([Id])
)
