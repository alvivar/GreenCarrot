CREATE TABLE [dbo].[CustomerPaymentMethod]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1), 
    [CustomerId] INT NOT NULL, 
    [PaymentMethodId] INT NOT NULL, 
    [CardNumber] VARCHAR(50) NOT NULL, 
    [Details] VARCHAR(500) NOT NULL, 
    CONSTRAINT [FK_CustomerPaymentMethod_Customer] FOREIGN KEY ([CustomerId]) REFERENCES [Customer]([Id]), 
    CONSTRAINT [FK_CustomerPaymentMethod_PaymentMethod] FOREIGN KEY ([PaymentMethodId]) REFERENCES [PaymentMethod]([Id]) 
)
