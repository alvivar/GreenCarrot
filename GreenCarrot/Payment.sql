CREATE TABLE [dbo].[Payment]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    -- OrderId should be here
    [UserPaymentMethodId] INT NOT NULL,
    [Amount] DECIMAL(19, 4) NOT NULL,
    [Description] VARCHAR(500) NOT NULL,
    [Paid] DATETIME NOT NULL,
    [CheckSum] VARBINARY(100) NOT NULL,
    CONSTRAINT [FK_Payment_UserPaymentMethod] FOREIGN KEY ([UserPaymentMethodId]) REFERENCES [UserPaymentMethod]([Id])
)
