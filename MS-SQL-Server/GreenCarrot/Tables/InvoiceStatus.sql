﻿CREATE TABLE [dbo].[InvoiceStatus]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    [Name] VARCHAR(100) NOT NULL,
    [Description] VARCHAR(500) NOT NULL,
    [Created] DATETIME NOT NULL
)
