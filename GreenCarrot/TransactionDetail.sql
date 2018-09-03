CREATE TABLE [dbo].[TransactionDetail]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
	[DebitedUserId] INT NOT NULL,
	[CreditedUserId] INT NOT NULL,
	CONSTRAINT [FK_TransactionDetail_User1] FOREIGN KEY ([DebitedUserId]) REFERENCES [User]([Id]),
	CONSTRAINT [FK_TransactionDetail_User2] FOREIGN KEY ([CreditedUserId]) REFERENCES [User]([Id])
)
