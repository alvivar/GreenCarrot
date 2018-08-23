CREATE TABLE [dbo].[ProductImage]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1), 
	[FK_ProductImage_Product_Id] INT NOT NULL, 
    [Filepath] VARCHAR(100) NOT NULL, 
    [Name] VARCHAR(50) NULL, 
    [Description] VARCHAR(500) NOT NULL,     
    CONSTRAINT [FK_ProductImage_Product] FOREIGN KEY ([FK_ProductImage_Product_Id]) REFERENCES [Product]([Id])
)
