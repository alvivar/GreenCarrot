CREATE TABLE [dbo].[ProviderAddress]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
	[ProviderId] INT NOT NULL,
	[AddressId] INT NOT NULL,
	CONSTRAINT [FK_ProviderAddress_Provider] FOREIGN KEY ([ProviderId]) REFERENCES [Provider]([Id]),
	CONSTRAINT [FK_ProviderAddress_Address] FOREIGN KEY ([AddressId]) REFERENCES [Address]([Id])
)
