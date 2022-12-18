--CREATING MODEL ENTITIES

CREATE TABLE Accelerators (
	Id SERIAL PRIMARY KEY,
	Label VARCHAR(30)
);

CREATE TABLE Projects (
	Id SERIAL PRIMARY KEY,
	Name VARCHAR(50) NOT NULL
);

CREATE TABLE AcceleratorProjects (
	Id SERIAL PRIMARY KEY,
	AcceleratorId INT REFERENCES Accelerators(Id) NOT NULL,
	ProjectId INT REFERENCES Projects(Id) NOT NULL
);

CREATE TABLE ResearchPapers (
	Id SERIAL PRIMARY KEY,
	ProjectId INT REFERENCES Projects(Id) UNIQUE NOT NULL,
	Title VARCHAR(40) NOT NULL,
	QuotationsNumber INT,
	PublishDate DATE
);

CREATE TABLE Countries (
	Id SERIAL PRIMARY KEY,
	Name VARCHAR(60) UNIQUE NOT NULL,
	Population BIGINT NOT NULL,
	PPP FLOAT
);

CREATE TABLE Cities (
	Id SERIAL PRIMARY KEY,
	CountryId INT REFERENCES Countries(Id),
	Name VARCHAR(60) NOT NULL,
	Population BIGINT
);

CREATE TABLE Hotels (
	Id SERIAL PRIMARY KEY,
	CityId INT REFERENCES Cities(Id),
	Name VARCHAR(30) NOT NULL,
	Capacity INT NOT NULL
);

CREATE TABLE Professions (
	Id SERIAL PRIMARY KEY,
	Name VARCHAR(25) NOT NULL
);

CREATE TABLE Scientists (
	Id SERIAL PRIMARY KEY,
	ProfessionId INT REFERENCES Professions(Id) NOT NULL,
	CountryId INT REFERENCES Countries(Id),
	HotelId INT REFERENCES Hotels(Id),
	BirthDate DATE,
	Name VARCHAR(20) NOT NULL,
	Surname VARCHAR(20) NOT NULL,
	Title VARCHAR(10),
	Gender VARCHAR(1) NOT NULL
);

CREATE TABLE ScientistResearchPapers (
	Id SERIAL PRIMARY KEY,
	ScientistId INT REFERENCES Scientists(Id),
	ResearchPaperId INT REFERENCES ResearchPapers(Id)
);

--ADDING CONSTRAINTS

ALTER TABLE Scientists
ADD CONSTRAINT chk_gender
CHECK (Gender IN ('0', '1', '2', '9'));

--Checks if number of scientists staying at a certain hotel is greater than its capacity
CREATE OR REPLACE FUNCTION check_hotel_capacity(hotel_id INT)
RETURNS BOOLEAN AS
$$
DECLARE
  total_capacity INT;
BEGIN
  SELECT SUM(HotelId) INTO total_capacity FROM Scientists;
  IF total_capacity > (SELECT Capacity FROM Hotels WHERE Id = hotel_id) THEN
    RETURN FALSE;
  ELSE
    RETURN TRUE;
  END IF;
END;
$$
LANGUAGE plpgsql;

ALTER TABLE Scientists
ADD CONSTRAINT chk_hotel_capacity CHECK (check_hotel_capacity(HotelId));















