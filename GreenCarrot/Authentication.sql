CREATE TABLE [dbo].[Authentication]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    [AuthenticationSourceId] INT NOT NULL,
    [ClientId] VARCHAR(50) NOT NULL,
    [ClientSecret] VARCHAR(50) NOT NULL,
    [RedirectUri] VARCHAR(50) NOT NULL,
    [Scope] VARCHAR(50) NOT NULL,
    [ExpiresIn] INT NOT NULL,
    [Created] DATETIME NOT NULL,
    [Checksum] VARBINARY(100) NOT NULL,
    CONSTRAINT [FK_Authentication_AuthenticationSource] FOREIGN KEY ([AuthenticationSourceId]) REFERENCES [AuthenticationSource]([Id])
)
