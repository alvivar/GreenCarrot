CREATE TABLE [dbo].[Payment]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    [CassandraOrderId] VARCHAR(50) NOT NULL,
    [UserPaymentMethodId] INT NOT NULL,
    [TotalAmount] DECIMAL(8, 3) NOT NULL,
    [SubTotalAmount] DECIMAL(8, 3) NOT NULL,
    [ShippingAmount] DECIMAL(8, 3) NOT NULL,
    [InsuranceAmount] DECIMAL(8, 3) NOT NULL,
    [DiscountAmount] DECIMAL(8, 3) NOT NULL,
    [TaxAmout] DECIMAL(8, 3) NOT NULL,
    [TaxZipCode] VARCHAR(50) NOT NULL,
    [Details] VARCHAR(500) NOT NULL,
    [Paid] DATETIME NOT NULL,
    [CheckSum] VARCHAR(50) NOT NULL,
    CONSTRAINT [FK_Payment_UserPaymentMethod] FOREIGN KEY ([UserPaymentMethodId]) REFERENCES [UserPaymentMethod]([Id])
)
