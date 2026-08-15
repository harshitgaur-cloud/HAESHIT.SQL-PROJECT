-- ============================================================
-- COVID-19 Data Analytics Project
-- SQL -- Structured Query Language
-- Global Pandemic Response Analysis | 2021
-- ============================================================

-- ============================================================
-- STEP 1: CREATE TABLES
-- ============================================================

CREATE TABLE Covid_Cases (
    Case_ID          INT PRIMARY KEY,
    Country          VARCHAR(50),
    Report_Date      DATE,
    Confirmed_Cases  INT,
    Recovered_Cases  INT,
    Deaths           INT
);

CREATE TABLE Vaccination_Data (
    Vaccination_ID     INT PRIMARY KEY,
    Country            VARCHAR(50),
    Vaccination_Date   DATE,
    Vaccine_Name       VARCHAR(50),
    Doses_Administered INT
);

-- ============================================================
-- STEP 2: INSERT DATA INTO Covid_Cases (50 Records)
-- 10 Countries x 5 Days (Jan 01-05, 2021)
-- Countries: USA, Brazil, India, UK, Russia,
--            France, Germany, Japan, Canada, Australia
-- ============================================================

INSERT INTO Covid_Cases VALUES
-- USA
(1,  'USA',       '2021-01-01', 3500, 2800, 120),
(2,  'USA',       '2021-01-02', 3800, 3000, 135),
(3,  'USA',       '2021-01-03', 4100, 3200, 148),
(4,  'USA',       '2021-01-04', 4300, 3400, 160),
(5,  'USA',       '2021-01-05', 4600, 3600, 175),

-- Brazil
(6,  'Brazil',    '2021-01-01', 3100, 2400, 110),
(7,  'Brazil',    '2021-01-02', 3300, 2600, 122),
(8,  'Brazil',    '2021-01-03', 3600, 2800, 138),
(9,  'Brazil',    '2021-01-04', 3800, 2950, 150),
(10, 'Brazil',    '2021-01-05', 4000, 3100, 162),

-- India
(11, 'India',     '2021-01-01', 1800, 1500, 42),
(12, 'India',     '2021-01-02', 1950, 1620, 45),
(13, 'India',     '2021-01-03', 2100, 1750, 48),
(14, 'India',     '2021-01-04', 2250, 1870, 52),
(15, 'India',     '2021-01-05', 2400, 2000, 55),

-- UK
(16, 'UK',        '2021-01-01', 2200, 1700, 80),
(17, 'UK',        '2021-01-02', 2400, 1850, 88),
(18, 'UK',        '2021-01-03', 2600, 2000, 96),
(19, 'UK',        '2021-01-04', 2750, 2150, 104),
(20, 'UK',        '2021-01-05', 2900, 2300, 112),

-- Russia
(21, 'Russia',    '2021-01-01', 2000, 1600, 72),
(22, 'Russia',    '2021-01-02', 2150, 1720, 78),
(23, 'Russia',    '2021-01-03', 2300, 1850, 84),
(24, 'Russia',    '2021-01-04', 2450, 1970, 90),
(25, 'Russia',    '2021-01-05', 2600, 2100, 96),

-- France
(26, 'France',    '2021-01-01', 1600, 1250, 60),
(27, 'France',    '2021-01-02', 1750, 1370, 66),
(28, 'France',    '2021-01-03', 1900, 1480, 72),
(29, 'France',    '2021-01-04', 2050, 1600, 78),
(30, 'France',    '2021-01-05', 2200, 1720, 84),

-- Germany
(31, 'Germany',   '2021-01-01', 1500, 1180, 55),
(32, 'Germany',   '2021-01-02', 1650, 1300, 60),
(33, 'Germany',   '2021-01-03', 1800, 1420, 65),
(34, 'Germany',   '2021-01-04', 1950, 1540, 70),
(35, 'Germany',   '2021-01-05', 2100, 1660, 75),

-- Japan
(36, 'Japan',     '2021-01-01', 800,  700,  18),
(37, 'Japan',     '2021-01-02', 850,  745,  20),
(38, 'Japan',     '2021-01-03', 900,  790,  22),
(39, 'Japan',     '2021-01-04', 950,  835,  24),
(40, 'Japan',     '2021-01-05', 1000, 880,  26),

-- Canada
(41, 'Canada',    '2021-01-01', 900,  780,  20),
(42, 'Canada',    '2021-01-02', 960,  840,  22),
(43, 'Canada',    '2021-01-03', 1020, 895,  24),
(44, 'Canada',    '2021-01-04', 1080, 950,  26),
(45, 'Canada',    '2021-01-05', 1140, 1005, 28),

-- Australia
(46, 'Australia', '2021-01-01', 700,  620,  15),
(47, 'Australia', '2021-01-02', 740,  655,  16),
(48, 'Australia', '2021-01-03', 780,  690,  17),
(49, 'Australia', '2021-01-04', 820,  725,  18),
(50, 'Australia', '2021-01-05', 860,  760,  19);


-- ============================================================
-- STEP 3: INSERT DATA INTO Vaccination_Data (50 Records)
-- ============================================================

INSERT INTO Vaccination_Data VALUES
-- USA
(1,  'USA',       '2021-01-01', 'Pfizer',   2800),
(2,  'USA',       '2021-01-02', 'Pfizer',   3100),
(3,  'USA',       '2021-01-03', 'Moderna',  3300),
(4,  'USA',       '2021-01-04', 'Moderna',  3500),
(5,  'USA',       '2021-01-05', 'Pfizer',   3700),

-- Brazil
(6,  'Brazil',    '2021-01-01', 'Sinovac',  2500),
(7,  'Brazil',    '2021-01-02', 'Sinovac',  2700),
(8,  'Brazil',    '2021-01-03', 'AZ',       2900),
(9,  'Brazil',    '2021-01-04', 'AZ',       3100),
(10, 'Brazil',    '2021-01-05', 'Sinovac',  3300),

-- India
(11, 'India',     '2021-01-01', 'Covaxin',  1500),
(12, 'India',     '2021-01-02', 'Covaxin',  1650),
(13, 'India',     '2021-01-03', 'Covishield',1800),
(14, 'India',     '2021-01-04', 'Covishield',1950),
(15, 'India',     '2021-01-05', 'Covaxin',  2100),

-- UK
(16, 'UK',        '2021-01-01', 'AZ',       1800),
(17, 'UK',        '2021-01-02', 'AZ',       1950),
(18, 'UK',        '2021-01-03', 'Pfizer',   2100),
(19, 'UK',        '2021-01-04', 'Pfizer',   2250),
(20, 'UK',        '2021-01-05', 'AZ',       2400),

-- Russia
(21, 'Russia',    '2021-01-01', 'Sputnik V',1700),
(22, 'Russia',    '2021-01-02', 'Sputnik V',1850),
(23, 'Russia',    '2021-01-03', 'Sputnik V',2000),
(24, 'Russia',    '2021-01-04', 'Sputnik V',2150),
(25, 'Russia',    '2021-01-05', 'Sputnik V',2300),

-- France
(26, 'France',    '2021-01-01', 'Pfizer',   1300),
(27, 'France',    '2021-01-02', 'Pfizer',   1450),
(28, 'France',    '2021-01-03', 'Moderna',  1600),
(29, 'France',    '2021-01-04', 'Moderna',  1750),
(30, 'France',    '2021-01-05', 'Pfizer',   1900),

-- Germany
(31, 'Germany',   '2021-01-01', 'Pfizer',   1200),
(32, 'Germany',   '2021-01-02', 'Pfizer',   1350),
(33, 'Germany',   '2021-01-03', 'Moderna',  1500),
(34, 'Germany',   '2021-01-04', 'Moderna',  1650),
(35, 'Germany',   '2021-01-05', 'AZ',       1800),

-- Japan
(36, 'Japan',     '2021-01-01', 'Pfizer',   650),
(37, 'Japan',     '2021-01-02', 'Pfizer',   700),
(38, 'Japan',     '2021-01-03', 'Moderna',  750),
(39, 'Japan',     '2021-01-04', 'Moderna',  800),
(40, 'Japan',     '2021-01-05', 'Pfizer',   850),

-- Canada
(41, 'Canada',    '2021-01-01', 'Pfizer',   750),
(42, 'Canada',    '2021-01-02', 'Pfizer',   820),
(43, 'Canada',    '2021-01-03', 'Moderna',  890),
(44, 'Canada',    '2021-01-04', 'Moderna',  960),
(45, 'Canada',    '2021-01-05', 'Pfizer',   1030),

-- Australia
(46, 'Australia', '2021-01-01', 'AZ',       580),
(47, 'Australia', '2021-01-02', 'AZ',       620),
(48, 'Australia', '2021-01-03', 'Pfizer',   660),
(49, 'Australia', '2021-01-04', 'Pfizer',   700),
(50, 'Australia', '2021-01-05', 'AZ',       740);


-- ============================================================
-- STEP 4: SQL ANALYSES
-- ============================================================

-- -------------------------------------------------------
-- Analysis 1: Deaths Filter — India (< 50)
-- PROBLEM: Find all records from India where deaths < 50
-- LOGIC: Filter Covid_Cases by country = 'INDIA' and deaths < 50
-- -------------------------------------------------------

SELECT COUNTRY, DEATHS
FROM Covid_Cases
WHERE Country = 'India' AND DEATHS < 50;


-- -------------------------------------------------------
-- Analysis 2: Total Confirmed Cases by Country
-- PROBLEM: Total count of confirmed case records per country (descending)
-- LOGIC: COUNT confirmed_cases grouped by country
-- -------------------------------------------------------

SELECT COUNTRY, COUNT(CONFIRMED_CASES) AS TOTAL_CONFIRMED_CASE
FROM Covid_Cases
GROUP BY COUNTRY
ORDER BY TOTAL_CONFIRMED_CASE DESC;


-- -------------------------------------------------------
-- Analysis 3: Total Cases, Recovered & Deaths by Country
-- PROBLEM: Total confirmed, recovered, death counts per country
-- LOGIC: SUM all three metrics grouped by country
-- -------------------------------------------------------

SELECT COUNTRY,
    SUM(CONFIRMED_CASES) AS TOTAL_CONFIRMED,
    SUM(RECOVERED_CASES) AS TOTAL_RECOVERED,
    SUM(DEATHS)          AS TOTAL_DEATHS
FROM Covid_Cases
GROUP BY COUNTRY
ORDER BY TOTAL_CONFIRMED DESC;


-- -------------------------------------------------------
-- Analysis 4: Countries Where Doses < Confirmed Cases
-- PROBLEM: Countries where total doses administered < total confirmed cases
-- LOGIC: JOIN both tables on country, compare SUM of doses vs cases
-- -------------------------------------------------------

SELECT CC.COUNTRY,
    SUM(DOSES_ADMINISTERED) AS TOTAL_DOSES,
    SUM(CONFIRMED_CASES)    AS TOTAL_CONFIRMED
FROM Covid_Cases AS CC
JOIN Vaccination_Data AS VD ON CC.Country = VD.Country
GROUP BY CC.Country
HAVING SUM(DOSES_ADMINISTERED) < SUM(CONFIRMED_CASES)
ORDER BY TOTAL_DOSES DESC;


-- -------------------------------------------------------
-- Analysis 5: Country Risk Classification by Deaths
-- PROBLEM: Classify each country as HIGH / MEDIUM / LOW risk
-- LOGIC: SUM deaths, apply CASE WHEN thresholds (>100 HIGH, 50-100 MEDIUM, <50 LOW)
-- -------------------------------------------------------

SELECT COUNTRY,
    SUM(DEATHS) AS TOTAL_DEATHS,
    CASE
        WHEN SUM(DEATHS) > 100  THEN 'HIGH'
        WHEN SUM(DEATHS) BETWEEN 50 AND 100 THEN 'MEDIUM'
        WHEN SUM(DEATHS) < 50   THEN 'LOW'
        ELSE 'NON'
    END AS DEATHS_RANK
FROM Covid_Cases
GROUP BY COUNTRY;


-- ============================================================
-- STEP 5: STORED PROCEDURE
-- ADD_CASE — Automates insertion of new COVID records
-- ============================================================

CREATE PROCEDURE ADD_CASE
    @case_id         INT,
    @country         VARCHAR(50),
    @report_date     DATE,
    @confirmed_cases INT,
    @recovered_cases INT,
    @deaths          INT
AS BEGIN
    INSERT INTO Covid_Cases VALUES
    (
        @case_id,
        @country,
        @report_date,
        @confirmed_cases,
        @recovered_cases,
        @deaths
    )
END;

-- Execute Example:
EXEC ADD_CASE 51, 'India', '2022-01-01', 300, 150, 22;


-- ============================================================
-- END OF COVID-19 DATA ANALYTICS PROJECT
-- ============================================================
