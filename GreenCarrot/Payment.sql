CREATE TABLE [dbo].[Payment]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1), 
    [FK_Payment_Invoice_Id] INT NOT NULL, 
    [FK_Payment_CustomerPaymentMethod_Id] INT NOT NULL, 
    [Amount] INT NOT NULL, 
    [Date] DATETIME NOT NULL, 
    CONSTRAINT [FK_Payment_Invoice] FOREIGN KEY ([FK_Payment_Invoice_Id]) REFERENCES [Invoice]([Id]), 
    CONSTRAINT [FK_Payment_CustomerPaymentMethod] FOREIGN KEY ([FK_Payment_CustomerPaymentMethod_Id]) REFERENCES [CustomerPaymentMethod]([Id])
)
