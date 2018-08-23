CREATE TABLE [dbo].[ProductSize]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1), 
    [FK_ProductSize_Product_Id] INT NOT NULL, 
    [FK_ProductSize_Size_Id] INT NOT NULL, 
    CONSTRAINT [FK_ProductSize_Product] FOREIGN KEY ([FK_ProductSize_Product_Id]) REFERENCES [Product]([Id]), 
    CONSTRAINT [FK_ProductSize_Size] FOREIGN KEY ([FK_ProductSize_Size_Id]) REFERENCES [Size]([Id])
)
