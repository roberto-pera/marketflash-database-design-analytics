-- Clients
INSERT INTO Clients (Client_ID, CompanyName, Address, Email, PhoneNo, ContactPerson)
VALUES 
    (1, 'Company_1', 'Street_1', 'client1@example.com', '+491230000', 'Contact_1'),
    (2, 'Company_2', 'Street_2', 'client2@example.com', '+491234000', 'Contact_2'),
    (3, 'Company_3', 'Street_3', 'client3@example.com', '+491234500', 'Contact_3'),
    (4, 'Company_4', 'Street_4', 'client4@example.com', '+491234560', 'Contact_4'),
    (5, 'Company_5', 'Street_5', 'client5@example.com', '+491234567', 'Contact_5');

-- Influencers
INSERT INTO Influencers (Influencer_ID, Influencer_Name, Social_Handle, Follower_Count, Contact_Details)
VALUES
    (1, 'Mr. Beast', '@mrbeastofficial', 500000000, 'mr@beast.com'),
    (2, 'Hänno', '@handofblood', 2000000, 'maximilian.knabed@instict3.de'),
    (3, 'Nikocado Avocado', '@real_nikocado', 150, 'therealvegan@gmail.com'),
    (4, 'Bibis Beauty Palace', '@biancaheinicke', 5750000, 'bibi@yahoo.de'),
    (5, 'PewDiePie', '@pewdiepie', 40000000, 'pdp@iusearch.net');

-- Platforms
INSERT INTO Platforms (Platform_ID, Platform_Name, URL, Contact_Person, Contact_Phone, Contact_Email)
VALUES
    (1, 'Meta', 'facebook.com', 'Mark Zuckerberg', '+10199104115101', 'mark@facebook.com'),
    (2, 'Instagram', 'instagram.com', 'Mark Zuckerberg', '+10199104115101', 'mark@facebook.com'),
    (3, 'Tiktok', 'tiktok.cn', 'Xi Jinping', '+861111', 'xi@cccp.cn'),
    (4, 'Google', 'google.com', 'Sundar Pichai', '+10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', 'sundar@google.com'),
    (5, 'mail', 'nigerianprince.com', 'Jerry Smith', '+234567', 'j_jerrysmith@aol.com');

-- Employees
INSERT INTO Employees (Address, Email, Employee_ID, FName, LName, PhoneNo, Supervisor_ID)
VALUES 
    ('Bahnhofstraße 1', 'hans.mueller@gmx.net', 1, 'Hans', 'Müller', '012345678', 1),
    ('Bahnhofstraße 3', 'joergschneider@gmail.com', 2, 'Jörg', 'Schneider', '012345478', 2),
    ('Bahnhofstraße 5', 'georg_kraft@gmx.net', 3, 'Georg', 'Kraft', '012345628', 3),
    ('Bahnhofstraße 4', 'holmirmaneflaschebier@gazprom.ru', 4, 'Gerhard', 'Schröder', '012345678', 4),
    ('Bahnhofstraße 2', 'dermatze@hotmail.com', 5, 'Matthias', 'Geier', '012345378', 5);

-- Campaigns
INSERT INTO Campaigns (Budget, Campaign_ID, Campaign_Name, Client_ID, Employee_ID, EndDate, StartDate)
VALUES 
    (0.0, 5, 'WhatsApp_Nigerian_Prince', 5, 5, '2025-07-20 00:00:00.000', '2025-07-10 00:00:00.000'),
    (40.3, 4, 'Google_MMA_PPV', 4, 4, '2025-07-20 00:00:00.000', '2025-07-10 00:00:00.000'),
    (20.2, 3, 'Tiktok_Dance_Ads', 3, 3, '2025-07-20 00:00:00.000', '2025-07-10 00:00:00.000'),
    (70000.2, 2, 'Meta_ED_Meds', 2, 2, '2025-07-20 00:00:00.000', '2025-07-10 00:00:00.000'),
    (50.02, 1, 'Mail_Spam', 1, 1, '2025-07-20 00:00:00.000', '2025-07-10 00:00:00.000');

-- Advertisements
INSERT INTO Advertisements (Ad_ID, Ad_Name, Budget, Campaign_ID, Duration, Platform_ID, Type)
VALUES
    (1, 'efd_1', 1.7, 2, 2, 1, 'Video'),
    (2, 'feb_2', 6.8, 3, 3, 2, 'Video'),
    (3, 'frg_3', 3.5, 2, 2, 4, 'Video'),
    (4, 'hfj_1', 3.4, 1, 1, 2, 'Video'),
    (5, 'fij_1', 4.8, 1, 4, 2, 'Video');

-- Contents
INSERT INTO Contents (Campaign_ID, Content_ID, Creation_Date, Description, Media_Type, Title)
VALUES
    (2, 1, 'Save up to 30% on all items this spring. Limited time offer!', 'Promotion for spring discounts', 'image', 'Spring Sale Banner'),
    (3, 2, 'Welcome to our platform – here''s what we do and how we can support you.', 'Short intro to our services', 'video', 'Introduction Video'),
    (4, 3, 'Discover 5 proven strategies to stay productive and focused at home.', 'Helpful insights for working from home effectively', 'text', 'Blog: Tips for Remote Work'),
    (2, 4, 'Using your service changed the way I manage my daily tasks!', 'Feedback from a satisfied user', 'audio', 'Customer Testimonial'),
    (2, 5, 'Take our quick quiz to find the perfect product for your needs!', 'Engagement piece to match users with products', 'interactive', 'Interactive Quiz');

-- Payments
INSERT INTO Payments (Amount, Campaign_ID, Date, Payment_Details, Payment_ID, Payment_Type)
VALUES 
    (350, 1, '2025-07-20 00:00:00.000', 'succeed', 1, 'Debit Card'),
    (400, 4, '2025-08-10 00:00:00.000', 'succeed', 2, 'Paypal'),
    (800, 5, '2025-07-12 00:00:00.000', 'succeed', 3, 'Debit Card'),
    (150, 3, '2025-07-14 00:00:00.000', 'succeed', 4, 'Paypal'),
    (340, 2, '2025-07-15 00:00:00.000', 'succeed', 5, 'Debit Card');

-- Metrics
INSERT INTO Metrics (Campaign_ID, Clicks, Conversion_Rate, Engagement, Impressions, Metric_ID)
VALUES 
    (1, 4003, 10, 150, '10000', 1),
    (2, 5678, 5, 456, '15000', 2),
    (3, 532, 20, 675, '7000', 3),
    (4, 4503, 16, 567, '3456', 4),
    (5, 23456, 10, 600, '32456', 5);

-- Campaigns_Influencers (Junction Table)
INSERT INTO Campaigns_Influencers (Match_ID, Campaign_ID, Influencer_ID)
VALUES 
    (1, 1, 1),
    (2, 2, 2),
    (3, 3, 3),
    (4, 4, 4),
    (5, 5, 5);

-- Campaigns_Platforms (Junction Table)
INSERT INTO Campaigns_Platforms (Match_ID, Campaign_ID, Platform_ID)
VALUES 
    (1, 1, 1),
    (2, 2, 2),
    (3, 3, 3),
    (4, 4, 4),
    (5, 5, 5);