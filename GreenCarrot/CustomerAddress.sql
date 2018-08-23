CREATE TABLE [dbo].[CustomerAddress]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1), 
    [FK_CustomerAddress_Customer_Id] INT NOT NULL, 
    [FK_CustomerAddress_Address_Id] INT NOT NULL, 
    CONSTRAINT [FK_CustomerAddress_Customer] FOREIGN KEY ([FK_CustomerAddress_Customer_Id]) REFERENCES [Customer]([Id]), 
    CONSTRAINT [FK_CustomerAddress_Address] FOREIGN KEY ([FK_CustomerAddress_Address_Id]) REFERENCES [Address]([Id])
)
