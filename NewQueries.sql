CREATE TABLE Actors (
  Id INTEGER(20) PRIMARY KEY,
  FirstName VARCHAR(20) NOT NULL,
  SecondName VARCHAR(20),
  Dob DATE DEFAULT '2000-01-01',
  Gender ENUM('Male', 'Female', 'Others'),
  MaritalStatus ENUM('Single', 'Married'),
  netWorthInMillions INTEGER(20)
);

INSERT INTO Actors (Id,FirstName,SecondName,Dob,Gender,MaritalStatus,netWorthInMillions)
VALUES
  (1,"Brad","Pitt","1963-12-18","male","single","240"),
  (2,"George","Clooney","1962-05-06","male","married","500"),
  (4,"Jhonny","Depp","1963-06-09","male","single","200"),
  (6,"RAJNIKANTH",NULL,"1963-12-18","male","single","50");
  
SELECT * FROM Actors;
UPDATE Actors SET FirstName = "RJ" , netWorthInMillions = 1000 WHERE Id = 6;

SELECT * FROM Actors;

ALTER TABLE Actors CHANGE netWorthInMillions Networth Decimal(10,2);
SELECT * FROM Actors;

SELECT Id, FirstName, SecondName, Networth FROM ACtors WHERE Networth > 200;
