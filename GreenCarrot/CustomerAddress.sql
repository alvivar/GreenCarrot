CREATE TABLE [dbo].[CustomerAddress]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1), 
    [CustomerId] INT NOT NULL, 
    [AddressId] INT NOT NULL, 
    CONSTRAINT [FK_CustomerAddress_Customer] FOREIGN KEY ([CustomerId]) REFERENCES [Customer]([Id]), 
    CONSTRAINT [FK_CustomerAddress_Address] FOREIGN KEY ([AddressId]) REFERENCES [Address]([Id])
)
