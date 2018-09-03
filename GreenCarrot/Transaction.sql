CREATE TABLE [dbo].[Transaction]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    [TransactionStatusId] INT NOT NULL, 
	[TransactionTypeId] INT NOT NULL, 
	[TransactionDetailId] INT NOT NULL,
    [Amount] DECIMAL(8, 4) NOT NULL, 
    [Created] DATETIME NOT NULL, 
    CONSTRAINT [FK_Transaction_Status] FOREIGN KEY ([TransactionStatusId]) REFERENCES [TransactionStatus]([Id]),
    CONSTRAINT [FK_Transaction_TransactionType] FOREIGN KEY ([TransactionTypeId]) REFERENCES [TransactionType]([Id]),
    CONSTRAINT [FK_Transaction_TransactionDetail] FOREIGN KEY ([TransactionDetailId]) REFERENCES [TransactionDetail]([Id])
)
