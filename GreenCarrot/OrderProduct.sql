CREATE TABLE [dbo].[OrderProduct]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [FK_OrderProduct_Order_Id] INT NOT NULL, 
    [FK_OrderProduct_Product_Id] INT NOT NULL, 
    [FK_OrderProduct_OrderProductStatus] INT NOT NULL, 
    [Quantity] INT NOT NULL, 
    [Details] VARCHAR(500) NOT NULL, 
    CONSTRAINT [FK_OrderProduct_Order] FOREIGN KEY ([FK_OrderProduct_Order_Id]) REFERENCES [Order]([Id]), 
    CONSTRAINT [FK_OrderProduct_Product] FOREIGN KEY ([FK_OrderProduct_Product_Id]) REFERENCES [Product]([Id]), 
    CONSTRAINT [FK_OrderProduct_OrderProductStatus] FOREIGN KEY ([FK_OrderProduct_OrderProductStatus]) REFERENCES [OrderProductStatus]([Id])
)
