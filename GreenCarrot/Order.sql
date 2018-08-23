CREATE TABLE [dbo].[Order]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1), 
    [FK_Order_Customer_Id] INT NOT NULL, 
    [FK_Order_OrderStatus_Id] INT NOT NULL, 
    [OrderPlaced] DATETIME NOT NULL, 
    CONSTRAINT [FK_Order_Customer] FOREIGN KEY ([FK_Order_Customer_Id]) REFERENCES [Customer]([Id]), 
    CONSTRAINT [FK_Order_OrderStatus] FOREIGN KEY ([FK_Order_OrderStatus_Id]) REFERENCES [OrderStatus]([Id])
)
