CREATE TABLE [dbo].[Order]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
	[UserId] INT NOT NULL,
	[OrderStatusId] INT NULL,
	[Description] VARCHAR(500) NOT NULL,
	[Created] DATETIME NOT NULL, 
    CONSTRAINT [FK_Order_User] FOREIGN KEY ([UserId]) REFERENCES [User]([Id]),
	CONSTRAINT [FK_Order_OrderStatus] FOREIGN KEY ([OrderStatusId]) REFERENCES [OrderStatus]([Id])
)
