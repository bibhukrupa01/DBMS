CREATE TABLE second (
  Name VARCHAR(15) NOT NULL,
  Dob DATE DEFAULT '2000-01-01',
  Gender ENUM('Male','Female','Others')
);

INSERT INTO second (Name, Dob, Gender)
VALUES
  ('Dexon',  '1994-06-05', 'Male'),
  ('Neha',   '2001-06-03', 'Female'),
  ('Oberoi', '2002-07-02', 'Male'),
  ('Ronit',  '2004-08-05', 'Male'),
  ('Pinky',  '2005-06-01', 'Female'),
  ('Priya',  '2002-06-01', 'Female');

SELECT * FROM second;
SELECT Name, Gender FROM second WHERE Gender = "Female";
SELECT Name, Gender FROM second WHERE Name LIKE "P%";
