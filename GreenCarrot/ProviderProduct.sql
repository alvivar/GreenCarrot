CREATE TABLE [dbo].[ProviderProduct]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1), 
    [FK_ProviderProduct_Provider_Id] INT NOT NULL, 
    [FK_ProviderProduct_Product_Id] INT NOT NULL, 
    CONSTRAINT [FK_ProviderProduct_Provider] FOREIGN KEY ([FK_ProviderProduct_Provider_Id]) REFERENCES [Provider]([Id]), 
    CONSTRAINT [FK_ProviderProduct_Product] FOREIGN KEY ([FK_ProviderProduct_Product_Id]) REFERENCES [Product]([Id])
)
