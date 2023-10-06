CREATE TABLE Customer (
      CustomerID int,
	  CustomerName varchar(30),
	  CustomerNO int,
	  CustomerAddress varchar(100),
);
select * from CustomerInfo

ALTER TABLE Customer
ADD CustomerGender varchar(10);

EXEC sp_rename 'Customer','CustomerInfo';


INSERT INTO CustomerInfo
(CustomerID, CustomerName, CustomerNO, CustomerAddress, CustomerGender)
VALUES
(1,'geetha',989,'rjpm','female' ),
(2,'velu',987,'svks','male'),
(3,'mari',7463,'mdu','female');


DELETE FROM CustomerInfo WHERE CustomerName='geetha';


DELETE FROM CustomerInfo WHERE CustomerName='velu';



INSERT INTO CustomerInfo
(CustomerID, CustomerName, CustomerNO, CustomerAddress, CustomerGender)
VALUES
(1,'geetha',9898768767,'rjpm','female' ),
(2,'velu',9877657654,'svks','male');


ALTER TABLE CustomerInfo ALTER COLUMN CustomerNO SMALLINT;


ALTER TABLE CustomerInfo ALTER COLUMN CustomerNO BIGINT;


DELETE FROM CustomerInfo WHERE CustomerName='geetha';



DELETE FROM CustomerInfo WHERE CustomerName='velu';


DELETE FROM CustomerInfo WHERE CustomerName='mari';


INSERT INTO CustomerInfo
(CustomerID, CustomerName, CustomerNO, CustomerAddress, CustomerGender)
VALUES
(1,'geetha',9898765432,'rjpm','female' ),
(2,'velu',9872345678,'svks','male'),
(3,'mari',7463546789,'mdu','female');


DELETE FROM CustomerInfo WHERE CustomerName='geetha';


DELETE FROM CustomerInfo WHERE CustomerName='velu';


DELETE FROM CustomerInfo WHERE CustomerName='mari';


INSERT INTO CustomerInfo
(CustomerID, CustomerName, CustomerNO, CustomerAddress, CustomerGender)
VALUES
(1,'geetha',9898765432,'rjpm','female' ),
(2,'velu',9872345678,'svks','male'),
(3,N'மாரி',7463546789,'mdu','female');

ALTER TABLE CustomerInfo ALTER COLUMN CustomerName nvarchar(30);

DELETE FROM CustomerInfo WHERE CustomerName='geetha';



DELETE FROM CustomerInfo WHERE CustomerName='velu';


DELETE FROM CustomerInfo WHERE CustomerName='mari';

DELETE FROM CustomerInfo WHERE CustomerName=N'மாரி';

INSERT INTO CustomerInfo
(CustomerID, CustomerName, CustomerNO, CustomerAddress, CustomerGender)
VALUES
(1,'geetha',9898765432,'rjpm','female' ),
(2,'velu',9872345678,'svks','male'),
(3,'mari',7463546789,'mdu','female'),
(4,N'ஸ்ரீஜா',65372819283,'srivi','female');


INSERT INTO CustomerInfo
(CustomerID, CustomerName, CustomerNO, CustomerAddress, CustomerGender)
VALUES
(1,'jeya',1234567892,'trichi','female' );



