-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 19, 2025 at 10:41 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realestatedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenity`
--

CREATE TABLE `amenity` (
  `AmenityID` int NOT NULL,
  `PropertyID` int NOT NULL,
  `AmenityName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'N/A',
  `AmenityType` varchar(255) NOT NULL,
  `AmenityDescription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `amenity`
--

INSERT INTO `amenity` (`AmenityID`, `PropertyID`, `AmenityName`, `AmenityType`, `AmenityDescription`) VALUES
(1, 1, 'Swimming Pool', 'Outdoor', 'Large outdoor pool with heating'),
(2, 1, 'Gym', 'Fitness', 'Fully equipped fitness center with trainers'),
(3, 2, 'Parking', 'Facility', 'Underground secured parking for residents'),
(4, 2, 'Security', 'Safety', '24/7 security with CCTV monitoring'),
(5, 3, 'Garden', 'Outdoor', 'Beautifully landscaped garden with walking paths'),
(6, 4, 'Elevator', 'Convenience', 'High-speed elevator access to all floors'),
(7, 4, 'Smart Home System', 'Technology', 'Automated lighting and security system'),
(8, 5, 'Clubhouse', 'Community', 'Community clubhouse with event space'),
(9, 5, 'Playground', 'Outdoor', 'Children’s playground with modern equipment'),
(10, 3, 'Fireplace', 'Indoor', 'Indoor fireplace for cozy winter evenings');

-- --------------------------------------------------------

--
-- Table structure for table `defect`
--

CREATE TABLE `defect` (
  `DefectID` int NOT NULL,
  `ReportID` int NOT NULL,
  `DefectName` varchar(255) NOT NULL,
  `DefectType` varchar(255) NOT NULL,
  `RepairRecommendation` varchar(255) NOT NULL,
  `EstimatedCost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `defect`
--

INSERT INTO `defect` (`DefectID`, `ReportID`, `DefectName`, `DefectType`, `RepairRecommendation`, `EstimatedCost`) VALUES
(1, 1, 'Cracked Wall', 'Structural', 'Reinforce with concrete', 500),
(2, 2, 'Leaking Pipe', 'Plumbing', 'Replace damaged section', 200),
(3, 3, 'Broken Window', 'Glass', 'Replace window panel', 150),
(4, 4, 'Electrical Short', 'Electrical', 'Rewire affected circuit', 300),
(5, 5, 'Roof Leak', 'Structural', 'Apply waterproof sealant', 450);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeID` int NOT NULL,
  `FirmID` int NOT NULL,
  `EmployeeFname` varchar(255) NOT NULL,
  `EmployeeLname` varchar(255) NOT NULL,
  `EmployeeEmail` varchar(255) NOT NULL,
  `EmployeeContactNum` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmployeeID`, `FirmID`, `EmployeeFname`, `EmployeeLname`, `EmployeeEmail`, `EmployeeContactNum`) VALUES
(1, 1, 'John', 'Doe', 'johndoe@eliterealty.com', '1234567890'),
(2, 2, 'Jane', 'Smith', 'janesmith@sunriseproperties.com', '9876543210'),
(3, 3, 'Michael', 'Brown', 'michaelbrown@greenfieldestate.com', '5551234567'),
(4, 4, 'Emily', 'Davis', 'emilydavis@urbanliving.com', '4449876543'),
(5, 5, 'Daniel', 'Wilson', 'danielwilson@summithomes.com', '3332221111'),
(6, 1, 'Olivia', 'Martinez', 'oliviamartinez@eliterealty.com', '6667778888'),
(7, 2, 'William', 'Anderson', 'williamanderson@sunriseproperties.com', '2223334444'),
(8, 3, 'Sophia', 'Taylor', 'sophiataylor@greenfieldestate.com', '9998887777'),
(9, 4, 'James', 'Harris', 'jamesharris@urbanliving.com', '1112223333'),
(10, 5, 'Ava', 'Clark', 'avaclark@summithomes.com', '5556667777');

-- --------------------------------------------------------

--
-- Table structure for table `firm`
--

CREATE TABLE `firm` (
  `FirmID` int NOT NULL,
  `FirmName` varchar(255) NOT NULL,
  `FirmEmail` varchar(255) NOT NULL,
  `FirmContactNum` varchar(15) DEFAULT NULL,
  `FirmMailingNumber` int NOT NULL,
  `FirmMailingStreet` varchar(255) NOT NULL,
  `FirmMailingDistrict` varchar(255) NOT NULL,
  `FirmMailingZipcode` int NOT NULL,
  `FirmMailingState` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `firm`
--

INSERT INTO `firm` (`FirmID`, `FirmName`, `FirmEmail`, `FirmContactNum`, `FirmMailingNumber`, `FirmMailingStreet`, `FirmMailingDistrict`, `FirmMailingZipcode`, `FirmMailingState`) VALUES
(1, 'Elite Realty', 'contact@eliterealty.com', '017-5551234', 12, 'Main Street', 'Central District', 10010, 'New York'),
(2, 'Sunrise Properties', 'info@sunriseprop.com', '018-4445678', 45, 'Broadway Avenue', 'West End', 20020, 'California'),
(3, 'Greenfield Estate', 'support@greenfield.com', '019-3336789', 78, 'Park Lane', 'Eastwood', 30030, 'Texas'),
(4, 'Urban Living', 'sales@urbanliving.com', '016-2227890', 101, 'Downtown Street', 'Northside', 40040, 'Florida'),
(5, 'Summit Homes', 'hello@summithomes.com', '015-1118901', 202, 'Sunset Boulevard', 'Southgate', 50050, 'Illinois');

-- --------------------------------------------------------

--
-- Table structure for table `inspection`
--

CREATE TABLE `inspection` (
  `InspectionID` int NOT NULL,
  `PropertyID` int NOT NULL,
  `InspectorID` int NOT NULL,
  `InspectionDate` date NOT NULL,
  `InspectionName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inspection`
--

INSERT INTO `inspection` (`InspectionID`, `PropertyID`, `InspectorID`, `InspectionDate`, `InspectionName`) VALUES
(1, 1, 6, '2024-03-01', 'Routine Safety Check'),
(2, 2, 7, '2024-03-05', 'Structural Integrity Assessment'),
(3, 3, 9, '2024-03-10', 'Electrical System Evaluation'),
(4, 4, 8, '2024-03-15', 'Plumbing Inspection'),
(5, 5, 6, '2024-03-20', 'Fire Hazard Assessment');

-- --------------------------------------------------------

--
-- Table structure for table `inspectionreport`
--

CREATE TABLE `inspectionreport` (
  `ReportID` int NOT NULL,
  `InspectionID` int NOT NULL,
  `ReportDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inspectionreport`
--

INSERT INTO `inspectionreport` (`ReportID`, `InspectionID`, `ReportDate`) VALUES
(1, 1, '2024-03-02'),
(2, 2, '2024-03-06'),
(3, 3, '2024-03-11'),
(4, 4, '2024-03-16'),
(5, 5, '2024-03-21');

-- --------------------------------------------------------

--
-- Table structure for table `inspector`
--

CREATE TABLE `inspector` (
  `InspectorID` int NOT NULL,
  `InspectorFname` varchar(255) NOT NULL,
  `InspectorLname` varchar(255) NOT NULL,
  `InspectorEmail` varchar(255) NOT NULL,
  `InspectorPhoneNumber` varchar(255) NOT NULL,
  `CertificationNumber` int NOT NULL,
  `CompanyName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inspector`
--

INSERT INTO `inspector` (`InspectorID`, `InspectorFname`, `InspectorLname`, `InspectorEmail`, `InspectorPhoneNumber`, `CertificationNumber`, `CompanyName`) VALUES
(6, 'David', 'Miller', 'davidmiller@inspectpro.com', '1234567890', 1001, 'InspectPro'),
(7, 'Sarah', 'Johnson', 'sarahjohnson@safeguard.com', '9876543210', 1002, 'SafeGuard'),
(8, 'James', 'Anderson', 'jamesanderson@qualitycheck.com', '5551234567', 1003, 'QualityCheck'),
(9, 'Emily', 'Davis', 'emilydavis@secureinspections.com', '4449876543', 1004, 'SecureInspections'),
(10, 'Michael', 'Brown', 'michaelbrown@inspectmax.com', '3332221111', 1005, 'InspectMax');

-- --------------------------------------------------------

--
-- Table structure for table `lease`
--

CREATE TABLE `lease` (
  `LeaseID` int NOT NULL,
  `OwnerID` int NOT NULL,
  `TenantID` int NOT NULL,
  `LeaseStartDate` date NOT NULL,
  `LeaseEndDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `lease`
--

INSERT INTO `lease` (`LeaseID`, `OwnerID`, `TenantID`, `LeaseStartDate`, `LeaseEndDate`) VALUES
(1, 1, 1, '2024-01-01', '2024-12-31'),
(2, 2, 2, '2023-06-15', '2025-06-14'),
(3, 3, 3, '2024-03-01', '2024-09-01'),
(4, 4, 4, '2022-11-10', '2024-11-09'),
(5, 5, 5, '2023-08-20', '2024-08-19');

-- --------------------------------------------------------

--
-- Table structure for table `maintenancejob`
--

CREATE TABLE `maintenancejob` (
  `JobID` int NOT NULL,
  `VendorID` int NOT NULL,
  `RequestID` int NOT NULL,
  `JobDate` date NOT NULL,
  `CompletionDate` date DEFAULT NULL,
  `Cost` float NOT NULL,
  `JobDescription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `maintenancejob`
--

INSERT INTO `maintenancejob` (`JobID`, `VendorID`, `RequestID`, `JobDate`, `CompletionDate`, `Cost`, `JobDescription`) VALUES
(1, 1, 1, '2024-03-01', '2024-03-05', 250, 'Plumbing repair at Property 1'),
(2, 2, 2, '2024-03-02', '2024-03-06', 180.5, 'Electrical wiring fix at Property 2'),
(3, 3, 3, '2024-03-03', '2024-03-07', 90.75, 'Pest control at Property 3'),
(4, 4, 4, '2024-03-04', '2024-03-08', 320, 'Roof maintenance at Property 4'),
(5, 5, 5, '2024-03-05', '2024-03-09', 145.3, 'Painting work at Property 5');

-- --------------------------------------------------------

--
-- Table structure for table `maintenancerequest`
--

CREATE TABLE `maintenancerequest` (
  `RequestID` int NOT NULL,
  `PropertyID` int NOT NULL,
  `TenantID` int NOT NULL,
  `RequestDate` date NOT NULL,
  `RequestStatus` varchar(255) NOT NULL,
  `RequestDescription` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `maintenancerequest`
--

INSERT INTO `maintenancerequest` (`RequestID`, `PropertyID`, `TenantID`, `RequestDate`, `RequestStatus`, `RequestDescription`) VALUES
(1, 1, 1, '2024-02-01', 'Pending', 'Leaking faucet in the kitchen'),
(2, 2, 2, '2024-02-10', 'In Progress', 'Heating system malfunctioning'),
(3, 3, 3, '2024-02-15', 'Completed', 'Broken window in the living room'),
(4, 4, 4, '2024-03-01', 'Pending', 'Pest control request'),
(5, 5, 5, '2024-03-05', 'In Progress', 'Air conditioning unit not cooling properly');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `ManagerID` int NOT NULL,
  `FirmID` int NOT NULL,
  `ManagerFname` varchar(255) NOT NULL,
  `ManagerLname` varchar(255) NOT NULL,
  `ManagerEmail` varchar(255) NOT NULL,
  `ManagerContactNum` varchar(15) DEFAULT NULL,
  `ManagerMailingNumber` int NOT NULL,
  `ManagerMailingStreet` varchar(255) NOT NULL,
  `ManagerMailingDistrict` varchar(255) NOT NULL,
  `ManagerMailingZipcode` int NOT NULL,
  `ManagerMailingState` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`ManagerID`, `FirmID`, `ManagerFname`, `ManagerLname`, `ManagerEmail`, `ManagerContactNum`, `ManagerMailingNumber`, `ManagerMailingStreet`, `ManagerMailingDistrict`, `ManagerMailingZipcode`, `ManagerMailingState`) VALUES
(1, 1, 'John', 'Doe', 'johndoe@eliterealty.com', '017-7771234', 12, 'Main Street', 'Central District', 10010, 'New York'),
(2, 2, 'Alice', 'Smith', 'alicesmith@sunriseprop.com', '018-6665678', 45, 'Broadway Avenue', 'West End', 20020, 'California'),
(3, 3, 'Robert', 'Brown', 'robertbrown@greenfield.com', '019-5556789', 78, 'Park Lane', 'Eastwood', 30030, 'Texas'),
(4, 4, 'Jessica', 'Williams', 'jessicaw@urbanliving.com', '016-4447890', 101, 'Downtown Street', 'Northside', 40040, 'Florida'),
(5, 5, 'Michael', 'Johnson', 'michaelj@summithomes.com', '015-3338901', 202, 'Sunset Boulevard', 'Southgate', 50050, 'Illinois');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `OwnerID` int NOT NULL,
  `OwnerFname` varchar(255) NOT NULL,
  `OwnerLname` varchar(255) NOT NULL,
  `OwnerEmail` varchar(255) NOT NULL,
  `OwnerContactNum` varchar(15) DEFAULT NULL,
  `OwnerMailingNumber` int NOT NULL,
  `OwnerMailingStreet` varchar(255) NOT NULL,
  `OwnerMailingDistrict` varchar(255) NOT NULL,
  `OwnerMailingZipcode` int NOT NULL,
  `OwnerMailingState` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`OwnerID`, `OwnerFname`, `OwnerLname`, `OwnerEmail`, `OwnerContactNum`, `OwnerMailingNumber`, `OwnerMailingStreet`, `OwnerMailingDistrict`, `OwnerMailingZipcode`, `OwnerMailingState`) VALUES
(1, 'John', 'Doe', 'johndoe@example.com', '012-3456789', 123, 'Maple Street', 'Downtown', 10001, 'New York'),
(2, 'Jane', 'Smith', 'janesmith@example.com', '013-9876543', 456, 'Oak Avenue', 'Westside', 20002, 'California'),
(3, 'Michael', 'Johnson', 'michaelj@example.com', '014-5671234', 789, 'Pine Road', 'Eastwood', 30003, 'Texas'),
(4, 'Emily', 'Brown', 'emilyb@example.com', '015-3217890', 321, 'Cedar Lane', 'Northpoint', 40004, 'Florida'),
(5, 'David', 'Wilson', 'davidw@example.com', '016-6543210', 654, 'Birch Drive', 'Southgate', 50005, 'Illinois');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `PropertyID` int NOT NULL,
  `OwnerID` int NOT NULL,
  `ManagerID` int NOT NULL,
  `PropertyName` varchar(255) NOT NULL,
  `PropertyNumber` varchar(210) NOT NULL,
  `PropertyStreet` varchar(255) NOT NULL,
  `PropertyDistrict` varchar(255) NOT NULL,
  `PropertyZipcode` int NOT NULL,
  `PropertyState` varchar(255) NOT NULL,
  `PropertyType` varchar(255) NOT NULL,
  `PurchaseDate` date NOT NULL,
  `PurchasePrice` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`PropertyID`, `OwnerID`, `ManagerID`, `PropertyName`, `PropertyNumber`, `PropertyStreet`, `PropertyDistrict`, `PropertyZipcode`, `PropertyState`, `PropertyType`, `PurchaseDate`, `PurchasePrice`) VALUES
(1, 1, 1, 'Sunrise Villa', '101', 'Palm Street', 'Central District', 10010, 'New York', 'Residential', '2022-05-10', 500000),
(2, 2, 2, 'Oceanview Condo', '202', 'Bay Avenue', 'West End', 20020, 'California', 'Condominium', '2021-08-15', 750000),
(3, 3, 3, 'Greenfield Bungalow', '303', 'Maple Road', 'Eastwood', 30030, 'Texas', 'Bungalow', '2023-01-20', 620000),
(4, 4, 4, 'Downtown Loft', '404', 'Main Street', 'Northside', 40040, 'Florida', 'Apartment', '2020-12-05', 450000),
(5, 5, 5, 'Summit Residence', '505', 'Hilltop Drive', 'Southgate', 50050, 'Illinois', 'Residential', '2022-09-30', 800000);

-- --------------------------------------------------------

--
-- Table structure for table `tenant`
--

CREATE TABLE `tenant` (
  `TenantID` int NOT NULL,
  `PropertyID` int NOT NULL,
  `TenantFname` varchar(255) NOT NULL,
  `TenantLname` varchar(255) NOT NULL,
  `TenantEmail` varchar(255) NOT NULL,
  `TenantContactNum` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tenant`
--

INSERT INTO `tenant` (`TenantID`, `PropertyID`, `TenantFname`, `TenantLname`, `TenantEmail`, `TenantContactNum`) VALUES
(1, 1, 'Alice', 'Johnson', 'alicejohnson@example.com', '1234567890'),
(2, 2, 'Bob', 'Williams', 'bobwilliams@example.com', '9876543210'),
(3, 3, 'Charlie', 'Brown', 'charliebrown@example.com', '5551234567'),
(4, 4, 'Daisy', 'Miller', 'daisymiller@example.com', '4449876543'),
(5, 5, 'Ethan', 'Wilson', 'ethanwilson@example.com', '3332221111');

-- --------------------------------------------------------

--
-- Table structure for table `utilitybill`
--

CREATE TABLE `utilitybill` (
  `BillID` int NOT NULL,
  `PropertyID` int NOT NULL,
  `MeterID` int NOT NULL,
  `BillDate` date NOT NULL,
  `BillAmount` float NOT NULL,
  `BillDueDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `utilitybill`
--

INSERT INTO `utilitybill` (`BillID`, `PropertyID`, `MeterID`, `BillDate`, `BillAmount`, `BillDueDate`) VALUES
(1, 1, 1, '2024-03-01', 150.75, '2024-03-15'),
(2, 2, 2, '2024-03-02', 85.2, '2024-03-16'),
(3, 3, 3, '2024-03-03', 42.7, '2024-03-17'),
(4, 4, 4, '2024-03-04', 175.3, '2024-03-18'),
(5, 5, 5, '2024-03-05', 95.3, '2024-03-19');

-- --------------------------------------------------------

--
-- Table structure for table `utilitymeter`
--

CREATE TABLE `utilitymeter` (
  `MeterID` int NOT NULL,
  `PropertyID` int NOT NULL,
  `MeterType` varchar(255) NOT NULL,
  `MeterReader` float NOT NULL,
  `ReadingDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `utilitymeter`
--

INSERT INTO `utilitymeter` (`MeterID`, `PropertyID`, `MeterType`, `MeterReader`, `ReadingDate`) VALUES
(1, 1, 'Electric', 120.5, '2024-03-01'),
(2, 2, 'Water', 85.2, '2024-03-02'),
(3, 3, 'Gas', 42.7, '2024-03-03'),
(4, 4, 'Electric', 150.9, '2024-03-04'),
(5, 5, 'Water', 95.3, '2024-03-05');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `VendorID` int NOT NULL,
  `VendorName` varchar(255) NOT NULL,
  `VendorContactPerson` varchar(255) NOT NULL,
  `VendorPhoneNumber` varchar(255) NOT NULL,
  `VendorDescription` varchar(255) DEFAULT NULL,
  `ServiceProvided` varchar(255) NOT NULL,
  `VendorNumber` varchar(255) NOT NULL,
  `VendorStreet` varchar(255) NOT NULL,
  `VendorDistrict` varchar(255) NOT NULL,
  `VendorZipcode` int NOT NULL,
  `VendorState` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`VendorID`, `VendorName`, `VendorContactPerson`, `VendorPhoneNumber`, `VendorDescription`, `ServiceProvided`, `VendorNumber`, `VendorStreet`, `VendorDistrict`, `VendorZipcode`, `VendorState`) VALUES
(1, 'FixIt Plumbing', 'John Doe', '012-3456789', 'Expert plumbing services', 'Plumbing', '12A', 'Main Street', 'Central', 56000, 'Selangor'),
(2, 'Spark Electric', 'Jane Smith', '013-9876543', 'Reliable electrical repairs', 'Electrical', '22B', 'Highway Road', 'North', 43000, 'Kuala Lumpur'),
(3, 'Perfect Paints', 'Ali Hassan', '017-1122334', 'High-quality painting services', 'Painting', '5C', 'Color Avenue', 'West', 51000, 'Selangor'),
(4, 'Safe Locks', 'Siti Rahman', '019-9988776', 'Security and locksmith solutions', 'Locksmith', '33D', 'Security Lane', 'East', 52000, 'Kuala Lumpur'),
(5, 'GreenScape', 'Michael Tan', '018-5544332', 'Professional landscaping', 'Landscaping', '44E', 'Garden Street', 'South', 57000, 'Selangor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amenity`
--
ALTER TABLE `amenity`
  ADD PRIMARY KEY (`AmenityID`),
  ADD KEY `PropertyID` (`PropertyID`);

--
-- Indexes for table `defect`
--
ALTER TABLE `defect`
  ADD PRIMARY KEY (`DefectID`),
  ADD KEY `ReportID` (`ReportID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeID`),
  ADD UNIQUE KEY `EmployeeEmail` (`EmployeeEmail`),
  ADD KEY `fk_firm_employee` (`FirmID`);

--
-- Indexes for table `firm`
--
ALTER TABLE `firm`
  ADD PRIMARY KEY (`FirmID`),
  ADD UNIQUE KEY `FirmEmail` (`FirmEmail`);

--
-- Indexes for table `inspection`
--
ALTER TABLE `inspection`
  ADD PRIMARY KEY (`InspectionID`),
  ADD KEY `PropertyID` (`PropertyID`),
  ADD KEY `InspectorID` (`InspectorID`);

--
-- Indexes for table `inspectionreport`
--
ALTER TABLE `inspectionreport`
  ADD PRIMARY KEY (`ReportID`),
  ADD KEY `InspectionID` (`InspectionID`);

--
-- Indexes for table `inspector`
--
ALTER TABLE `inspector`
  ADD PRIMARY KEY (`InspectorID`);

--
-- Indexes for table `lease`
--
ALTER TABLE `lease`
  ADD PRIMARY KEY (`LeaseID`),
  ADD KEY `OwnerID` (`OwnerID`),
  ADD KEY `TenantID` (`TenantID`);

--
-- Indexes for table `maintenancejob`
--
ALTER TABLE `maintenancejob`
  ADD PRIMARY KEY (`JobID`),
  ADD KEY `VendorID` (`VendorID`),
  ADD KEY `RequestID` (`RequestID`);

--
-- Indexes for table `maintenancerequest`
--
ALTER TABLE `maintenancerequest`
  ADD PRIMARY KEY (`RequestID`),
  ADD KEY `PropertyID` (`PropertyID`),
  ADD KEY `TenantID` (`TenantID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`ManagerID`),
  ADD UNIQUE KEY `ManagerEmail` (`ManagerEmail`),
  ADD KEY `FirmID` (`FirmID`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`OwnerID`),
  ADD UNIQUE KEY `OwnerEmail` (`OwnerEmail`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`PropertyID`),
  ADD KEY `OwnerID` (`OwnerID`),
  ADD KEY `ManagerID` (`ManagerID`);

--
-- Indexes for table `tenant`
--
ALTER TABLE `tenant`
  ADD PRIMARY KEY (`TenantID`),
  ADD UNIQUE KEY `TenantEmail` (`TenantEmail`),
  ADD KEY `PropertyID` (`PropertyID`);

--
-- Indexes for table `utilitybill`
--
ALTER TABLE `utilitybill`
  ADD PRIMARY KEY (`BillID`),
  ADD KEY `PropertyID` (`PropertyID`),
  ADD KEY `MeterID` (`MeterID`);

--
-- Indexes for table `utilitymeter`
--
ALTER TABLE `utilitymeter`
  ADD PRIMARY KEY (`MeterID`),
  ADD KEY `PropertyID` (`PropertyID`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`VendorID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amenity`
--
ALTER TABLE `amenity`
  MODIFY `AmenityID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `defect`
--
ALTER TABLE `defect`
  MODIFY `DefectID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EmployeeID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `firm`
--
ALTER TABLE `firm`
  MODIFY `FirmID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inspection`
--
ALTER TABLE `inspection`
  MODIFY `InspectionID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inspectionreport`
--
ALTER TABLE `inspectionreport`
  MODIFY `ReportID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inspector`
--
ALTER TABLE `inspector`
  MODIFY `InspectorID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lease`
--
ALTER TABLE `lease`
  MODIFY `LeaseID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `maintenancejob`
--
ALTER TABLE `maintenancejob`
  MODIFY `JobID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `maintenancerequest`
--
ALTER TABLE `maintenancerequest`
  MODIFY `RequestID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `ManagerID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `OwnerID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `PropertyID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tenant`
--
ALTER TABLE `tenant`
  MODIFY `TenantID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `utilitybill`
--
ALTER TABLE `utilitybill`
  MODIFY `BillID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `utilitymeter`
--
ALTER TABLE `utilitymeter`
  MODIFY `MeterID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `VendorID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `amenity`
--
ALTER TABLE `amenity`
  ADD CONSTRAINT `amenity_ibfk_1` FOREIGN KEY (`PropertyID`) REFERENCES `property` (`PropertyID`);

--
-- Constraints for table `defect`
--
ALTER TABLE `defect`
  ADD CONSTRAINT `defect_ibfk_1` FOREIGN KEY (`ReportID`) REFERENCES `inspectionreport` (`ReportID`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `fk_firm_employee` FOREIGN KEY (`FirmID`) REFERENCES `firm` (`FirmID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inspection`
--
ALTER TABLE `inspection`
  ADD CONSTRAINT `inspection_ibfk_1` FOREIGN KEY (`PropertyID`) REFERENCES `property` (`PropertyID`),
  ADD CONSTRAINT `inspection_ibfk_2` FOREIGN KEY (`InspectorID`) REFERENCES `inspector` (`InspectorID`);

--
-- Constraints for table `inspectionreport`
--
ALTER TABLE `inspectionreport`
  ADD CONSTRAINT `inspectionreport_ibfk_1` FOREIGN KEY (`InspectionID`) REFERENCES `inspection` (`InspectionID`);

--
-- Constraints for table `lease`
--
ALTER TABLE `lease`
  ADD CONSTRAINT `lease_ibfk_1` FOREIGN KEY (`OwnerID`) REFERENCES `owner` (`OwnerID`),
  ADD CONSTRAINT `lease_ibfk_2` FOREIGN KEY (`TenantID`) REFERENCES `tenant` (`TenantID`);

--
-- Constraints for table `maintenancejob`
--
ALTER TABLE `maintenancejob`
  ADD CONSTRAINT `maintenancejob_ibfk_1` FOREIGN KEY (`VendorID`) REFERENCES `vendor` (`VendorID`),
  ADD CONSTRAINT `maintenancejob_ibfk_2` FOREIGN KEY (`RequestID`) REFERENCES `maintenancerequest` (`RequestID`);

--
-- Constraints for table `maintenancerequest`
--
ALTER TABLE `maintenancerequest`
  ADD CONSTRAINT `maintenancerequest_ibfk_1` FOREIGN KEY (`PropertyID`) REFERENCES `property` (`PropertyID`),
  ADD CONSTRAINT `maintenancerequest_ibfk_2` FOREIGN KEY (`TenantID`) REFERENCES `tenant` (`TenantID`);

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`FirmID`) REFERENCES `firm` (`FirmID`);

--
-- Constraints for table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `property_ibfk_1` FOREIGN KEY (`OwnerID`) REFERENCES `owner` (`OwnerID`),
  ADD CONSTRAINT `property_ibfk_2` FOREIGN KEY (`ManagerID`) REFERENCES `manager` (`ManagerID`);

--
-- Constraints for table `tenant`
--
ALTER TABLE `tenant`
  ADD CONSTRAINT `tenant_ibfk_1` FOREIGN KEY (`PropertyID`) REFERENCES `property` (`PropertyID`);

--
-- Constraints for table `utilitybill`
--
ALTER TABLE `utilitybill`
  ADD CONSTRAINT `utilitybill_ibfk_1` FOREIGN KEY (`PropertyID`) REFERENCES `property` (`PropertyID`),
  ADD CONSTRAINT `utilitybill_ibfk_2` FOREIGN KEY (`MeterID`) REFERENCES `utilitymeter` (`MeterID`);

--
-- Constraints for table `utilitymeter`
--
ALTER TABLE `utilitymeter`
  ADD CONSTRAINT `utilitymeter_ibfk_1` FOREIGN KEY (`PropertyID`) REFERENCES `property` (`PropertyID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
