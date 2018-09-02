CREATE TABLE [dbo].[Log]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    [LogLeveId] INT NOT NULL,
    [LogTypeId] INT NOT NULL,
    [LogSourceId] INT NOT NULL,
    [UserId] INT NOT NULL,
    [UserName] VARCHAR(50) NOT NULL,
    [Computer] VARCHAR(50) NOT NULL,
    [Ip] VARCHAR(50) NOT NULL,
    [Description] VARCHAR(1000) NOT NULL,
    [Details] VARCHAR(1000) NOT NULL,
    [ReferenceId1] INT NULL,
    [ReferenceId2] INT NULL,
    CONSTRAINT [FK_Log_LogLevel] FOREIGN KEY (LogLeveId) REFERENCES [LogLevel]([Id]),
    CONSTRAINT [FK_Log_LogType] FOREIGN KEY (LogTypeId) REFERENCES [LogType]([Id]),
    CONSTRAINT [FK_Log_LogSource] FOREIGN KEY (LogSourceId) REFERENCES [LogSource]([Id]),
    CONSTRAINT [FK_Log_User] FOREIGN KEY ([UserId]) REFERENCES [User]([Id])
)
