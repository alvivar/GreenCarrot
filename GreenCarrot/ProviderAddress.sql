CREATE TABLE [dbo].[ProviderAddress]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1), 
    [FK_ProviderAddress_Provider_Id] INT NOT NULL, 
    [FK_ProviderAddress_Address_Id] INT NOT NULL, 
    CONSTRAINT [FK_ProviderAddress_Provider] FOREIGN KEY ([FK_ProviderAddress_Provider_Id]) REFERENCES [Provider]([Id]), 
    CONSTRAINT [FK_ProviderAddress_Address] FOREIGN KEY ([FK_ProviderAddress_Address_Id]) REFERENCES [Address]([Id])
)
