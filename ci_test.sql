-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2020 at 02:37 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `accountID` bigint(20) NOT NULL,
  `userID` bigint(20) NOT NULL,
  `accountName` text NOT NULL,
  `accountCategory` varchar(50) NOT NULL,
  `accountCategorySub` varchar(50) NOT NULL,
  `accountSide` varchar(25) NOT NULL,
  `accountBalance` decimal(10,2) NOT NULL,
  `accountDebit` decimal(10,2) NOT NULL,
  `accountCredit` decimal(10,2) NOT NULL,
  `accountOrder` int(11) NOT NULL,
  `accountStatus` int(1) NOT NULL DEFAULT '1',
  `accountStatement` varchar(50) NOT NULL,
  `accountCreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`accountID`, `userID`, `accountName`, `accountCategory`, `accountCategorySub`, `accountSide`, `accountBalance`, `accountDebit`, `accountCredit`, `accountOrder`, `accountStatus`, `accountStatement`, `accountCreationDate`) VALUES
(10000010, 1000002, 'Cash', 'Assets', 'Current Assets', 'Left (Debit)', '0.00', '22575.00', '13700.00', 1, 1, 'Balance Sheet', '2019-10-31 00:06:15'),
(10000220, 1000002, 'Accounts Receivable', 'Assets', 'Current Assets', 'Left (Debit)', '0.00', '5950.00', '2500.00', 20, 1, 'Balance Sheet', '2019-10-31 00:06:41'),
(10000230, 1000002, 'Prepaid Rent', 'Assets', 'Current Assets', 'Left (Debit)', '0.00', '4500.00', '1500.00', 30, 1, 'Balance Sheet', '2019-10-31 00:07:38'),
(10000410, 1000002, 'Supplies', 'Assets', 'Current Assets', 'Left (Debit)', '0.00', '2000.00', '980.00', 40, 1, 'Balance Sheet', '2019-10-31 00:08:20'),
(10000450, 1000002, 'Prepaid Insurance', 'Assets', 'Current Assets', 'Left (Debit)', '0.00', '1800.00', '150.00', 50, 1, 'Balance Sheet', '2019-10-31 00:08:45'),
(10001810, 1000002, 'Office Equipment', 'Assets', 'Property Plant & Management', 'Left (Debit)', '0.00', '9300.00', '0.00', 60, 1, 'Balance Sheet', '2019-10-31 00:09:11'),
(10001811, 1000002, 'Office Equipment - A. D.', 'Assets', 'Property Plant & Management', 'Left (Debit)', '0.00', '0.00', '500.00', 70, 1, 'Balance Sheet', '2019-10-31 00:11:04'),
(20002020, 1000002, 'Accounts Payable', 'Liabilities', 'Current Liabilities', 'Right (Credit)', '0.00', '800.00', '1800.00', 80, 1, 'Balance Sheet', '2019-10-31 00:12:51'),
(20002190, 1000002, 'Salaries Payable', 'Liabilities', 'Current Liabilities', 'Right (Credit)', '0.00', '0.00', '20.00', 90, 1, 'Balance Sheet', '2019-10-31 00:13:48'),
(20002410, 1000002, 'Unearned Revenue', 'Liabilities', 'Unearned Revenue', 'Right (Credit)', '0.00', '2000.00', '3000.00', 100, 1, 'Balance Sheet', '2019-10-31 00:14:20'),
(30003110, 1000002, 'Contributed Capital', 'Owners Equity', 'Stockholders Equity', 'Right (Credit)', '0.00', '0.00', '20250.00', 110, 1, 'Balance Sheet', '2019-10-31 00:15:09'),
(30003250, 1000002, 'Retained Earnings', 'Owners Equity', 'Stockholders Equity', 'Right (Credit)', '0.00', '0.00', '0.00', 120, 1, 'Balance Sheet', '2019-10-31 00:15:40'),
(40004010, 1000002, 'Service Revenue', 'Revenues', 'Revenues', 'Right (Credit)', '0.00', '0.00', '13425.00', 130, 1, 'Income Statement', '2019-10-31 00:17:45'),
(50005040, 1000002, 'Utilities Expense', 'Operating Expenses', 'Expenses', 'Left (Debit)', '0.00', '200.00', '0.00', 140, 1, 'Income Statement', '2019-10-31 00:22:16'),
(50005110, 1000002, 'Salaries Expense', 'Operating Expenses', 'Expenses', 'Left (Debit)', '0.00', '5320.00', '0.00', 150, 1, 'Income Statement', '2019-10-31 00:21:06'),
(50005120, 1000002, 'Advertising Expense', 'Operating Expenses', 'Expenses', 'Left (Debit)', '0.00', '120.00', '0.00', 160, 1, 'Income Statement', '2019-10-31 00:22:42'),
(50005210, 1000002, 'Rent Expense', 'Operating Expenses', 'Expenses', 'Left (Debit)', '0.00', '1500.00', '0.00', 170, 1, 'Income Statement', '2019-10-31 00:19:48'),
(50005230, 1000002, 'Supplies Expense', 'Operating Expenses', 'Expenses', 'Left (Debit)', '0.00', '980.00', '0.00', 180, 1, 'Income Statement', '2019-10-31 00:20:32'),
(50005250, 1000002, 'Telephone Expense', 'Operating Expenses', 'Expenses', 'Left (Debit)', '0.00', '130.00', '0.00', 190, 1, 'Income Statement', '2019-10-31 00:21:33'),
(50005350, 1000002, 'Insurance Expense', 'Operating Expenses', 'Expenses', 'Left (Debit)', '0.00', '150.00', '0.00', 200, 1, 'Income Statement', '2019-10-31 00:18:34'),
(50005420, 1000002, 'Depreciation Expense', 'Operating Expenses', 'Expenses', 'Left (Debit)', '0.00', '500.00', '0.00', 210, 1, 'Income Statement', '2019-10-31 00:19:02');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_categories`
--

CREATE TABLE `accounts_categories` (
  `categoryID` bigint(20) NOT NULL,
  `categoryName` varchar(50) NOT NULL,
  `categoryDescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_categories_sub`
--

CREATE TABLE `accounts_categories_sub` (
  `subCategoryID` bigint(20) NOT NULL,
  `categoryID` bigint(20) NOT NULL,
  `subCategoryName` varchar(50) NOT NULL,
  `subCategoryDescription` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entries`
--

CREATE TABLE `entries` (
  `entryID` bigint(20) NOT NULL,
  `userID` bigint(20) NOT NULL,
  `entryDescription` text NOT NULL,
  `entryDebitAccount` text NOT NULL,
  `entryDebitBalance` text NOT NULL,
  `entryCreditAccount` text NOT NULL,
  `entryCreditBalance` text NOT NULL,
  `entryStatus` int(1) NOT NULL DEFAULT '0',
  `entryStatusComment` text,
  `entryCreateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entries`
--

INSERT INTO `entries` (`entryID`, `userID`, `entryDescription`, `entryDebitAccount`, `entryDebitBalance`, `entryCreditAccount`, `entryCreditBalance`, `entryStatus`, `entryStatusComment`, `entryCreateDate`) VALUES
(10000013, 1000002, 'Transaction 4/4', '[\"10000010\",\"10000220\",\"10000410\",\"10001810\"]', '[\"10000\",\"1500\",\"1250\",\"7500\"]', '[\"30003110\"]', '[\"20250\"]', 1, NULL, '2019-10-31 00:30:56'),
(10000014, 1000002, 'Transaction 4/4', '[\"10000230\"]', '[\"4500\"]', '[\"10000010\"]', '[\"4500\"]', 1, NULL, '2019-10-31 00:31:54'),
(10000015, 1000002, 'Transaction 4/4', '[\"10000450\"]', '[\"1800\"]', '[\"10000010\"]', '[\"1800\"]', 1, NULL, '2019-10-31 00:32:19'),
(10000016, 1000002, 'Transaction 4/6', '[\"10000010\"]', '[\"3000\"]', '[\"20002410\"]', '[\"3000\"]', 1, NULL, '2019-10-31 00:32:39'),
(10000017, 1000002, 'Transaction 4/7', '[\"10001810\"]', '[\"1800\"]', '[\"20002020\"]', '[\"1800\"]', 1, NULL, '2019-10-31 00:32:59'),
(10000018, 1000002, 'Transaction 4/8', '[\"10000010\"]', '[\"800\"]', '[\"10000220\"]', '[\"800\"]', 1, NULL, '2019-10-31 00:33:25'),
(10000019, 1000002, 'Transaction 4/11', '[\"50005120\"]', '[\"120\"]', '[\"10000010\"]', '[\"120\"]', 1, NULL, '2019-10-31 00:33:58'),
(10000020, 1000002, 'Transaction 4/12', '[\"20002020\"]', '[\"800\"]', '[\"10000010\"]', '[\"800\"]', 1, NULL, '2019-10-31 00:34:20'),
(10000021, 1000002, 'Transaction 4/15', '[\"10000220\"]', '[\"2250\"]', '[\"40004010\"]', '[\"2250\"]', 1, NULL, '2019-10-31 00:34:46'),
(10000022, 1000002, 'Transaction 4/15', '[\"50005110\"]', '[\"400\"]', '[\"10000010\"]', '[\"400\"]', 1, NULL, '2019-10-31 00:35:12'),
(10000023, 1000002, 'Transaction 4/15', '[\"50005110\"]', '[\"400\"]', '[\"10000010\"]', '[\"400\"]', 0, 'Duplicate Entry', '2019-10-31 00:35:13'),
(10000024, 1000002, 'Transaction 4/15', '[\"10000010\"]', '[\"3175\"]', '[\"40004010\"]', '[\"3175\"]', 1, NULL, '2019-10-31 00:35:43'),
(10000025, 1000002, 'Transaction 4/18', '[\"10000410\"]', '[\"750\"]', '[\"10000010\"]', '[\"750\"]', 1, NULL, '2019-10-31 00:36:02'),
(10000026, 1000002, 'Transaction 4/22', '[\"10000220\"]', '[\"1100\"]', '[\"40004010\"]', '[\"1100\"]', 1, NULL, '2019-10-31 00:36:26'),
(10000027, 1000002, 'Transaction 4/22', '[\"10000010\"]', '[\"1850\"]', '[\"40004010\"]', '[\"1850\"]', 1, NULL, '2019-10-31 00:37:00'),
(10000028, 1000002, 'Transaction 4/25', '[\"10000010\"]', '[\"1600\"]', '[\"10000220\"]', '[\"1600\"]', 1, NULL, '2019-10-31 00:37:17'),
(10000029, 1000002, 'Transaction 4/28', '[\"50005250\"]', '[\"130\"]', '[\"10000010\"]', '[\"130\"]', 1, NULL, '2019-10-31 00:37:39'),
(10000030, 1000002, 'Transaction 4/29', '[\"50005040\"]', '[\"200\"]', '[\"10000010\"]', '[\"200\"]', 1, NULL, '2019-10-31 00:38:06'),
(10000031, 1000002, 'Transaction 4/29', '[\"10000010\"]', '[\"2050\"]', '[\"40004010\"]', '[\"2050\"]', 1, NULL, '2019-10-31 00:38:28'),
(10000032, 1000002, 'Transaction 4/29', '[\"10000220\"]', '[\"1000\"]', '[\"40004010\"]', '[\"1000\"]', 1, NULL, '2019-10-31 00:38:51'),
(10000033, 1000002, 'Transaction 4/29', '[\"50005110\"]', '[\"4500\"]', '[\"10000010\"]', '[\"4500\"]', 1, NULL, '2019-10-31 00:39:09'),
(10000034, 1000002, 'Transaction 4/30', '[\"50005350\"]', '[\"150\"]', '[\"10000450\"]', '[\"150\"]', 1, NULL, '2019-10-31 00:39:37'),
(10000035, 1000002, 'Transaction 4/30', '[\"50005230\"]', '[\"980\"]', '[\"10000410\"]', '[\"980\"]', 1, NULL, '2019-10-31 00:40:01'),
(10000036, 1000002, 'Transaction 4/30', '[\"50005420\"]', '[\"500\"]', '[\"10001811\"]', '[\"500\"]', 1, NULL, '2019-10-31 00:40:27'),
(10000037, 1000002, 'Transaction 4/30', '[\"50005110\"]', '[\"20\"]', '[\"20002190\"]', '[\"20\"]', 1, NULL, '2019-11-02 00:40:50'),
(10000038, 1000002, 'Transaction 4/30', '[\"50005210\"]', '[\"1500\"]', '[\"10000230\"]', '[\"1500\"]', 1, NULL, '2019-11-02 00:41:14'),
(10000039, 1000002, 'Transaction 4/30', '[\"20002410\"]', '[\"2000\"]', '[\"40004010\"]', '[\"2000\"]', 1, NULL, '2019-11-02 00:41:36'),
(10000040, 1000002, 'Transaction 4/27', '[\"50005110\"]', '[\"400\"]', '[\"10000010\"]', '[\"400\"]', 1, NULL, '2019-11-02 00:44:32'),
(10000041, 1000002, 'Test', '[\"10000010\"]', '[\"100\"]', '[\"10000220\"]', '[\"100\"]', 1, NULL, '2019-11-18 21:59:17'),
(10000042, 1000002, 'Fix Test Entry', '[\"10000220\"]', '[\"100\"]', '[\"10000010\"]', '[\"100\"]', 1, NULL, '2019-11-18 22:41:44'),
(10000043, 1000001, 'Test making entry', '[\"10000010\"]', '[\"100\"]', '[\"10000220\"]', '[\"100\"]', 0, 'This is a test for making entries.', '2019-12-02 17:34:45');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `logID` bigint(20) NOT NULL,
  `userID` bigint(20) NOT NULL,
  `logType` varchar(25) NOT NULL,
  `logBefore` text NOT NULL,
  `logAfter` text NOT NULL,
  `logDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`logID`, `userID`, `logType`, `logBefore`, `logAfter`, `logDate`) VALUES
(10000001, 1000003, 'users', '{\"userID\":\"1000003\",\"userName\":\"APerson0919\",\"userFirstName\":\"Admin\",\"userLastName\":\"Person\",\"userEmail\":\"administrator@test.com\",\"userRole\":\"20\"}', '{\"userFirstName\":\"Admin\",\"userLastName\":\"Person\",\"userEmail\":\"administrator@test.com\",\"userID\":\"1000003\"}', '2019-10-08 20:58:43'),
(10000002, 1000003, 'admin', '{\"userID\":\"1000001\",\"userEmail\":\"accountant@test.com\",\"userFirstName\":\"Accountant\",\"userLastName\":\"Person\",\"userPassword\":\"519524d3e2c7de2020f4cca2ae373b5b\",\"userPasswordAttempts\":\"0\",\"userPrevPassword\":null,\"userPasswordDate\":\"2019-09-19 13:18:18\",\"userCreationDate\":\"2019-09-19 13:18:18\",\"userRole\":\"0\",\"userActive\":\"1\",\"userActiveDate\":null}', '{\"userFirstName\":\"Accountant\",\"userLastName\":\"Person\",\"userEmail\":\"accountant@test.com\",\"userRole\":\"0\",\"userActive\":\"1\",\"userID\":\"1000001\"}', '2019-10-08 21:03:02'),
(10000003, 1000003, 'admin', '{\"userID\":\"1000001\",\"userEmail\":\"accountant@test.com\",\"userFirstName\":\"Accountant\",\"userLastName\":\"Person\",\"userPassword\":\"519524d3e2c7de2020f4cca2ae373b5b\",\"userPasswordAttempts\":\"0\",\"userPrevPassword\":null,\"userPasswordDate\":\"2019-09-19 13:18:18\",\"userCreationDate\":\"2019-09-19 13:18:18\",\"userRole\":\"0\",\"userActive\":\"1\",\"userActiveDate\":null}', '{\"userFirstName\":\"Accountants\",\"userLastName\":\"Person\",\"userEmail\":\"accountant@test.com\",\"userRole\":\"0\",\"userActive\":\"1\",\"userID\":\"1000001\"}', '2019-10-08 21:16:02'),
(10000004, 1000003, 'admin', '{\"userID\":\"1000001\",\"userEmail\":\"accountant@test.com\",\"userFirstName\":\"Accountants\",\"userLastName\":\"Person\",\"userPassword\":\"519524d3e2c7de2020f4cca2ae373b5b\",\"userPasswordAttempts\":\"0\",\"userPrevPassword\":null,\"userPasswordDate\":\"2019-09-19 13:18:18\",\"userCreationDate\":\"2019-09-19 13:18:18\",\"userRole\":\"0\",\"userActive\":\"1\",\"userActiveDate\":null}', '{\"userFirstName\":\"Accountant\",\"userLastName\":\"Person\",\"userEmail\":\"accountant@test.com\",\"userRole\":\"0\",\"userActive\":\"1\",\"userID\":\"1000001\"}', '2019-10-08 21:16:05'),
(10000005, 1000003, 'users', '{\"userID\":\"1000003\",\"userName\":\"APerson0919\",\"userFirstName\":\"Admin\",\"userLastName\":\"Person\",\"userEmail\":\"administrator@test.com\",\"userRole\":\"20\"}', '{\"userFirstName\":\"Admins\",\"userLastName\":\"Person\",\"userEmail\":\"administrator@test.com\",\"userID\":\"1000003\"}', '2019-10-08 21:16:14'),
(10000006, 1000003, 'users', '{\"userID\":\"1000003\",\"userName\":\"APerson0919\",\"userFirstName\":\"Admins\",\"userLastName\":\"Person\",\"userEmail\":\"administrator@test.com\",\"userRole\":\"20\"}', '{\"userFirstName\":\"Admin\",\"userLastName\":\"Person\",\"userEmail\":\"administrator@test.com\",\"userID\":\"1000003\"}', '2019-10-08 21:16:16'),
(10000007, 1000003, 'admin', '{\"userID\":\"1000002\",\"userEmail\":\"manager@test.com\",\"userFirstName\":\"Manager\",\"userLastName\":\"Person\",\"userPassword\":\"5980ba484aeddde546d5e79eb893dc58\",\"userPasswordAttempts\":\"0\",\"userPrevPassword\":null,\"userPasswordDate\":\"2019-09-19 14:15:02\",\"userCreationDate\":\"2019-09-19 14:15:02\",\"userRole\":\"10\",\"userActive\":\"1\",\"userActiveDate\":null}', '{\"userFirstName\":\"Managers\",\"userLastName\":\"Person\",\"userEmail\":\"manager@test.com\",\"userRole\":\"10\",\"userActive\":\"1\",\"userID\":\"1000002\"}', '2019-10-08 21:56:01'),
(10000008, 1000003, 'admin', '{\"userID\":\"1000002\",\"userEmail\":\"manager@test.com\",\"userFirstName\":\"Managers\",\"userLastName\":\"Person\",\"userPassword\":\"5980ba484aeddde546d5e79eb893dc58\",\"userPasswordAttempts\":\"0\",\"userPrevPassword\":null,\"userPasswordDate\":\"2019-09-19 14:15:02\",\"userCreationDate\":\"2019-09-19 14:15:02\",\"userRole\":\"10\",\"userActive\":\"1\",\"userActiveDate\":null}', '{\"userFirstName\":\"Manager\",\"userLastName\":\"Person\",\"userEmail\":\"manager@test.com\",\"userRole\":\"10\",\"userActive\":\"1\",\"userID\":\"1000002\"}', '2019-10-08 21:56:04'),
(10000009, 1000003, 'admin', '{\"userID\":\"1000002\",\"userEmail\":\"manager@test.com\",\"userFirstName\":\"Manager\",\"userLastName\":\"Person\",\"userPassword\":\"5980ba484aeddde546d5e79eb893dc58\",\"userPasswordAttempts\":\"0\",\"userPrevPassword\":null,\"userPasswordDate\":\"2019-09-19 14:15:02\",\"userCreationDate\":\"2019-09-19 14:15:02\",\"userRole\":\"10\",\"userActive\":\"1\",\"userActiveDate\":null}', '{\"userFirstName\":\"Manager\",\"userLastName\":\"Person\",\"userEmail\":\"manager@test.com\",\"userRole\":\"0\",\"userActive\":\"1\",\"userID\":\"1000002\"}', '2019-10-08 21:56:35'),
(10000010, 1000003, 'admin', '{\"userID\":\"1000002\",\"userEmail\":\"manager@test.com\",\"userFirstName\":\"Manager\",\"userLastName\":\"Person\",\"userPassword\":\"5980ba484aeddde546d5e79eb893dc58\",\"userPasswordAttempts\":\"0\",\"userPrevPassword\":null,\"userPasswordDate\":\"2019-09-19 14:15:02\",\"userCreationDate\":\"2019-09-19 14:15:02\",\"userRole\":\"0\",\"userActive\":\"1\",\"userActiveDate\":null}', '{\"userFirstName\":\"Manager\",\"userLastName\":\"Person\",\"userEmail\":\"manager@test.com\",\"userRole\":\"20\",\"userActive\":\"1\",\"userID\":\"1000002\"}', '2019-10-08 21:56:38'),
(10000011, 1000003, 'admin', '{\"userID\":\"1000002\",\"userEmail\":\"manager@test.com\",\"userFirstName\":\"Manager\",\"userLastName\":\"Person\",\"userPassword\":\"5980ba484aeddde546d5e79eb893dc58\",\"userPasswordAttempts\":\"0\",\"userPrevPassword\":null,\"userPasswordDate\":\"2019-09-19 14:15:02\",\"userCreationDate\":\"2019-09-19 14:15:02\",\"userRole\":\"20\",\"userActive\":\"1\",\"userActiveDate\":null}', '{\"userFirstName\":\"Manager\",\"userLastName\":\"Person\",\"userEmail\":\"manager@test.com\",\"userRole\":\"10\",\"userActive\":\"1\",\"userID\":\"1000002\"}', '2019-10-08 21:56:41'),
(10000012, 1000003, 'admin', '{\"userID\":\"1000001\",\"userEmail\":\"accountant@test.com\",\"userFirstName\":\"Accountant\",\"userLastName\":\"Person\",\"userPassword\":\"519524d3e2c7de2020f4cca2ae373b5b\",\"userPasswordAttempts\":\"0\",\"userPrevPassword\":null,\"userPasswordDate\":\"2019-09-19 13:18:18\",\"userCreationDate\":\"2019-09-19 13:18:18\",\"userRole\":\"0\",\"userActive\":\"1\",\"userActiveDate\":null}', '{\"userFirstName\":\"Accountants\",\"userLastName\":\"Persons\",\"userEmail\":\"accountant@test.com\",\"userRole\":\"10\",\"userActive\":\"0\",\"userID\":\"1000001\"}', '2019-10-08 22:00:57'),
(10000013, 1000003, 'admin', '{\"userID\":\"1000001\",\"userEmail\":\"accountant@test.com\",\"userFirstName\":\"Accountants\",\"userLastName\":\"Persons\",\"userPassword\":\"519524d3e2c7de2020f4cca2ae373b5b\",\"userPasswordAttempts\":\"0\",\"userPrevPassword\":null,\"userPasswordDate\":\"2019-09-19 13:18:18\",\"userCreationDate\":\"2019-09-19 13:18:18\",\"userRole\":\"10\",\"userActive\":\"0\",\"userActiveDate\":null}', '{\"userFirstName\":\"Accountant\",\"userLastName\":\"Person\",\"userEmail\":\"accountants@test.com\",\"userRole\":\"0\",\"userActive\":\"1\",\"userID\":\"1000001\"}', '2019-10-08 22:01:09'),
(10000014, 1000003, 'admin', '{\"userID\":\"1000001\",\"userEmail\":\"accountants@test.com\",\"userFirstName\":\"Accountant\",\"userLastName\":\"Person\",\"userPassword\":\"519524d3e2c7de2020f4cca2ae373b5b\",\"userPasswordAttempts\":\"0\",\"userPrevPassword\":null,\"userPasswordDate\":\"2019-09-19 13:18:18\",\"userCreationDate\":\"2019-09-19 13:18:18\",\"userRole\":\"0\",\"userActive\":\"1\",\"userActiveDate\":null}', '{\"userFirstName\":\"Accountant\",\"userLastName\":\"Person\",\"userEmail\":\"accountant@test.com\",\"userRole\":\"0\",\"userActive\":\"1\",\"userID\":\"1000001\"}', '2019-10-08 22:01:13'),
(10000015, 1000003, 'admin', '{\"userID\":\"1000001\",\"userEmail\":\"accountant@test.com\",\"userFirstName\":\"Accountant\",\"userLastName\":\"Person\",\"userPassword\":\"519524d3e2c7de2020f4cca2ae373b5b\",\"userPasswordAttempts\":\"0\",\"userPrevPassword\":null,\"userPasswordDate\":\"2019-09-19 13:18:18\",\"userCreationDate\":\"2019-09-19 13:18:18\",\"userRole\":\"0\",\"userActive\":\"1\",\"userActiveDate\":null}', '{\"userFirstName\":\"Accountant\",\"userLastName\":\"Person\",\"userEmail\":\"accountant@test.com\",\"userRole\":\"0\",\"userActive\":\"1\",\"userPassword\":\"9839bdd0ed4842dab367036fa233d871\",\"userID\":\"1000001\"}', '2019-10-08 22:01:22'),
(10000016, 1000003, 'admin', '{\"userID\":\"1000001\",\"userEmail\":\"accountant@test.com\",\"userFirstName\":\"Accountant\",\"userLastName\":\"Person\",\"userPassword\":\"9839bdd0ed4842dab367036fa233d871\",\"userPasswordAttempts\":\"0\",\"userPrevPassword\":null,\"userPasswordDate\":\"2019-09-19 13:18:18\",\"userCreationDate\":\"2019-09-19 13:18:18\",\"userRole\":\"0\",\"userActive\":\"1\",\"userActiveDate\":null}', '{\"userFirstName\":\"Accountant\",\"userLastName\":\"Person\",\"userEmail\":\"accountant@test.com\",\"userRole\":\"0\",\"userActive\":\"1\",\"userPassword\":\"c2391dedefcd683e3c5e5c50f5ef9615\",\"userID\":\"1000001\"}', '2019-10-08 22:01:33'),
(10000046, 1000003, 'admin', '{\"userID\":\"1000001\",\"userEmail\":\"accountant@test.com\",\"userFirstName\":\"Accountant\",\"userLastName\":\"Person\",\"userPassword\":\"c2391dedefcd683e3c5e5c50f5ef9615\",\"userPasswordAttempts\":\"0\",\"userPrevPassword\":null,\"userPasswordDate\":\"2019-09-19 13:18:18\",\"userCreationDate\":\"2019-09-19 13:18:18\",\"userRole\":\"0\",\"userActive\":\"1\",\"userActiveDate\":null}', '{\"userFirstName\":\"Accountant\",\"userLastName\":\"Person\",\"userEmail\":\"accountant@test.com\",\"userRole\":\"0\",\"userActive\":\"1\",\"userPassword\":\"519524d3e2c7de2020f4cca2ae373b5b\",\"userID\":\"1000001\"}', '2019-10-13 22:09:23'),
(10000047, 1000003, 'users', '{\"userID\":\"1000003\",\"userName\":\"APerson0919\",\"userFirstName\":\"Admin\",\"userLastName\":\"Person\",\"userEmail\":\"administrator@test.com\",\"userRole\":\"20\"}', '{\"userFirstName\":\"Admin\",\"userLastName\":\"Person\",\"userEmail\":\"administrator@test.com\",\"userPassword\":\"6a0c60f307c789f24b3b65a88e04dbf4\",\"userID\":\"1000003\"}', '2019-10-25 20:18:37'),
(10000048, 1000003, 'users', '{\"userID\":\"1000003\",\"userName\":\"APerson0919\",\"userFirstName\":\"Admin\",\"userLastName\":\"Person\",\"userEmail\":\"administrator@test.com\",\"userRole\":\"20\"}', '{\"userFirstName\":\"Admin\",\"userLastName\":\"Person\",\"userEmail\":\"administrator@test.com\",\"userPassword\":\"985de320ae9dc7cb28692edd5b3afa72\",\"userID\":\"1000003\"}', '2019-10-25 20:19:03'),
(10000049, 1000003, 'users', '{\"userID\":\"1000003\",\"userName\":\"APerson0919\",\"userFirstName\":\"Admin\",\"userLastName\":\"Person\",\"userEmail\":\"administrator@test.com\",\"userRole\":\"20\"}', '{\"userFirstName\":\"Admins\",\"userLastName\":\"Person\",\"userEmail\":\"administrator@test.com\",\"userID\":\"1000003\"}', '2019-10-25 20:20:11'),
(10000052, 1000002, 'users', '{\"userID\":\"1000002\",\"userName\":\"MPerson0919\",\"userFirstName\":\"Manager\",\"userLastName\":\"Person\",\"userEmail\":\"manager@test.com\",\"userRole\":\"10\"}', '{\"userFirstName\":\"Manager\",\"userLastName\":\"Person\",\"userEmail\":\"manager@test.com\",\"userPassword\":\"5980ba484aeddde546d5e79eb893dc58\",\"userID\":\"1000002\"}', '2019-10-25 22:30:31'),
(10000053, 1000003, 'users', '{\"userID\":\"1000003\",\"userName\":\"APerson0919\",\"userFirstName\":\"Admins\",\"userLastName\":\"Person\",\"userEmail\":\"administrator@test.com\",\"userRole\":\"20\"}', '{\"userFirstName\":\"Admins\",\"userLastName\":\"Person\",\"userEmail\":\"administrator@test.com\",\"userPassword\":\"985de320ae9dc7cb28692edd5b3afa72\",\"userID\":\"1000003\"}', '2019-10-25 22:31:21'),
(10000054, 1000002, 'entries', '10000013', 'Created', '2019-10-31 00:30:56'),
(10000055, 1000002, 'entries', '10000014', 'Created', '2019-10-31 00:31:54'),
(10000056, 1000002, 'entries', '10000015', 'Created', '2019-10-31 00:32:19'),
(10000057, 1000002, 'entries', '10000016', 'Created', '2019-10-31 00:32:39'),
(10000058, 1000002, 'entries', '10000017', 'Created', '2019-10-31 00:32:59'),
(10000059, 1000002, 'entries', '10000018', 'Created', '2019-10-31 00:33:25'),
(10000060, 1000002, 'entries', '10000019', 'Created', '2019-10-31 00:33:58'),
(10000061, 1000002, 'entries', '10000020', 'Created', '2019-10-31 00:34:20'),
(10000062, 1000002, 'entries', '10000021', 'Created', '2019-10-31 00:34:46'),
(10000063, 1000002, 'entries', '10000022', 'Created', '2019-10-31 00:35:13'),
(10000064, 1000002, 'entries', '10000023', 'Created', '2019-10-31 00:35:13'),
(10000065, 1000002, 'entries', '10000023', 'Rejected: Duplicate Entry', '2019-10-31 00:35:22'),
(10000066, 1000002, 'entries', '10000024', 'Created', '2019-10-31 00:35:43'),
(10000067, 1000002, 'entries', '10000025', 'Created', '2019-10-31 00:36:02'),
(10000068, 1000002, 'entries', '10000026', 'Created', '2019-10-31 00:36:26'),
(10000069, 1000002, 'entries', '10000027', 'Created', '2019-10-31 00:37:00'),
(10000070, 1000002, 'entries', '10000028', 'Created', '2019-10-31 00:37:17'),
(10000071, 1000002, 'entries', '10000029', 'Created', '2019-10-31 00:37:39'),
(10000072, 1000002, 'entries', '10000030', 'Created', '2019-10-31 00:38:06'),
(10000073, 1000002, 'entries', '10000031', 'Created', '2019-10-31 00:38:28'),
(10000074, 1000002, 'entries', '10000032', 'Created', '2019-10-31 00:38:51'),
(10000075, 1000002, 'entries', '10000033', 'Created', '2019-10-31 00:39:09'),
(10000076, 1000002, 'entries', '10000034', 'Created', '2019-10-31 00:39:37'),
(10000077, 1000002, 'entries', '10000035', 'Created', '2019-10-31 00:40:01'),
(10000078, 1000002, 'entries', '10000036', 'Created', '2019-10-31 00:40:27'),
(10000079, 1000002, 'entries', '10000037', 'Created', '2019-10-31 00:40:50'),
(10000080, 1000002, 'entries', '10000038', 'Created', '2019-10-31 00:41:14'),
(10000081, 1000002, 'entries', '10000039', 'Created', '2019-10-31 00:41:36'),
(10000082, 1000002, 'entries', '10000013', 'Approved', '2019-10-31 00:41:38'),
(10000083, 1000002, 'entries', '10000014', 'Approved', '2019-10-31 00:41:40'),
(10000084, 1000002, 'entries', '10000015', 'Approved', '2019-10-31 00:41:42'),
(10000085, 1000002, 'entries', '10000016', 'Approved', '2019-10-31 00:41:44'),
(10000086, 1000002, 'entries', '10000017', 'Approved', '2019-10-31 00:41:45'),
(10000087, 1000002, 'entries', '10000018', 'Approved', '2019-10-31 00:41:47'),
(10000088, 1000002, 'entries', '10000019', 'Approved', '2019-10-31 00:41:49'),
(10000089, 1000002, 'entries', '10000020', 'Approved', '2019-10-31 00:41:51'),
(10000090, 1000002, 'entries', '10000021', 'Approved', '2019-10-31 00:41:52'),
(10000091, 1000002, 'entries', '10000022', 'Approved', '2019-10-31 00:41:54'),
(10000092, 1000002, 'entries', '10000024', 'Approved', '2019-10-31 00:41:55'),
(10000093, 1000002, 'entries', '10000026', 'Approved', '2019-10-31 00:41:57'),
(10000094, 1000002, 'entries', '10000025', 'Approved', '2019-10-31 00:41:59'),
(10000095, 1000002, 'entries', '10000027', 'Approved', '2019-10-31 00:42:00'),
(10000096, 1000002, 'entries', '10000028', 'Approved', '2019-10-31 00:42:02'),
(10000097, 1000002, 'entries', '10000029', 'Approved', '2019-10-31 00:42:04'),
(10000098, 1000002, 'entries', '10000030', 'Approved', '2019-10-31 00:42:05'),
(10000099, 1000002, 'entries', '10000031', 'Approved', '2019-10-31 00:42:06'),
(10000100, 1000002, 'entries', '10000032', 'Approved', '2019-10-31 00:42:07'),
(10000101, 1000002, 'entries', '10000033', 'Approved', '2019-10-31 00:42:08'),
(10000102, 1000002, 'entries', '10000034', 'Approved', '2019-10-31 00:42:09'),
(10000103, 1000002, 'entries', '10000035', 'Approved', '2019-10-31 00:42:09'),
(10000104, 1000002, 'entries', '10000036', 'Approved', '2019-10-31 00:42:10'),
(10000105, 1000002, 'entries', '10000037', 'Approved', '2019-10-31 00:42:11'),
(10000106, 1000002, 'entries', '10000038', 'Approved', '2019-10-31 00:42:12'),
(10000107, 1000002, 'entries', '10000039', 'Approved', '2019-10-31 00:42:13'),
(10000108, 1000002, 'entries', '10000040', 'Created', '2019-10-31 00:44:32'),
(10000109, 1000002, 'entries', '10000040', 'Approved', '2019-10-31 00:44:34'),
(10000110, 1000002, 'entries', '10000041', 'Created', '2019-11-18 21:59:17'),
(10000111, 1000002, 'entries', '10000041', 'Approved', '2019-11-18 22:41:06'),
(10000112, 1000002, 'entries', '10000042', 'Created', '2019-11-18 22:41:44'),
(10000113, 1000002, 'entries', '10000042', 'Approved', '2019-11-18 22:41:49'),
(10000114, 1000004, 'users', '{\"userID\":\"1000004\",\"userName\":\"TAccount1119\",\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userRole\":\"0\"}', '{\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userPassword\":\"bcfa73027e3be8d83201da2533b7ff0b\",\"userID\":\"1000004\"}', '2019-11-21 00:21:39'),
(10000115, 1000004, 'users', '{\"userID\":\"1000004\",\"userName\":\"TAccount1119\",\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userRole\":\"0\"}', '{\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userPassword\":\"bcfa73027e3be8d83201da2533b7ff0b\",\"userID\":\"1000004\"}', '2019-11-21 00:22:14'),
(10000116, 1000004, 'users', '{\"userID\":\"1000004\",\"userName\":\"TAccount1119\",\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userRole\":\"0\"}', '{\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userPassword\":\"bcfa73027e3be8d83201da2533b7ff0b\",\"userID\":\"1000004\"}', '2019-11-21 00:22:54'),
(10000117, 1000004, 'users', '{\"userID\":\"1000004\",\"userName\":\"TAccount1119\",\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userRole\":\"0\"}', '{\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userPassword\":\"bcfa73027e3be8d83201da2533b7ff0b\",\"userID\":\"1000004\"}', '2019-11-21 00:23:30'),
(10000118, 1000004, 'users', '{\"userID\":\"1000004\",\"userName\":\"TAccount1119\",\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userRole\":\"0\"}', '{\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userPassword\":\"bcfa73027e3be8d83201da2533b7ff0b\",\"userID\":\"1000004\"}', '2019-11-21 00:23:49'),
(10000119, 1000004, 'users', '{\"userID\":\"1000004\",\"userName\":\"TAccount1119\",\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userRole\":\"0\"}', '{\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userPassword\":\"bcfa73027e3be8d83201da2533b7ff0b\",\"userID\":\"1000004\"}', '2019-11-21 00:24:10'),
(10000120, 1000004, 'users', '{\"userID\":\"1000004\",\"userName\":\"TAccount1119\",\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userRole\":\"0\"}', '{\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userPassword\":\"bcfa73027e3be8d83201da2533b7ff0b\",\"userID\":\"1000004\"}', '2019-11-21 00:24:18'),
(10000121, 1000004, 'users', '{\"userID\":\"1000004\",\"userName\":\"TAccount1119\",\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userRole\":\"0\"}', '{\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userPassword\":\"bcfa73027e3be8d83201da2533b7ff0b\",\"userID\":\"1000004\"}', '2019-11-21 00:24:33'),
(10000122, 1000004, 'users', '{\"userID\":\"1000004\",\"userName\":\"TAccount1119\",\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userRole\":\"0\"}', '{\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userPassword\":\"bcfa73027e3be8d83201da2533b7ff0b\",\"userID\":\"1000004\"}', '2019-11-21 00:24:37'),
(10000123, 1000004, 'users', '{\"userID\":\"1000004\",\"userName\":\"TAccount1119\",\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userRole\":\"0\"}', '{\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userPassword\":\"bcfa73027e3be8d83201da2533b7ff0b\",\"userID\":\"1000004\"}', '2019-11-21 00:25:04'),
(10000124, 1000004, 'users', '{\"userID\":\"1000004\",\"userName\":\"TAccount1119\",\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userRole\":\"0\"}', '{\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userPassword\":\"bcfa73027e3be8d83201da2533b7ff0b\",\"userID\":\"1000004\"}', '2019-11-21 00:25:19'),
(10000125, 1000004, 'users', '{\"userID\":\"1000004\",\"userName\":\"TAccount1119\",\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userRole\":\"0\"}', '{\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userPassword\":\"bcfa73027e3be8d83201da2533b7ff0b\",\"userID\":\"1000004\"}', '2019-11-21 00:25:30'),
(10000126, 1000004, 'users', '{\"userID\":\"1000004\",\"userName\":\"TAccount1119\",\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userRole\":\"0\"}', '{\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userPassword\":\"bcfa73027e3be8d83201da2533b7ff0b\",\"userID\":\"1000004\"}', '2019-11-21 00:25:58'),
(10000127, 1000004, 'users', '{\"userID\":\"1000004\",\"userName\":\"TAccount1119\",\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userRole\":\"0\"}', '{\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userPassword\":\"bcfa73027e3be8d83201da2533b7ff0b\",\"userID\":\"1000004\"}', '2019-11-21 00:26:16'),
(10000128, 1000004, 'users', '{\"userID\":\"1000004\",\"userName\":\"TAccount1119\",\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userRole\":\"0\"}', '{\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userPassword\":\"bcfa73027e3be8d83201da2533b7ff0b\",\"userID\":\"1000004\"}', '2019-11-21 00:26:41'),
(10000129, 1000004, 'users', '{\"userID\":\"1000004\",\"userName\":\"TAccount1119\",\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userRole\":\"0\"}', '{\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userPassword\":\"b3e207713101ac4ceeca8e2bf9d89f11\",\"userID\":\"1000004\"}', '2019-11-21 00:33:38'),
(10000130, 1000004, 'users', '{\"userID\":\"1000004\",\"userName\":\"TAccount1119\",\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userRole\":\"0\"}', '{\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userPassword\":\"b3e207713101ac4ceeca8e2bf9d89f11\",\"userID\":\"1000004\"}', '2019-11-21 00:34:38'),
(10000131, 1000004, 'users', '{\"userID\":\"1000004\",\"userName\":\"TAccount1119\",\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userRole\":\"0\"}', '{\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userPassword\":\"b3e207713101ac4ceeca8e2bf9d89f11\",\"userID\":\"1000004\"}', '2019-11-21 00:35:17'),
(10000132, 1000004, 'users', '{\"userID\":\"1000004\",\"userName\":\"TAccount1119\",\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userRole\":\"0\"}', '{\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userPassword\":\"b3e207713101ac4ceeca8e2bf9d89f11\",\"userID\":\"1000004\"}', '2019-11-21 00:35:34'),
(10000133, 1000004, 'users', '{\"userID\":\"1000004\",\"userName\":\"TAccount1119\",\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userRole\":\"0\"}', '{\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userPassword\":\"b3e207713101ac4ceeca8e2bf9d89f11\",\"userID\":\"1000004\"}', '2019-11-21 00:36:02'),
(10000134, 1000004, 'users', '{\"userID\":\"1000004\",\"userName\":\"TAccount1119\",\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userRole\":\"0\"}', '{\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userPassword\":\"b3e207713101ac4ceeca8e2bf9d89f11\",\"userID\":\"1000004\"}', '2019-11-21 00:36:31'),
(10000135, 1000004, 'users', '{\"userID\":\"1000004\",\"userName\":\"TAccount1119\",\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userRole\":\"0\"}', '{\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userPassword\":\"b3e207713101ac4ceeca8e2bf9d89f11\",\"userID\":\"1000004\"}', '2019-11-21 00:36:54'),
(10000136, 1000004, 'users', '{\"userID\":\"1000004\",\"userName\":\"TAccount1119\",\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userRole\":\"0\"}', '{\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userPassword\":\"b3e207713101ac4ceeca8e2bf9d89f11\",\"userID\":\"1000004\"}', '2019-11-21 00:38:01'),
(10000137, 1000004, 'users', '{\"userID\":\"1000004\",\"userName\":\"TAccount1119\",\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userRole\":\"0\"}', '{\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userPassword\":\"b3e207713101ac4ceeca8e2bf9d89f11\",\"userID\":\"1000004\"}', '2019-11-21 00:38:41'),
(10000138, 1000004, 'users', '{\"userID\":\"1000004\",\"userName\":\"TAccount1119\",\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userRole\":\"0\"}', '{\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userPassword\":\"6769753a16b9a55bcc7ae79004c97b5a\",\"userID\":\"1000004\"}', '2019-11-21 00:39:20'),
(10000139, 1000003, 'admin', '{\"userID\":\"1000004\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userPassword\":\"bcfa73027e3be8d83201da2533b7ff0b\",\"userPasswordAttempts\":\"3\",\"userPrevPassword\":\"[\\\"bcfa73027e3be8d83201da2533b7ff0b\\\"]\",\"userPasswordDate\":\"2019-11-20 16:28:08\",\"userCreationDate\":\"2019-11-20 16:28:08\",\"userRole\":\"0\",\"userActive\":\"0\",\"userActiveDate\":null,\"userForgot\":null}', '{\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userRole\":\"0\",\"userActive\":\"1\",\"userID\":\"1000004\",\"userPasswordAttempts\":0}', '2019-11-21 01:08:02'),
(10000140, 1000003, 'admin', '{\"userID\":\"1000004\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userPassword\":\"bcfa73027e3be8d83201da2533b7ff0b\",\"userPasswordAttempts\":\"0\",\"userPrevPassword\":\"[\\\"bcfa73027e3be8d83201da2533b7ff0b\\\",null]\",\"userPasswordDate\":\"2019-11-20 16:28:08\",\"userCreationDate\":\"2019-11-20 16:28:08\",\"userRole\":\"0\",\"userActive\":\"1\",\"userActiveDate\":null,\"userForgot\":null}', '{\"userFirstName\":\"Test\",\"userLastName\":\"Account\",\"userEmail\":\"jordanallen1332@gmail.com\",\"userRole\":\"0\",\"userActive\":\"0\",\"userID\":\"1000004\"}', '2019-11-21 01:08:32'),
(10000141, 1000001, 'entries', '10000043', 'Created', '2019-12-02 17:34:45'),
(10000142, 1000002, 'entries', '10000043', 'Rejected: This is a test for making entries.', '2019-12-02 17:35:57');

-- --------------------------------------------------------

--
-- Table structure for table `logs_categories`
--

CREATE TABLE `logs_categories` (
  `categoryID` bigint(20) NOT NULL,
  `categoryName` varchar(25) NOT NULL,
  `categoryDescription` text NOT NULL,
  `categoryCreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logs_events`
--

CREATE TABLE `logs_events` (
  `logID` bigint(20) NOT NULL,
  `userID` bigint(20) NOT NULL,
  `logCategoryID` int(11) NOT NULL,
  `logBeforeInfo` text NOT NULL,
  `logAfterInfo` text NOT NULL,
  `logCreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logs_users`
--

CREATE TABLE `logs_users` (
  `logID` bigint(20) NOT NULL,
  `userID` bigint(20) NOT NULL,
  `logInfo` text NOT NULL,
  `logCreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_users`
--

INSERT INTO `logs_users` (`logID`, `userID`, `logInfo`, `logCreationDate`) VALUES
(1, 1000001, 'User logged in.', '2019-09-19 21:48:31'),
(2, 1000001, 'User logged out.', '2019-09-19 21:50:15'),
(3, 1000003, 'User logged in.', '2019-09-19 21:50:26'),
(4, 1000003, 'User logged out.', '2019-09-19 21:50:27'),
(5, 1000002, 'User logged in.', '2019-09-19 21:50:32'),
(6, 1000002, 'User logged out.', '2019-09-19 21:50:33'),
(7, 1000001, 'User logged in.', '2019-09-19 21:50:49'),
(8, 1000001, 'User logged out.', '2019-09-19 21:51:29'),
(9, 1000003, 'User logged in.', '2019-09-19 21:51:33'),
(10, 1000003, 'User logged out.', '2019-09-19 21:57:30'),
(11, 1000001, 'User logged in.', '2019-09-19 21:57:36'),
(12, 1000001, 'User logged out.', '2019-09-19 21:58:37'),
(13, 1000003, 'User logged in.', '2019-09-19 21:58:42'),
(14, 1000003, 'User logged out.', '2019-09-19 23:17:52'),
(15, 1000001, 'User logged in.', '2019-09-19 23:18:11'),
(16, 1000001, 'User logged out.', '2019-09-19 23:18:51'),
(17, 1000003, 'User logged in.', '2019-09-19 23:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` bigint(20) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userFirstName` varchar(25) NOT NULL,
  `userLastName` varchar(25) NOT NULL,
  `userPassword` varchar(32) NOT NULL,
  `userPasswordAttempts` int(1) NOT NULL DEFAULT '0',
  `userPrevPassword` text,
  `userPasswordDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userCreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userRole` int(2) NOT NULL DEFAULT '0',
  `userActive` int(1) NOT NULL DEFAULT '0',
  `userActiveDate` text,
  `userForgot` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `userEmail`, `userFirstName`, `userLastName`, `userPassword`, `userPasswordAttempts`, `userPrevPassword`, `userPasswordDate`, `userCreationDate`, `userRole`, `userActive`, `userActiveDate`, `userForgot`) VALUES
(477, 'saad@hussainsbd.com', 'Saad', 's', '202cb962ac59075b964b07152d234b70', 9, NULL, '2020-02-17 09:01:51', '2020-02-17 09:01:51', 10, 1, NULL, NULL),
(1000001, 'accountant@test.com', 'Accountant', 'Person', '519524d3e2c7de2020f4cca2ae373b5b', 0, NULL, '2019-09-19 17:18:18', '2019-09-19 17:18:18', 0, 1, NULL, NULL),
(1000002, 'manager@test.com', 'Manager', 'Person', '5980ba484aeddde546d5e79eb893dc58', 0, NULL, '2019-09-19 18:15:02', '2019-09-19 18:15:02', 10, 1, NULL, NULL),
(1000003, 'administrator@test.com', 'Admins', 'Person', '985de320ae9dc7cb28692edd5b3afa72', 0, NULL, '2019-09-19 20:27:39', '2019-09-19 20:27:39', 20, 1, NULL, NULL),
(1000004, 'jordanallen1332@gmail.com', 'Test', 'Account', 'bcfa73027e3be8d83201da2533b7ff0b', 0, '[\"bcfa73027e3be8d83201da2533b7ff0b\",null,null]', '2019-11-20 21:28:08', '2019-11-20 21:28:08', 0, 0, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`accountID`);

--
-- Indexes for table `accounts_categories`
--
ALTER TABLE `accounts_categories`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `accounts_categories_sub`
--
ALTER TABLE `accounts_categories_sub`
  ADD PRIMARY KEY (`subCategoryID`);

--
-- Indexes for table `entries`
--
ALTER TABLE `entries`
  ADD PRIMARY KEY (`entryID`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`logID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `userEmail` (`userEmail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_categories`
--
ALTER TABLE `accounts_categories`
  MODIFY `categoryID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts_categories_sub`
--
ALTER TABLE `accounts_categories_sub`
  MODIFY `subCategoryID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entries`
--
ALTER TABLE `entries`
  MODIFY `entryID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000044;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `logID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000143;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000005;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
