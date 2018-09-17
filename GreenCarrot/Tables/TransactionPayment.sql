CREATE TABLE [dbo].[TransactionPayment]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    [TransactionId] INT NOT NULL,
    [PaymentId] INT NOT NULL,
    [Created] DATETIME NOT NULL,
    [Checksum] VARBINARY(100) NOT NULL,
    CONSTRAINT [FK_TransactionPayment_Transaction] FOREIGN KEY ([TransactionId]) REFERENCES [Transaction]([Id]),
    CONSTRAINT [FK_TransactionPayment_Payment] FOREIGN KEY ([PaymentId]) REFERENCES [Payment]([Id])
)
