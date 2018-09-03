CREATE TABLE [dbo].[InvoiceDetail]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    [InvoiceId] INT NOT NULL,
    [CassandraProductId] VARCHAR(50) NOT NULL,
    [Description] VARCHAR(500) NOT NULL,
    CONSTRAINT [FK_InvoiceDetail_Invoice] FOREIGN KEY ([InvoiceId]) REFERENCES [Invoice]([Id])
)
