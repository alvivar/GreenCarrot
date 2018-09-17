CREATE TABLE [dbo].[Invoice]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    [PaymentId] INT NOT NULL,
    [InvoiceDocumentId] VARCHAR(100) NOT NULL,
    [InvoiceFromUserId] INT NOT NULL,
    [InvoiceToUserId] INT NOT NULL,
    [InvoiceStatusId] INT NOT NULL,
    [InsertionUserId] INT NOT NULL,
    [Computer] VARCHAR(100) NOT NULL,
    [SubTotalAmount] DECIMAL(19, 4) NOT NULL,
    [ShippingAmount] DECIMAL(19, 4) NOT NULL,
    [InsuranceAmount] DECIMAL (19, 4) NOT NULL,
    [TotalAmount] DECIMAL(19, 4) NOT NULL,
    [Description] VARCHAR(500) NOT NULL,
    [Created] DATETIME NOT NULL,
    [Checksum] VARBINARY(100) NOT NULL,
    CONSTRAINT [FK_Invoice_Payment] FOREIGN KEY ([PaymentId]) REFERENCES [Payment]([Id]),
    CONSTRAINT [FK_Invoice_FromUser] FOREIGN KEY ([InvoiceFromUserId]) REFERENCES [User]([Id]),
    CONSTRAINT [FK_Invoice_ToUser] FOREIGN KEY ([InvoiceToUserId]) REFERENCES [User]([Id]),
    CONSTRAINT [FK_Invoice_InvoiceStatus] FOREIGN KEY ([InvoiceStatusId]) REFERENCES [InvoiceStatus]([Id]),
    CONSTRAINT [FK_Invoice_InsertionUser] FOREIGN KEY ([InsertionUserId]) REFERENCES [User]([Id])
)
