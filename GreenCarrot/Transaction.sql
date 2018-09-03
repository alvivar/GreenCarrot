CREATE TABLE [dbo].[Transaction]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
	[TransactionDetailId] INT NOT NULL,
	CONSTRAINT [FK_Transaction_TransactionDetail] FOREIGN KEY ([TransactionDetailId]) REFERENCES [TransactionDetail]([Id])
)
