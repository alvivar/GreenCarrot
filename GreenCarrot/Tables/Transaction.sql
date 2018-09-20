CREATE TABLE [dbo].[Transaction]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    [TransactionStatusId] INT NULL,
    [TransactionTypeId] INT NULL,
    [TransactionSubtypeId] INT NULL,
    [TransactionDetailId] INT NULL,
    [InsertionUserId] INT NULL,
    [Computer] VARCHAR(100) NOT NULL,
    [Amount] DECIMAL(19, 4) NOT NULL,
    [Description] VARCHAR(500) NOT NULL,
    [Created] DATETIME NOT NULL,
    [Checksum] VARBINARY(100) NULL,
    CONSTRAINT [FK_Transaction_Status] FOREIGN KEY ([TransactionStatusId]) REFERENCES [TransactionStatus]([Id]),
    CONSTRAINT [FK_Transaction_TransactionType] FOREIGN KEY ([TransactionTypeId]) REFERENCES [TransactionType]([Id]),
    CONSTRAINT [FK_Transaction_TransactionSubtype] FOREIGN KEY ([TransactionSubtypeId]) REFERENCES [TransactionSubtype]([Id]),
    CONSTRAINT [FK_Transaction_TransactionDetail] FOREIGN KEY ([TransactionDetailId]) REFERENCES [TransactionDetail]([Id]),
    CONSTRAINT [FK_Transaction_InsertionUser] FOREIGN KEY ([InsertionUserId]) REFERENCES [User]([Id])
)
