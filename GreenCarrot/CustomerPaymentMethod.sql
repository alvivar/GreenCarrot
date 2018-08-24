CREATE TABLE [dbo].[CustomerPaymentMethod]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1), 
    [FK_CustomerPaymentMethod_Customer_Id] INT NOT NULL, 
    [FK_CustomerPaymentMethod_PaymentMethod_Id] INT NOT NULL, 
    [CardNumber] VARCHAR(50) NOT NULL, 
    [Details] VARCHAR(500) NOT NULL, 
    CONSTRAINT [FK_CustomerPaymentMethod_Customer] FOREIGN KEY ([FK_CustomerPaymentMethod_Customer_Id]) REFERENCES [Customer]([Id]), 
    CONSTRAINT [FK_CustomerPaymentMethod_PaymentMethod] FOREIGN KEY ([FK_CustomerPaymentMethod_PaymentMethod_Id]) REFERENCES [PaymentMethod]([Id]) 
)
