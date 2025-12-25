-- Test Join: Average Cost per Click (CPC)

SELECT
    ROUND(
        SUM(p.Amount) * 1.0 / SUM(m.Clicks),
        2
    ) AS Avg_Cost_Per_Click
FROM Payments p
JOIN Metrics m
    ON p.Campaign_ID = m.Campaign_ID;
