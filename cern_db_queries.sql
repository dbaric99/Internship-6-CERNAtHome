--TODO: add aliases for better table readability

--Query 1: select title, publishing date and all scientists working on a project
--with scientists being in one cell in format Surname N.
SELECT rp.Title, rp.PublishDate, 
	STRING_AGG(CONCAT(s.Surname, ' ', SUBSTRING(s.Name, 1, 1), '.'), ', ') 
	AS Scientists
FROM ResearchPapers rp
	JOIN ScientistResearchPapers srp ON rp.Id = srp.ResearchPaperId
	JOIN Scientists s ON s.Id = srp.ScientistId
GROUP BY rp.Id;

--Query 2: select name, surname and gender of a scientist
--with name and ppp of his home country
SELECT s.Name, s.Surname, 
	(CASE s.Gender
	 	WHEN 1 THEN 'Male'
	 	WHEN 2 THEN 'Female'
	 	WHEN 9 THEN 'Not applicable'
	 	WHEN 0 THEN 'Unknown'
	) AS Gender, c.Name, c.PPP
FROM Scientists s
JOIN Countries c ON s.CountryId = c.Id;

--Query 3: select all project accelerator combinations, 
--if the value is null replace it with 'None'
SELECT 
	COALESCE(a.Label, 'None') AS Accelerator,
	COALESCE(p.Name, 'None') AS Project
FROM Accelerators a
FULL OUTER JOIN AcceleratorProjects ap ON a.Id = ap.AcceleratorId
FULL OUTER JOIN Projects p ON p.Id = ap.ProjectId;

--Query 4: select all projects which have at least one research paper
--that was published between 2015 and 2017
SELECT p.Name FROM Projects p
JOIN ResearchPapers rp ON rp.ProjectId = p.Id
WHERE DATE_PART('year', rp.PublishDate) BETWEEN 2015 AND 2017;

--Query 5: select number of research papers by country and most famous
--research paper written by a scientist from the same country
SELECT 
	c.Name AS Country,
	COUNT(srp.Id) AS ResearchPaperNum,
	rp.Title AS MostFamousPaper
FROM Scientists s
JOIN ScientistResearchPapers srp ON srp.ScientistId = s.Id
JOIN Countries c ON c.Id = s.CountryId
JOIN ResearchPapers rp ON rp.Id = srp.ResearchPaperId
GROUP BY c.Name, rp.Title, rp.QuotationsNumber
HAVING rp.QuotationsNumber = MAX(rp.QuotationsNumber)

--Query 6: select first published paper by every country
SELECT c.Name AS Country, r.Title AS FirstPublished
FROM Countries c
LEFT JOIN (
	SELECT s.CountryId, rp.Title, rp.PublishDate
	FROM Scientists s
	JOIN ScientistResearchPapers srp ON s.Id = srp.ScientistId
	JOIN ResearchPapers rp ON srp.ResearchPaperId = rp.Id
	ORDER BY s.CountryId, rp.PublishDate ASC
) r ON c.Id = r.CountryId
GROUP BY c.Name, r.Title
LIMIT 1;














