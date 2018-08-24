CREATE TABLE [dbo].[Invoice]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1), 
    [FK_Invoice_Order_Id] INT NOT NULL, 
    [FK_Invoice_InvoiceStatus_Id] INT NOT NULL, 
    [Details] VARCHAR(500) NOT NULL, 
    [Date] DATETIME NOT NULL, 
    CONSTRAINT [FK_Invoice_Order] FOREIGN KEY ([FK_Invoice_Order_Id]) REFERENCES [Order]([Id]),
    CONSTRAINT [FK_Invoice_InvoiceStatus] FOREIGN KEY (FK_Invoice_InvoiceStatus_Id) REFERENCES [InvoiceStatus]([Id]) 
)
