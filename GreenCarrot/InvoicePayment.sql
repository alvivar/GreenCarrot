CREATE TABLE [dbo].[InvoicePayment]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
	[InvoiceId] INT NOT NULL,
	[PaymentId] INT NOT NULL,
	[Created] DATETIME NOT NULL,
	[Checksum] VARBINARY(100) NOT NULL,
	CONSTRAINT [FK_InvoicePayment_Invoice] FOREIGN KEY ([InvoiceId]) REFERENCES [Invoice]([Id]),
	CONSTRAINT [FK_InvoicePayment_Payment] FOREIGN KEY ([PaymentId]) REFERENCES [Payment]([Id])
)
