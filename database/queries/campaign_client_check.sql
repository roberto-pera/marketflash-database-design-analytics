-- Test Join on example of Campaigns x Clients

SELECT
	c.Campaign_Name,
	c.StartDate,
	c.EndDate,
	c.Budget,
	ct.CompanyName,
	ct.ContactPerson
FROM Campaigns c
LEFT JOIN Clients ct 
	ON c.Client_ID = ct.Client_ID;
