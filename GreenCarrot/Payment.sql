CREATE TABLE [dbo].[Payment]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    [CassandraOrderId] VARCHAR(50) NOT NULL,
    [UserPaymentMethodId] INT NOT NULL,
    [Amount] DECIMAL(8, 3) NOT NULL,
    [TaxAmout] DECIMAL(8, 3) NOT NULL,
    [TaxPercentage] DECIMAL(4, 3) NOT NULL,
    [TaxZipCode] VARCHAR(50) NOT NULL,
    [PaidDate] DATETIME NOT NULL,
    [CheckSum] VARCHAR(50) NOT NULL,
    CONSTRAINT [FK_Payment_UserPaymentMethod] FOREIGN KEY ([UserPaymentMethodId]) REFERENCES [UserPaymentMethod]([Id])
)
