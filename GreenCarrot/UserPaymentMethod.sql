CREATE TABLE [dbo].[UserPaymentMethod]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1), 
    [UserId] INT NOT NULL, 
    [PaymentMethodId] INT NOT NULL, 
	[PaymentTokenId] INT NOT NULL, 
    [Description] VARCHAR(500) NOT NULL, 
    CONSTRAINT [FK_UserPaymentMethod_User] FOREIGN KEY ([UserId]) REFERENCES [User]([Id]), 
    CONSTRAINT [FK_UserPaymentMethod_PaymentMethod] FOREIGN KEY ([PaymentMethodId]) REFERENCES [PaymentMethod]([Id]), 
    CONSTRAINT [FK_UserPaymentMethod_PaymentToken] FOREIGN KEY ([PaymentTokenId]) REFERENCES [PaymentToken]([Id]) 
)
