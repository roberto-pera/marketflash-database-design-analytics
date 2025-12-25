-- ============================================
-- Core Entity Tables
-- ============================================

-- Clients Table
CREATE TABLE "Clients" (
    "Client_ID" INTEGER PRIMARY KEY,
    "CompanyName" TEXT,
    "Address" TEXT,
    "Email" TEXT,
    "PhoneNo" TEXT,
    "ContactPerson" TEXT
);

-- Influencers Table
CREATE TABLE "Influencers" (
    "Influencer_ID" INTEGER PRIMARY KEY,
    "Influencer_Name" TEXT,
    "Social_Handle" TEXT,
    "Follower_Count" INTEGER,
    "Contact_Details" TEXT
);

-- Platforms Table
CREATE TABLE "Platforms" (
    "Platform_ID" INTEGER PRIMARY KEY,
    "Platform_Name" TEXT,
    "URL" TEXT,
    "Contact_Person" TEXT,
    "Contact_Phone" TEXT,
    "Contact_Email" TEXT
);

-- Employees Table
CREATE TABLE "Employees" (
    "Employee_ID" INTEGER PRIMARY KEY,
    "FName" TEXT,
    "LName" TEXT,
    "Address" TEXT,
    "Email" TEXT,
    "PhoneNo" TEXT,
    "Supervisor_ID" INTEGER NOT NULL,
    FOREIGN KEY ("Supervisor_ID") REFERENCES "Employees"("Employee_ID")
);

-- ============================================
-- Campaign-Related Tables
-- ============================================

-- Campaigns Table
CREATE TABLE "Campaigns" (
    "Campaign_ID" INTEGER PRIMARY KEY,
    "Campaign_Name" TEXT,
    "StartDate" TEXT,
    "EndDate" TEXT,
    "Budget" REAL,
    "Client_ID" INTEGER NOT NULL,
    "Employee_ID" INTEGER NOT NULL,
    FOREIGN KEY ("Client_ID") REFERENCES "Clients"("Client_ID"),
    FOREIGN KEY ("Employee_ID") REFERENCES "Employees"("Employee_ID")
);

-- Contents Table
CREATE TABLE "Contents" (
    "Content_ID" INTEGER PRIMARY KEY,
    "Title" TEXT,
    "Description" TEXT,
    "Media_Type" TEXT,
    "Creation_Date" TEXT,
    "Campaign_ID" INTEGER NOT NULL,
    FOREIGN KEY ("Campaign_ID") REFERENCES "Campaigns"("Campaign_ID")
);

-- Payments Table
CREATE TABLE "Payments" (
    "Payment_ID" INTEGER PRIMARY KEY,
    "Date" TEXT,
    "Amount" REAL,
    "Payment_Type" TEXT,
    "Payment_Details" TEXT,
    "Campaign_ID" INTEGER NOT NULL,
    FOREIGN KEY ("Campaign_ID") REFERENCES "Campaigns"("Campaign_ID")
);

-- Metrics Table
CREATE TABLE "Metrics" (
    "Metric_ID" INTEGER PRIMARY KEY,
    "Impressions" INTEGER,
    "Clicks" INTEGER,
    "Engagement" INTEGER,
    "Conversion_Rate" REAL,
    "Campaign_ID" INTEGER NOT NULL UNIQUE,
    FOREIGN KEY ("Campaign_ID") REFERENCES "Campaigns"("Campaign_ID")
);

-- Advertisements Table
CREATE TABLE "Advertisements" (
    "Ad_ID" INTEGER PRIMARY KEY,
    "Ad_Name" TEXT,
    "Type" TEXT,
    "Duration" INTEGER,
    "Budget" REAL,
    "Campaign_ID" INTEGER NOT NULL,
    "Platform_ID" INTEGER NOT NULL,
    FOREIGN KEY ("Campaign_ID") REFERENCES "Campaigns"("Campaign_ID"),
    FOREIGN KEY ("Platform_ID") REFERENCES "Platforms"("Platform_ID")
);

-- ============================================
-- Junction Tables (Many-to-Many Relationships)
-- ============================================

-- Campaigns_Platforms Junction Table
CREATE TABLE "Campaigns_Platforms" (
    "Match_ID" INTEGER PRIMARY KEY,
    "Campaign_ID" INTEGER NOT NULL,
    "Platform_ID" INTEGER NOT NULL,
    FOREIGN KEY ("Campaign_ID") REFERENCES "Campaigns"("Campaign_ID"),
    FOREIGN KEY ("Platform_ID") REFERENCES "Platforms"("Platform_ID")
);

-- Campaigns_Influencers Junction Table
CREATE TABLE "Campaigns_Influencers" (
    "Match_ID" INTEGER PRIMARY KEY,
    "Campaign_ID" INTEGER NOT NULL,
    "Influencer_ID" INTEGER NOT NULL,
    FOREIGN KEY ("Campaign_ID") REFERENCES "Campaigns"("Campaign_ID"),
    FOREIGN KEY ("Influencer_ID") REFERENCES "Influencers"("Influencer_ID")
);
