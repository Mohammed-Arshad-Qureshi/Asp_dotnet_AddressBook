CREATE DATABASE AddressBook
USE AddressBook


CREATE TABLE AddressBookTable(
Id int identity(1,1) primary key,
FirstName varchar(250) Not null unique,
LastName varchar(250) Not null,
Address varchar(max) Not null,
City varchar(250) Not null,
State varchar(250) Not null,
Pincode varchar(250) Not null,
Phone varchar(250) Not null,
Email varchar(250) Not null unique
)



----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------
--------   STORED PROCEDURES -----------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------



CREATE PROCEDURE AddContact(
@FirstName varchar(250),
@LastName varchar(250),
@Address varchar(max),
@City varchar(250),
@State varchar(250),
@Pincode varchar(250),
@Phone varchar(250),
@Email varchar(250),
@default int = null output
)
AS
BEGIN
	BEGIN TRY
		IF EXISTS(SELECT * FROM AddressBookTable WHERE FirstName = @FirstName)
			BEGIN
				SET @default = 1
			END
		ELSE IF EXISTS(SELECT * FROM AddressBookTable WHERE Email = @Email)
			BEGIN
				SET @default = 2
			END
		ELSE
			BEGIN
				SET @default = 3
				INSERT INTO AddressBookTable (FirstName,LastName,Address,City,State,Pincode,Phone,Email) VALUES (@FirstName,@LastName,@Address,@City,@State,@Pincode,@Phone,@Email)
			END
	END TRY

	BEGIN CATCH
		SELECT 
		ERROR_NUMBER() AS ERROR_NUMBER,
		ERROR_STATE() AS ERROR_STATE,
		ERROR_SEVERITY() AS ERROR_SEVERITY,
		ERROR_PROCEDURE() AS ERROR_PROCEDURE,
		ERROR_LINE() AS ERROR_LINE,
		ERROR_MESSAGE() AS ERROR_MESSAGE
	END CATCH
END


SELECT * FROM AddressBookTable

