CREATE TABLE [dbo].[Payment]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    [OrderId] INT NOT NULL,
    [UserPaymentMethodId] INT NOT NULL,
    [InsertionUserId] INT NOT NULL,
    [Computer] VARCHAR(100) NOT NULL,
    [Amount] DECIMAL(19, 4) NOT NULL,
    [Description] VARCHAR(500) NOT NULL,
    [Created] DATETIME NOT NULL,
    [CheckSum] VARBINARY(100) NOT NULL,
    CONSTRAINT [FK_Payment_Order] FOREIGN KEY ([OrderId]) REFERENCES [Order]([Id]),
    CONSTRAINT [FK_Payment_UserPaymentMethod] FOREIGN KEY ([UserPaymentMethodId]) REFERENCES [UserPaymentMethod]([Id]),
    CONSTRAINT [FK_Payment_InsertionUser] FOREIGN KEY ([InsertionUserId]) REFERENCES [User]([Id])
)
