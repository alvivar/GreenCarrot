CREATE TABLE [dbo].[UserAddress]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1), 
    [UserId] INT NOT NULL, 
    [AddressId] INT NOT NULL, 
    CONSTRAINT [FK_UserAddress_User] FOREIGN KEY ([UserId]) REFERENCES [User]([Id]), 
    CONSTRAINT [FK_UserAddress_Address] FOREIGN KEY ([AddressId]) REFERENCES [Address]([Id])
)
