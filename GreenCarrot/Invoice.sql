CREATE TABLE [dbo].[Invoice]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1), 
    [CassandraOrderId] VARCHAR(50) NULL, 
    [InvoiceStatusId] INT NOT NULL, 
    [Description] VARCHAR(500) NOT NULL, 
    [Date] DATETIME NOT NULL, 
    CONSTRAINT [FK_Invoice_InvoiceStatus] FOREIGN KEY ([InvoiceStatusId]) REFERENCES [InvoiceStatus]([Id]) 
)
