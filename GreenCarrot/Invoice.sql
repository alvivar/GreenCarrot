CREATE TABLE [dbo].[Invoice]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    [PaymentId] INT NOT NULL,
    [InvoiceStatusId] INT NOT NULL,
    [Description] VARCHAR(500) NOT NULL,
    [Created] DATETIME NOT NULL,
    CONSTRAINT [FK_Invoice_Payment] FOREIGN KEY ([PaymentId]) REFERENCES [Payment]([Id]),
    CONSTRAINT [FK_Invoice_InvoiceStatus] FOREIGN KEY ([InvoiceStatusId]) REFERENCES [InvoiceStatus]([Id])
)
