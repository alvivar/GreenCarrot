CREATE TABLE [dbo].[UserAuthentication]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
	[UserId] INT NOT NULL,
	[AuthenticationId] INT NOT NULL,
	[Created] DATETIME NOT NULL,
	CONSTRAINT [FK_UserAuthentication_User] FOREIGN KEY ([UserId]) REFERENCES [User]([Id]),
	CONSTRAINT [FK_UserAuthentication_Authentication] FOREIGN KEY ([AuthenticationId]) REFERENCES [Authentication]([Id])
)
