CREATE TABLE [dbo].[OrderProduct]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    [OrderId] INT NOT NULL, 
	[ProductId] INT NOT NULL, 
	[OrderProductStatusId] INT NOT NULL, 
    [Quantity] INT NOT NULL, 
    CONSTRAINT [FK_OrderProduct_Order] FOREIGN KEY ([OrderId]) REFERENCES [Order]([Id]), 
    CONSTRAINT [FK_OrderProduct_Product] FOREIGN KEY ([ProductId]) REFERENCES [Product]([Id]),
    CONSTRAINT [FK_OrderProduct_OrderProductStatus] FOREIGN KEY ([OrderProductStatusId]) REFERENCES [OrderProductStatus]([Id])
)
