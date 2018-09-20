CREATE PROCEDURE [dbo].[GreenCarrotAddUserPayment]
	@UserName VARCHAR(100)
	,@Name VARCHAR(100)
	,@LastName VARCHAR(100)
	,@Email VARCHAR(100)
	,@Line1 VARCHAR(500)
	,@Line2 VARCHAR(500)
	,@Line3 VARCHAR(500)
	,@City VARCHAR(500)
	,@Province VARCHAR(500)
	,@Country VARCHAR(500)
	,@ZipCode VARCHAR(10)
	,@AddressDescription VARCHAR(1000)
	,@EntryAmount DECIMAL(19, 4) = 100000
AS

-- User that is gonna pay

DECLARE @now DATETIME = CURRENT_TIMESTAMP
DECLARE @future DATETIME = CURRENT_TIMESTAMP
DECLARE @geo GEOGRAPHY = GEOGRAPHY::Point('9.945736', '-84.055214', '4326')

DECLARE @countryId INT
EXECUTE @countryId = [dbo].[CountryInsert] @Country, @now

DECLARE @cityId INT
EXECUTE @cityId = [dbo].[CityInsert] @City, @now
DECLARE @provinceId INT
EXECUTE @provinceId = [dbo].[ProvinceInsert] @Province, @now

DECLARE @userId INT
EXEC @userId = [dbo].[GreenCarrotAddEditUser]  @UserName, @Name, @LastName, @Email, @Line1, @Line2, @Line3, @cityId, @provinceId, @countryId, @ZipCode, @AddressDescription, @geo, @now

-- Create a user payment method to be used in the payment

DECLARE @paymentMethodId INT
EXEC @paymentMethodId = [dbo].[PaymentMethodInsert] 'SomeKindOfPayment', 'API from the future', 'https://somewhere.cool', @now

DECLARE @paymentTokenId INT
EXEC @paymentTokenId = [dbo].[PaymentTokenInsert] @paymentMethodId, 'sexier-token-ever', 1, @future, @now

DECLARE @userPaymentMethod INT
EXEC @userPaymentMethod = [dbo].[UserPaymentMethodInsert] @userid, @paymentMethodId, @paymentTokenId, 'LeUser pays like this', @now

-- Create an order to be payed by the user
-- todo OrderStatus

DECLARE @orderId INT
EXEC @orderId = [dbo].[OrderInsert] @userid, NULL, 'Classic order by LeUser', @now

-- Create a payment on the order by the user
-- todo Null spaces, can't be null, they need their respective table connected
-- todo Checksum needs to be calculated

DECLARE @amount DECIMAL(19, 4) = @EntryAmount

DECLARE @paymentId INT
EXEC @paymentId = [dbo].[PaymentInsert] @orderId, @userPaymentMethod, NULL, 'Insertion Computer', 100000, 'Classic payment', @now, NULL

-- Create a transaction
-- todo Null spaces, can't be null, they need their respective table connected
DECLARE @transactionId INT
EXEC @transactionId = [dbo].[TransactionInsert] NULL, NULL, NULL, NULL, NULL, 'Insertion Computer', @amount, 'Classic transaction', @now, NULL

-- Create a balance movement

DECLARE @balancedAmount DECIMAL(19, 4) = @amount
-- Plus/minus the previous transaction amount

DECLARE @balanceId INT
EXEC @balanceId = [dbo]	.[BalanceInsert] @userId, @transactionId, NULL, 'Insertion computer', @balancedAmount, 'Description ', @now, NULL

RETURN 0
