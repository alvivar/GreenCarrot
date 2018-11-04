CREATE TABLE [dbo].[TransactionDetail]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
	[DebitedUserId] INT NOT NULL,
	[CreditedUserId] INT NOT NULL,
	[Created] DATETIME NOT NULL,
	[Checksum] VARBINARY(100) NOT NULL,
	CONSTRAINT [FK_TransactionDetail_DebitedUserId] FOREIGN KEY ([DebitedUserId]) REFERENCES [User]([Id]),
	CONSTRAINT [FK_TransactionDetail_CreditedUserId] FOREIGN KEY ([CreditedUserId]) REFERENCES [User]([Id])
)
