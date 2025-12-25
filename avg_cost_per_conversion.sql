-- Test Join: Average Cost per Conversion
SELECT
    ROUND(
        SUM(p.Amount) * 1.0
        / SUM(m.Clicks * m.Conversion_Rate / 100.0),
        2
    ) AS Avg_Cost_Per_Conversion
FROM Payments p
JOIN Metrics m
    ON p.Campaign_ID = m.Campaign_ID;
