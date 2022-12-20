INSERT INTO Accelerators(Label)
VALUES 
	('The Large Hadron Collider'), ('Linear accelerator 4'), 
	('The Proton Synchrotron Booster'), ('Linear accelerator 3'), 
	('The Low Energy Ion Ring'), ('Super Proton Synchrotron'), 
	('HIE-ISOLDE'), ('CLEAR'), ('Proton Synchrotron'), 
	('Antiproton Decelerator'), ('ELENA')
	
INSERT INTO Projects(Name)
VALUES
	('Atlas Project'), ('CMS detector Project'),
	('Total, elastic and diffractive cross-section measurement'),
	('The LHCf experiment'), ('The MoEDAL-MAPP experiment'),
	('The FASER experiment'), ('The Scattering and Neutrino Detector'),
	('NA63'), ('UA9'), ('CLOUD'), ('The Large Hadron Collider'),
	('Standard Model Project'), ('The OPAL Detector'), ('The L3 Detector'),
	('The DELPHI Detector'), ('Large Electron-Positron collider'),
	('The Large Electron-Positron Collider'), ('The OSQAR experiment'),
	('CAST'), ('The Alpha Magnetic Spectrometer'), ('CERN Neutrino Platform'),
	('The neutron time-of-flight facility'), ('ATRAP'),
	('The Gravitational Behaviour of Antihydrogen'), ('BASE'),
	('ASACUSA'), ('AEgIS')

INSERT INTO AcceleratorProjects(AcceleratorId, ProjectId)
VALUES 
	(1, 2), (1, 3), (1, 1), (1, 4), (2, 1), (2, 3),
	(3, 5), (4, 6), (4, 8), (4, 15), (5, 10), (5, 17),
	(6, 20), (6, 21), (6, 26), (6, 27), (6, 19),
	(7, 6), (7, 8), (8, 10), (8, 15), (8, 23), (8, 2),
	(9, 26), (9, 21), (10, 16), (10, 4), (10, 12), 
	(11, 11), (11, 5)

INSERT INTO ResearchPapers(ProjectId, Title, QuotationsNumber, PublishDate)
VALUES
	(3, 'Software Architecture and Maintainability', 273, '2007-12-07'),
	(2, 'Test-Driven Development: An Empirical Study', 39, '2009-07-01'),
	(13, 'Quantum Detection of Wormholes', 246, '1996-01-10'),
	(12, 'Naked Singularity, Firewall and Hawking Radiation', 235, '2000-03-26'),
	(23, 'Arbitrary Entanglement of Three Quibits via Linear Optics', 43, '1994-05-17'),
	(27, 'The Inhomogeneous Quatum Dynamical Maps', 180, '1989-09-23'),
	(7,'Ultra-diluted Gas Transmittance', 218, '2006-12-29'),
	(22, 'Hybrid Photon-phonon Blockade', 107, '1997-10-14'),
	(14, 'Semiclassical Relativistic Stars', 236, '2016-12-20'),
	(21, 'Schrödinger–Poisson Systems under Gradient Fields', 140, '2017-01-30'),
	(10, 'Quantum Zeno Repeaters', 209, '2003-09-12'),
	(1, 'Surface Code for Low-density Quibit Array', 162, '1989-04-27'),
	(5, 'Quantum Topology in the Ultrastrong Coupling Regime', 298, '1989-06-07'),
	(26, 'Single-quibit Reaped Quantum State Tomography', 176, '2015-05-06'),
	(16, 'Variational Quantum Evolution Equation Solver', 220, '2001-12-19'),
	(25, 'Van der Waals Five-body Size-energy Universality', 300, '2016-04-07'),
	(20, 'Partial Randomized Benchmarking', 247, '2017-08-14'),
	(8, 'Quantum Cyber-physical Systems', 86, '1999-09-03'),
	(24, 'Coherence Resource Power of Isocoherent States', 65, '2004-02-21'),
	(9, 'Quantum Transport on Honeycomb Networks', 97, '2008-06-28')
	

INSERT INTO Countries(Name, Population, PPP)
VALUES 
	('Belgium', 1158900, 49975),
	('Denmark', 5829000, 57570),
	('France', 67106000, 44695),
	('Germany', 83527000, 49640),
	('Italy', 60461000, 36745),
	('Neherlands', 17967000, 53365),
	('Poland', 38383000, 27995),
	('Sweden', 10355000, 52475),
	('Austria', 9000000, 49800),
	('Estonia', 1323000, 32480),
	('Hungary', 9798000, 26935),
	('Iceland', 364000, 68005),
	('Bulgaria', 7000000, 23485),
	('Spain', 47042000, 33995),
	('Switzerland', 8570000, 72810)
	

INSERT INTO Cities(CountryId, Name, Population)
VALUES
	(15, 'Geneva', 201890),
	(15, 'Annemasse', 28000),
	(15, 'Ferney-Voltaire', 18000),
	(15, 'Thônex', 20000)
	

INSERT INTO Hotels(CityId, Name, Capacity)
VALUES
	(1, 'Swissôtel Métropole Geneva', 446),
	(4, 'Hotel President Wilson', 308),
	(1, 'Hotel Royal', 263),
	(2, 'Hotel D', 231),
	(1, 'Hotel Bristol', 210),
	(2, 'Hotel Des Bergues', 149),
	(1, 'Hotel Cornavin', 141),
	(1, 'Hotel NvY', 127),
	(3, 'Hotel Les Armures', 120),
	(1, 'Hotel Le Léman', 116)
	

INSERT INTO Professions(Name)
VALUES
	('Developer'), ('Physicists'), ('Engineer'), ('Material Scientist')
	
--Execute these next 2 commands one after another to check the query number 9
INSERT INTO Scientists(ProfessionId, CountryId, HotelId, BirthDate, Name, Surname, Gender)
VALUES
	(1, 2, 1, '1950-12-30', 'Bjarne', 'Stroustrup', '1'),
	(1, 1, 5, '1955-05-19', 'James', 'Gosling', '1'),
	(1, 8, 1, '1956-01-31', 'Guido', 'van Rossum', '1'),
	(1, 9, 1, '1958-09-15', 'Martin', 'Odersky', '1'),
	(1, 13, 2, '1960-10-05', 'John', 'Ousterhout', '1'),
	(1, 2, 1, '1955-07-11', 'Douglas', 'Crockford', '1'),
	(2, 4, 3, '1962-06-18', 'Lisa', 'Randall', '2'),
	(2, 12, 4, '1970-09-12', 'Rachel', 'Davidson', '2'),
	(2, 11, 3, '1972-09-01', 'Nima', 'Arkani-Hamed', '9'),
	(2, 10, 4, '1941-02-19', 'David', 'Gross', '1'),
	(2, 3, 4, '1949-08-31', 'David', 'Politzer', '1'),
	(2, 5, 4, '1926-09-11', 'Edith', 'Flanigen', '2'),
	(2, 6, 4, '1946-07-05', 'Gerard', 'Hooft', '1'),
	(2, 7, 3, '1930-12-09', 'Hildebrando', 'Rodrigues', '2'),
	(2, 14, 3, '1931-08-08', 'Roger', 'Penrose', '1')
	
INSERT INTO Scientists(ProfessionId, CountryId, HotelId, BirthDate, Name, Surname, Gender)
VALUES
	(3, 3, 5, '1955-06-08', 'Tim', 'Berners-Lee', '1'),
	(3, 4, 6, '1943-06-23', 'Vint', 'Cerf', '1'),
	(3, 2, 7, '1958-05-10', 'Ellen', 'Ochoa', '2'),
	(3, 7, 7, '1939-11-07', 'Barbara', 'Liskov', '2'),
	(3, 9, 8, '1951-12-18', 'Radia', 'Perlman', '2'),
	(3, 12, 9, '1969-06-17', 'Cynthia', 'Breazeal', '2'),
	(4, 10, 8, '1960-07-05', 'Barbara', 'White', '2'),
	(4, 2, 9, '1966-02-22', 'Karen', 'Lozano', '2'),
	(4, 5, 10, '1970-10-04', 'Jie', 'Liu', '9'),
	(4, 8, 10, '1971-01-18', 'Kristin', 'L.Kiick', '2')


INSERT INTO ScientistResearchPapers(ResearchPaperId, ScientistId)
VALUES
	(1, 1), (2, 1), (3, 1), (4, 2), (5, 2), (6, 2), (2, 2),
	(3, 7), (3, 8), (3, 11), (3, 15), (3, 10), (4, 8), (4, 10), 
	(4, 7), (5, 7), (5, 8), (5, 16), (5, 20), (6, 1), (6, 16), 
	(6, 7), (6, 10), (7, 9), (7, 10), (7, 6), (7, 12), (7, 15),
	(8, 8), (8, 10), (8, 11), (9, 13), (9, 16), (9, 17), (9, 20), 
	(9, 7), (10, 18), (10, 14), (10, 19), (10, 21), (10, 22),
	(11, 6), (11, 7), (11, 13), (11, 14), (11, 17), (11, 18),
	(12, 22), (12, 8), (12, 10), (12, 11), (12, 17), (13, 21), 
	(13, 23), (13, 18), (13, 9), (14, 5), (14, 10), (14, 8), 
	(14, 21), (14, 19), (15, 15), (15, 24), (15, 20), (15, 17),
	(16, 9), (16, 2), (16, 25), (16, 13), (16, 14), (16, 18),	
	(17, 7), (17, 24), (17, 15), (17, 18), (17, 22),
	(18, 23), (18, 22), (18, 15), (18, 8), (18, 14), (18, 20),
	(19, 10), (19, 12), (19, 5), (19, 21), (19, 19),
	(20, 7), (20, 8), (20, 5), (20, 25)
	