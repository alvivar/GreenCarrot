CREATE TABLE [dbo].[Balance]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1), 
    [UserId] INT NOT NULL, 
    [Amount] INT NOT NULL, 
    [Details] VARCHAR(500) NOT NULL, 
    [Transacted] DATETIME NOT NULL, 
    CONSTRAINT [FK_Balance_User] FOREIGN KEY ([UserId]) REFERENCES [User]([Id])
)
