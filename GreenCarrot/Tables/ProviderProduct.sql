CREATE TABLE [dbo].[ProviderProduct]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
	[ProviderId] INT NOT NULL,
	[ProductId] INT NOT NULL,
	[Created] DATETIME NOT NULL,
	CONSTRAINT [FK_ProviderProduct_Provider] FOREIGN KEY ([ProviderId]) REFERENCES [Provider]([Id]),
	CONSTRAINT [FK_ProviderProduct_Product] FOREIGN KEY ([ProductId]) REFERENCES [Product]([Id])
)
