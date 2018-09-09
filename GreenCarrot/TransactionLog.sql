CREATE TABLE [dbo].[TransactionLog]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
	[TransactionId] INT NOT NULL,
	[LogId] INT NOT NULL,
	[PreviousAmount] DECIMAL(19, 4) NOT NULL,
	[CurrentAmount] DECIMAL(19, 4) NOT NULL,
	[Logged] DATETIME NOT NULL,
	CONSTRAINT [FK_TransactionLog_Transaction] FOREIGN KEY ([TransactionId]) REFERENCES [Transaction]([Id]),
	CONSTRAINT [FK_TransactionLog_Log] FOREIGN KEY ([LogId]) REFERENCES [Log]([Id])
)
