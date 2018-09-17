CREATE TABLE [dbo].[Log]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    [UserId] INT NOT NULL,
    [LogLeveId] INT NOT NULL,
    [LogTypeId] INT NOT NULL,
    [LogSourceId] INT NOT NULL,
    [UserName] VARCHAR(100) NOT NULL,
    [Computer] VARCHAR(100) NOT NULL,
    [Ip] VARCHAR(100) NOT NULL,
    [TableName] VARCHAR(100) NOT NULL,
    [ColumnName] VARCHAR(100) NOT NULL,
    [Description] VARCHAR(1000) NOT NULL,
    [Details] VARCHAR(1000) NOT NULL,
    [ReferenceId1] INT NULL,
    [ReferenceId2] INT NULL,
    [CheckSum] VARBINARY(100) NOT NULL,
    [Created] DATETIME NOT NULL,
    CONSTRAINT [FK_Log_User] FOREIGN KEY ([UserId]) REFERENCES [User]([Id]),
    CONSTRAINT [FK_Log_LogLevel] FOREIGN KEY (LogLeveId) REFERENCES [LogLevel]([Id]),
    CONSTRAINT [FK_Log_LogType] FOREIGN KEY (LogTypeId) REFERENCES [LogType]([Id]),
    CONSTRAINT [FK_Log_LogSource] FOREIGN KEY (LogSourceId) REFERENCES [LogSource]([Id])
)
