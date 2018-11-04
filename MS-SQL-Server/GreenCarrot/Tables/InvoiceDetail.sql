CREATE TABLE [dbo].[InvoiceDetail]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    [InvoiceId] INT NOT NULL,
    [ProductId] INT NOT NULL,
    [Description] VARCHAR(500) NOT NULL,
    [Quantity] INT NOT NULL,
    [SubTotalAmount] DECIMAL(19, 4) NOT NULL,
    [DiscountAmount] DECIMAL(19, 4) NOT NULL,
    [TaxAmount] DECIMAL(19, 4) NOT NULL,
    [TaxZipCode] VARCHAR(100) NOT NULL,
    [TotalAmount] DECIMAL(19, 4) NOT NULL,
    [Created] DATETIME NOT NULL,
    CONSTRAINT [FK_InvoiceDetail_Product] FOREIGN KEY ([ProductId]) REFERENCES [Product]([Id]),
    CONSTRAINT [FK_InvoiceDetail_Invoice] FOREIGN KEY ([InvoiceId]) REFERENCES [Invoice]([Id])
)
