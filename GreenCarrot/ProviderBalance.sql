CREATE TABLE [dbo].[ProviderBalance]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    [ProviderId] INT NOT NULL,
    [BalanceAmount] INT NOT NULL,
    [Details] VARCHAR(500) NOT NULL,
    [Date] DATETIME NOT NULL,
    CONSTRAINT [FK_ProviderBalance_Provider] FOREIGN KEY ([ProviderId]) REFERENCES [Provider]([Id])
)
