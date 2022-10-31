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


--Stored Prodedure For Adding 
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

--Stored Prodedure For Fetching all Record
CREATE PROCEDURE ShowContacts
AS
BEGIN
	SELECT * FROM AddressBookTable
END
GO

--Stored Prodedure For Updating Contact
CREATE PROCEDURE UpdateContact(
@Id int,
@FirstName varchar(250),
@LastName varchar(250),
@Address varchar(max),
@City varchar(250),
@State varchar(250),
@Pincode varchar(250),
@Phone varchar(250),
@Email varchar(250)
)
AS
BEGIN
	BEGIN TRY
			BEGIN
				
				UPDATE AddressBookTable SET FirstName=@FirstName,LastName=@LastName,Address=@Address,City=@City,State=@State,Pincode=@Pincode,Phone=@Phone,Email=@Email WHERE Id = @Id;
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
GO

--Delete record
CREATE PROCEDURE DeleteContact(@Id int)
AS
BEGIN
	DELETE FROM AddressBookTable WHERE Id = @Id
END
GO

