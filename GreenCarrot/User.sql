﻿CREATE TABLE [dbo].[User]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1), 
    [UserName] VARCHAR(50) NOT NULL,
    [Name] VARCHAR(50) NOT NULL,
    [LastName] VARCHAR(50) NOT NULL,
    [Email] VARCHAR(50) NOT NULL,
    [Created] DATETIME NOT NULL
)
