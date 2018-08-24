CREATE TABLE [dbo].[ProviderBalance]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    [FK_ProviderBalance_Provider_Id] INT NOT NULL,
    [BalanceAmount] INT NOT NULL,
    [Details] VARCHAR(500) NOT NULL,
    [Date] DATETIME NOT NULL,
    CONSTRAINT [FK_ProviderBalance_Provider] FOREIGN KEY ([FK_ProviderBalance_Provider_Id]) REFERENCES [Provider]([Id])
)
