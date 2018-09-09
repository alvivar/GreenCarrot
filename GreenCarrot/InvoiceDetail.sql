CREATE TABLE [dbo].[InvoiceDetail]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    [InvoiceId] INT NOT NULL,
    -- ProductId should be here
    [Description] VARCHAR(500) NOT NULL,
    [Quantity] INT NOT NULL,
    [SubTotalAmount] DECIMAL(19, 4) NOT NULL,
    [DiscountAmount] DECIMAL(19, 4) NOT NULL,
    [TaxAmount] DECIMAL(19, 4) NOT NULL,
    [TaxZipCode] VARCHAR(50) NOT NULL,
    [TotalAmount] DECIMAL(19, 4) NOT NULL,
    CONSTRAINT [FK_InvoiceDetail_Invoice] FOREIGN KEY ([InvoiceId]) REFERENCES [Invoice]([Id])
)
