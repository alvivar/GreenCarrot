CREATE TABLE [dbo].[Payment]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1), 
    [InvoiceId] INT NOT NULL, 
    [CustomerPaymentMethodId] INT NOT NULL, 
    [Amount] INT NOT NULL, 
    [Date] DATETIME NOT NULL, 
    CONSTRAINT [FK_Payment_Invoice] FOREIGN KEY ([InvoiceId]) REFERENCES [Invoice]([Id]), 
    CONSTRAINT [FK_Payment_CustomerPaymentMethod] FOREIGN KEY ([CustomerPaymentMethodId]) REFERENCES [CustomerPaymentMethod]([Id])
)
