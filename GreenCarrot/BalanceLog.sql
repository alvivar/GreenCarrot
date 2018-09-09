CREATE TABLE [dbo].[BalanceLog]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
	[BalanceId] INT NOT NULL,
	[LogId] INT NOT NULL,
	[PreviousAmount] DECIMAL(19, 4) NOT NULL,
	[CurrentAmount] DECIMAL(19, 4) NOT NULL,
	[Logged] DATETIME NOT NULL,
	CONSTRAINT [FK_BalanceLog_Balance] FOREIGN KEY ([BalanceId]) REFERENCES [Balance]([Id]),
	CONSTRAINT [FK_BalanceLog_Log] FOREIGN KEY ([LogId]) REFERENCES [Log]([Id])
)
