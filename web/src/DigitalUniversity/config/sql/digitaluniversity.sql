-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 22, 2018 at 03:42 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digitaluniversity`
--

-- --------------------------------------------------------

--
-- Table structure for table `jms_applicant`
--

DROP TABLE IF EXISTS `jms_applicant`;
CREATE TABLE IF NOT EXISTS `jms_applicant` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `applicantID` varchar(40) NOT NULL,
  `JobID` varchar(40) NOT NULL,
  `cvID` varchar(100) NOT NULL,
  `SubmissionDate` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jms_applicant`
--

INSERT INTO `jms_applicant` (`ID`, `applicantID`, `JobID`, `cvID`, `SubmissionDate`) VALUES
(9, 'hbappy79@gmail.com', '2', '7', '2018-08-13 05:03:17'),
(11, 'mkazi078@uottawa.ca', '2', '8', '2018-10-09 11:22:29');

-- --------------------------------------------------------

--
-- Table structure for table `jms_cv`
--

DROP TABLE IF EXISTS `jms_cv`;
CREATE TABLE IF NOT EXISTS `jms_cv` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `applicantID` varchar(40) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `sector` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `profile` varchar(500) NOT NULL,
  `technical_skill` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jms_cv`
--

INSERT INTO `jms_cv` (`ID`, `applicantID`, `Name`, `sector`, `email`, `phone`, `profile`, `technical_skill`) VALUES
(8, 'mkazi078@uottawa.ca', 'Anam Islam', 'Web Designer', 'anamislam000@gmail.com', '(+880) 1965-259846', 'Progressively evolve cross-platform ideas before impactful infomediaries. Energistically visualize tactical initiatives before cross-media catalysts for change.', 'XHTML,CSS,Javascript,Jquery,PHP,CVS / Subversion,OS X,Linux,Windows'),
(7, 'hbappy79@gmail.com', 'dfg', 'dfgh', 'dfgdfg@gmail.com', 'ghfgbh', 'dgbdb', 'xfgvxgvxv');

-- --------------------------------------------------------

--
-- Table structure for table `jms_cv_education`
--

DROP TABLE IF EXISTS `jms_cv_education`;
CREATE TABLE IF NOT EXISTS `jms_cv_education` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `cvID` int(11) NOT NULL,
  `instituition` varchar(45) NOT NULL,
  `subject` varchar(45) NOT NULL,
  `cgpa` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jms_cv_education`
--

INSERT INTO `jms_cv_education` (`ID`, `cvID`, `instituition`, `subject`, `cgpa`) VALUES
(10, 8, 'Khulna University - Khulna', 'Computer Science and Engineering Displine', '4.0'),
(9, 8, 'Khulna University - Khulna', 'Computer Science and Engineering Displine', '4.0'),
(8, 7, 'xfgvbxvb', 'versity', 'xfgvbxgv'),
(7, 7, 'xfgvbxvb', 'versity', 'xfgvbxgv');

-- --------------------------------------------------------

--
-- Table structure for table `jms_cv_experience`
--

DROP TABLE IF EXISTS `jms_cv_experience`;
CREATE TABLE IF NOT EXISTS `jms_cv_experience` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `cvID` int(11) NOT NULL,
  `jobname` varchar(45) NOT NULL,
  `jobposition` varchar(45) NOT NULL,
  `workingyear` varchar(45) NOT NULL,
  `workdetails` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jms_cv_experience`
--

INSERT INTO `jms_cv_experience` (`ID`, `cvID`, `jobname`, `jobposition`, `workingyear`, `workdetails`) VALUES
(10, 8, 'Samsung Inc.', 'Senior Interface Designer', '2005-2007', 'Progressively reconceptualize multifunctional \"outside the box\" thinking through inexpensive methods of empowerment. Compellingly morph extensive niche markets with mission-critical ideas. Phosfluorescently deliver bricks-and-clicks strategic theme areas rather than scalable benefits.'),
(9, 8, 'Samsung Inc.', 'Senior Interface Designer', '2005-2007', 'Progressively reconceptualize multifunctional \"outside the box\" thinking through inexpensive methods of empowerment. Compellingly morph extensive niche markets with mission-critical ideas. Phosfluorescently deliver bricks-and-clicks strategic theme areas rather than scalable benefits.'),
(8, 7, 'xfgvbxv', 'xgvxv', 'fxgbgvx', 'xgbvxgbv'),
(7, 7, 'xfgvbxv', 'xgvxv', 'fxgbgvx', 'xgbvxgbv');

-- --------------------------------------------------------

--
-- Table structure for table `jms_cv_skills`
--

DROP TABLE IF EXISTS `jms_cv_skills`;
CREATE TABLE IF NOT EXISTS `jms_cv_skills` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `cvID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jms_cv_skills`
--

INSERT INTO `jms_cv_skills` (`ID`, `cvID`, `name`, `details`) VALUES
(10, 8, 'Interface Design', 'Credibly streamline mission-critical value with multifunctional functionalities.'),
(9, 8, 'Interface Design', 'Credibly streamline mission-critical value with multifunctional functionalities.'),
(8, 7, 'dfgbfgbv', 'xdfgvxv'),
(7, 7, 'dfgbfgbv', 'xdfgvxv');

-- --------------------------------------------------------

--
-- Table structure for table `jms_job`
--

DROP TABLE IF EXISTS `jms_job`;
CREATE TABLE IF NOT EXISTS `jms_job` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) NOT NULL,
  `Subtitle` varchar(100) NOT NULL,
  `PublishDate` date NOT NULL,
  `Organization` varchar(45) NOT NULL,
  `Qualification` varchar(500) NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `AgeLimit` varchar(45) NOT NULL,
  `EmploymentType` varchar(45) NOT NULL,
  `NumberOfVacancy` int(11) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `ContactNumber` varchar(45) NOT NULL,
  `Salary` varchar(45) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `JobExperience` varchar(45) DEFAULT NULL,
  `LastDateOfApplication` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jms_job`
--

INSERT INTO `jms_job` (`ID`, `Title`, `Subtitle`, `PublishDate`, `Organization`, `Qualification`, `Gender`, `AgeLimit`, `EmploymentType`, `NumberOfVacancy`, `Email`, `ContactNumber`, `Salary`, `Location`, `JobExperience`, `LastDateOfApplication`) VALUES
(2, 'Lecturer', 'This job position is experience, talented of to the University authority', '2018-08-10', 'Khulna University', 'H.S.C 5.0 + S.S.C 4.0', 'Male', '32', 'Permanent', 2, 'hbappy79@gmail.com', '01325659875', '65000', 'Khulna, Bangladesh', '2 years of teaching', '2018-08-23');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course`
--

DROP TABLE IF EXISTS `reg_course`;
CREATE TABLE IF NOT EXISTS `reg_course` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Credit` double NOT NULL,
  `CourseTypeID` varchar(40) NOT NULL,
  `DisciplineID` varchar(40) NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course`
--

INSERT INTO `reg_course` (`ID`, `CourseNo`, `Title`, `Credit`, `CourseTypeID`, `DisciplineID`, `IsDeleted`) VALUES
('{2A038C6A-B6DA-408D-8458-7493D4EE5D6C}', 'cse-3200', 'Web Programming Lab', 1.5, '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 0),
('{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', 'cse-4112', 'Computer Networks Lab', 1.5, '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5} ', 0),
('{683A3D91-D124-44AF-82A3-FB43837A4392}', 'cse-4111', 'Computer Networks', 3, '{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 0),
('{B17BDB32-6D88-4537-9545-65D940E17EEF}', 'cse-2115', 'Advanced Programming Lab', 1.5, '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5} ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_resource`
--

DROP TABLE IF EXISTS `reg_course_resource`;
CREATE TABLE IF NOT EXISTS `reg_course_resource` (
  `CourseID` varchar(40) NOT NULL,
  `ResourceID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_sessional_type`
--

DROP TABLE IF EXISTS `reg_course_sessional_type`;
CREATE TABLE IF NOT EXISTS `reg_course_sessional_type` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_sessional_type`
--

INSERT INTO `reg_course_sessional_type` (`ID`, `Name`) VALUES
('{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}', 'N/A'),
('{45B2147F-5FE0-4CC9-880C-C19EB6323955}', 'physics'),
('{4B342686-B38E-449C-AAD2-1F7DD77E6594}', 'chemistry'),
('{D1E54E03-CDEB-4155-AD0C-27C70A3A490C}', 'ece'),
('{D3F895D3-7389-487F-A604-0BD546DCC764}', 'software'),
('{F1D0443A-EC5D-41C4-94BA-D6F0D9AB1691}', 'hardware');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_student_registration`
--

DROP TABLE IF EXISTS `reg_course_student_registration`;
CREATE TABLE IF NOT EXISTS `reg_course_student_registration` (
  `ID` varchar(40) NOT NULL,
  `Regs_TeacherID` varchar(40) DEFAULT NULL,
  `StudentID` varchar(40) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `SessionID` varchar(40) DEFAULT NULL,
  `YearID` varchar(40) DEFAULT NULL,
  `TermID` varchar(40) DEFAULT NULL,
  `IsRetake` tinyint(1) DEFAULT NULL,
  `Status` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_student_registration`
--

INSERT INTO `reg_course_student_registration` (`ID`, `Regs_TeacherID`, `StudentID`, `CourseID`, `SessionID`, `YearID`, `TermID`, `IsRetake`, `Status`) VALUES
('{31FDEF1E-F280-436A-AFD3-A48BA772D23D}', 'mkazi078@uottawa.ca', 'kashif@gmail.com', '{683A3D91-D124-44AF-82A3-FB43837A4392}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{3CA3ABF7-7FF8-4A32-B328-235861061B72}', 'mkazi078@uottawa.ca', 'zahid@gmail.com', '{683A3D91-D124-44AF-82A3-FB43837A4392}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{B7F17833-430E-489A-9CA6-E9BBE0EFA0FD}', 'mkazi078@uottawa.ca', 'kashif@gmail.com', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{B8B362F3-D164-4082-AA6C-08F3EC73E2A8}', 'mkazi078@uottawa.ca', 'aysha@gmail.com', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{C8AE75F9-1644-48C5-87D0-4AFEC777C122}', 'mkazi078@uottawa.ca', 'zahid@gmail.com', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'submitted'),
('{DBE4ED93-4A97-41CF-B8E3-5E42AEC0246F}', 'mkazi078@uottawa.ca', 'aysha@gmail.com', '{683A3D91-D124-44AF-82A3-FB43837A4392}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_teacher`
--

DROP TABLE IF EXISTS `reg_course_teacher`;
CREATE TABLE IF NOT EXISTS `reg_course_teacher` (
  `ID` varchar(40) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `NoOfTests` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_teacher`
--

INSERT INTO `reg_course_teacher` (`ID`, `CourseID`, `TeacherID`, `SessionID`, `YearID`, `TermID`, `NoOfTests`) VALUES
('{0BA78ECC-A6E7-4EA8-9BFA-6C599F88F76D}', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', 5),
('{C4490FFA-154B-45FE-9773-744B3E6FDFF7}', '{683A3D91-D124-44AF-82A3-FB43837A4392}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', 3);

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_teacher_registration`
--

DROP TABLE IF EXISTS `reg_course_teacher_registration`;
CREATE TABLE IF NOT EXISTS `reg_course_teacher_registration` (
  `ID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_teacher_registration`
--

INSERT INTO `reg_course_teacher_registration` (`ID`, `TeacherID`, `SessionID`, `YearID`, `TermID`) VALUES
('{4D389527-643B-4B05-80AB-E05A6EF8DE2A}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{EA335D18-A1A8-4D15-9C7B-4A4700AD4543}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_type`
--

DROP TABLE IF EXISTS `reg_course_type`;
CREATE TABLE IF NOT EXISTS `reg_course_type` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `SessionalTypeID` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_type`
--

INSERT INTO `reg_course_type` (`ID`, `Name`, `SessionalTypeID`) VALUES
('{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', 'Theory', '{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}'),
('{5F886686-4EB1-48C8-A801-8D46233739D1}', 'Thesis', '{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}'),
('{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', 'Sessional', '{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}');

-- --------------------------------------------------------

--
-- Table structure for table `reg_registration_session`
--

DROP TABLE IF EXISTS `reg_registration_session`;
CREATE TABLE IF NOT EXISTS `reg_registration_session` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_registration_session`
--

INSERT INTO `reg_registration_session` (`ID`, `Name`) VALUES
('{05DA37EB-6C62-45E9-A0E3-7C5C6943F6AD}', '2012-2013'),
('{1399EEA3-B939-4155-B9F3-4DAD4928C4D5}', '2014-2015'),
('{65C2BA57-7231-497A-A5A7-90912259684C}', '2011-2012'),
('{A36A7057-CDB5-4E10-9E61-CCC85C74460E}', '2013-2014'),
('{DFF9E45F-6954-46A1-9088-D930EE460C3F}', '2015-2016'),
('{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '2016-2017');

-- --------------------------------------------------------

--
-- Table structure for table `reg_term`
--

DROP TABLE IF EXISTS `reg_term`;
CREATE TABLE IF NOT EXISTS `reg_term` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_term`
--

INSERT INTO `reg_term` (`ID`, `Name`) VALUES
('{6DE3CF58-3A1A-4D6A-88CF-83F22C27E0BA}', 'Special'),
('{AF8B217E-4E76-41B8-A02A-7115BD4A6BE6}', '2nd'),
('{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '1st');

-- --------------------------------------------------------

--
-- Table structure for table `reg_year`
--

DROP TABLE IF EXISTS `reg_year`;
CREATE TABLE IF NOT EXISTS `reg_year` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_year`
--

INSERT INTO `reg_year` (`ID`, `Name`) VALUES
('{1FAC0F1A-9D60-43F6-AB07-C933D5A4AA30}', 'Phd 1st'),
('{326B168F-58CC-42F3-B71A-DFE8DBBC05E8}', 'MSc 1st'),
('{6780C884-E112-4F58-9503-E2110B615547}', '4th'),
('{9F3A6CBC-0115-4EC2-ABB3-8CCA431F6C2B}', '1st'),
('{A21965E4-4FE4-43AC-A77F-DABAC9B356F2}', '3rd'),
('{ADBEDD3E-D8EA-47AA-A068-C4C703DB4AE6}', 'MSc 2nd'),
('{B9D6CC05-7AD4-4666-80AB-80797A872743}', 'Phd 2nd'),
('{CBE08035-94CD-4610-B4E2-A0E844184056}', 'Phd 4th'),
('{E3823AA6-6BE5-4A07-93EA-FA59DE4F616F}', 'Phd 3rd'),
('{EA335D18-A1A8-4D15-9C7B-4A4700AD4543}', '2nd');

-- --------------------------------------------------------

--
-- Table structure for table `rms_course_marks_result`
--

DROP TABLE IF EXISTS `rms_course_marks_result`;
CREATE TABLE IF NOT EXISTS `rms_course_marks_result` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `TeacherID` varchar(40) DEFAULT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `MarksID` varchar(40) NOT NULL,
  `MarksValue` varchar(200) NOT NULL,
  `Status` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_course_marks_result`
--

INSERT INTO `rms_course_marks_result` (`ID`, `CourseNo`, `TeacherID`, `SessionID`, `YearID`, `TermID`, `StudentID`, `MarksID`, `MarksValue`, `Status`) VALUES
('{44C3C858-AFC6-4592-B160-10B921BF381C}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020202', '{7E24DC07-CD2C-4360-A6E9-05A363C2EA08}', '10,25,25,25', '');

-- --------------------------------------------------------

--
-- Table structure for table `rms_course_marks_result_publish`
--

DROP TABLE IF EXISTS `rms_course_marks_result_publish`;
CREATE TABLE IF NOT EXISTS `rms_course_marks_result_publish` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `TeacherID` varchar(40) DEFAULT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `HeaderID` varchar(200) NOT NULL,
  `HeaderName` varchar(200) NOT NULL,
  `HeaderMax` varchar(200) NOT NULL,
  `MarksValue` varchar(200) NOT NULL,
  `MarksTotal` varchar(20) NOT NULL,
  `Grades` varchar(200) NOT NULL,
  `GradeRanges` varchar(300) NOT NULL,
  `FinalGrade` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rms_course_marks_tests`
--

DROP TABLE IF EXISTS `rms_course_marks_tests`;
CREATE TABLE IF NOT EXISTS `rms_course_marks_tests` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `MarksValue` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_course_marks_tests`
--

INSERT INTO `rms_course_marks_tests` (`ID`, `CourseNo`, `TeacherID`, `SessionID`, `YearID`, `TermID`, `StudentID`, `MarksValue`) VALUES
('{037E6C4F-CAAE-4587-B3E1-1CC6E59101A4}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020203', '12,20,20'),
('{222F2596-5F55-442C-80EA-F5AE7F466C70}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020202', '15,25,20'),
('{71D63076-9096-4CAA-8D6D-782A25B076A7}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020208', '15,20,20'),
('{B6BB339D-E40B-4CC4-8D34-07017EE2BE44}', 'cse-4112', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020208', '10,30,30,0,0'),
('{DBF1823F-0DF9-4E8F-9233-5AB1545BC1B7}', 'cse-4112', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020202', '20,20,20,0,0');

-- --------------------------------------------------------

--
-- Table structure for table `rms_grade_setup`
--

DROP TABLE IF EXISTS `rms_grade_setup`;
CREATE TABLE IF NOT EXISTS `rms_grade_setup` (
  `ID` varchar(40) NOT NULL,
  `Grades` varchar(200) NOT NULL,
  `Ranges` varchar(300) NOT NULL,
  `IsDefault` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_grade_setup`
--

INSERT INTO `rms_grade_setup` (`ID`, `Grades`, `Ranges`, `IsDefault`) VALUES
('{FC3DBA75-AF9C-4533-825E-D8A01D076F60}', 'F,E,D,C,C+,B,B+,A-,A,A+', '0-39,40-44,45-49,50-54,55-59,60-64,65-69,70-74,75-79,80-100', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rms_marks_setup`
--

DROP TABLE IF EXISTS `rms_marks_setup`;
CREATE TABLE IF NOT EXISTS `rms_marks_setup` (
  `ID` varchar(40) NOT NULL,
  `CourseTypeID` varchar(40) NOT NULL,
  `HeaderID` varchar(200) NOT NULL,
  `HeaderName` varchar(200) NOT NULL,
  `HeaderMax` varchar(200) NOT NULL,
  `IsDefault` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_marks_setup`
--

INSERT INTO `rms_marks_setup` (`ID`, `CourseTypeID`, `HeaderID`, `HeaderName`, `HeaderMax`, `IsDefault`) VALUES
('{236BBFE8-E4CF-4EEF-9C54-AD83FEF42ADB}', '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', 'att,assess,viva', 'Attendance,Assessment,Viva', '10,60,30', 1),
('{7E24DC07-CD2C-4360-A6E9-05A363C2EA08}', '{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', 'att,assess,seca,secb', 'Attendance,Assessment,Section A,Section B', '10,30,30,30,30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ums_discipline`
--

DROP TABLE IF EXISTS `ums_discipline`;
CREATE TABLE IF NOT EXISTS `ums_discipline` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `ShortCode` varchar(20) DEFAULT NULL,
  `SchoolID` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_discipline`
--

INSERT INTO `ums_discipline` (`ID`, `Name`, `ShortCode`, `SchoolID`) VALUES
('{0CF37516-06FE-41CD-93AD-D2D1652509D6}', 'Mathematics', 'MATH', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{560A0FC0-6221-497D-8D41-E584EE4BBEE3}', 'Architecture', 'ARCH', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{63F3C00B-6168-4FBD-AB01-7A1FE413BDDE}', 'Forestry and Wood Technology', 'FWT', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{AF41CC9F-3BCD-4952-9D02-17184CC40C79}', 'Urban and Rural Planning', 'URP', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{E065BBA7-D0C5-4DFA-9768-81B6F056EB4A}', 'Foresty and Marine Resource Technology', 'FMRT', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{E7280448-E379-424E-A11D-357F4334AC8D}', 'Physics', 'PHY', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'Computer Science and Engineering', 'CSE', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}');

-- --------------------------------------------------------

--
-- Table structure for table `ums_permission`
--

DROP TABLE IF EXISTS `ums_permission`;
CREATE TABLE IF NOT EXISTS `ums_permission` (
  `TableID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  PRIMARY KEY (`TableID`)
) ENGINE=InnoDB AUTO_INCREMENT=1693 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_permission`
--

INSERT INTO `ums_permission` (`TableID`, `ID`, `Name`, `Category`) VALUES
(1569, 'COURSE_C', 'COURSE_C', 'COURSE'),
(1570, 'COURSE_R', 'COURSE_R', 'COURSE'),
(1571, 'COURSE_U', 'COURSE_U', 'COURSE'),
(1572, 'COURSE_D', 'COURSE_D', 'COURSE'),
(1573, 'COURSE_TYPE_C', 'COURSE_TYPE_C', 'COURSE TYPE'),
(1574, 'COURSE_TYPE_R', 'COURSE_TYPE_R', 'COURSE TYPE'),
(1575, 'COURSE_TYPE_U', 'COURSE_TYPE_U', 'COURSE TYPE'),
(1576, 'COURSE_TYPE_D', 'COURSE_TYPE_D', 'COURSE TYPE'),
(1577, 'COURSE_SESSIONAL_TYPE_C', 'COURSE_SESSIONAL_TYPE_C', 'COURSE SESSIONAL TYPE'),
(1578, 'COURSE_SESSIONAL_TYPE_R', 'COURSE_SESSIONAL_TYPE_R', 'COURSE SESSIONAL TYPE'),
(1579, 'COURSE_SESSIONAL_TYPE_U', 'COURSE_SESSIONAL_TYPE_U', 'COURSE SESSIONAL TYPE'),
(1580, 'COURSE_SESSIONAL_TYPE_D', 'COURSE_SESSIONAL_TYPE_D', 'COURSE SESSIONAL TYPE'),
(1581, 'CLUB_C', 'CLUB_C', 'CLUB'),
(1582, 'CLUB_R', 'CLUB_R', 'CLUB'),
(1583, 'CLUB_U', 'CLUB_U', 'CLUB'),
(1584, 'CLUB_D', 'CLUB_D', 'CLUB'),
(1585, 'DISCUSSION_C', 'DISCUSSION_C', 'DISCUSSION'),
(1586, 'DISCUSSION_R', 'DISCUSSION_R', 'DISCUSSION'),
(1587, 'DISCUSSION_U', 'DISCUSSION_U', 'DISCUSSION'),
(1588, 'DISCUSSION_D', 'DISCUSSION_D', 'DISCUSSION'),
(1589, 'DISCUSSION_CAT_C', 'DISCUSSION_CAT_C', 'DISCUSSION CATEGORY'),
(1590, 'DISCUSSION_CAT_R', 'DISCUSSION_CAT_R', 'DISCUSSION CATEGORY'),
(1591, 'DISCUSSION_CAT_U', 'DISCUSSION_CAT_U', 'DISCUSSION CATEGORY'),
(1592, 'DISCUSSION_CAT_D', 'DISCUSSION_CAT_D', 'DISCUSSION CATEGORY'),
(1593, 'DISCUSSION_COMMENT_C', 'DISCUSSION_COMMENT_C', 'DISCUSSION COMMENT'),
(1594, 'DISCUSSION_COMMENT_R', 'DISCUSSION_COMMENT_R', 'DISCUSSION COMMENT'),
(1595, 'DISCUSSION_COMMENT_U', 'DISCUSSION_COMMENT_U', 'DISCUSSION COMMENT'),
(1596, 'DISCUSSION_COMMENT_D', 'DISCUSSION_COMMENT_D', 'DISCUSSION COMMENT'),
(1597, 'DISCIPLINE_C', 'DISCIPLINE_C', 'DISCIPLINE'),
(1598, 'DISCIPLINE_R', 'DISCIPLINE_R', 'DISCIPLINE'),
(1599, 'DISCIPLINE_U', 'DISCIPLINE_U', 'DISCIPLINE'),
(1600, 'DISCIPLINE_D', 'DISCIPLINE_D', 'DISCIPLINE'),
(1601, 'FILE_C', 'FILE_C', 'FILE'),
(1602, 'FILE_R', 'FILE_R', 'FILE'),
(1603, 'FILE_U', 'FILE_U', 'FILE'),
(1604, 'FILE_D', 'FILE_D', 'FILE'),
(1605, 'PERMISSION_C', 'PERMISSION_C', 'PERMISSION'),
(1606, 'PERMISSION_R', 'PERMISSION_R', 'PERMISSION'),
(1607, 'PERMISSION_U', 'PERMISSION_U', 'PERMISSION'),
(1608, 'PERMISSION_D', 'PERMISSION_D', 'PERMISSION'),
(1609, 'POSITION_C', 'POSITION_C', 'POSITION'),
(1610, 'POSITION_R', 'POSITION_R', 'POSITION'),
(1611, 'POSITION_U', 'POSITION_U', 'POSITION'),
(1612, 'POSITION_D', 'POSITION_D', 'POSITION'),
(1613, 'PROJECT_C', 'PROJECT_C', 'PROJECT'),
(1614, 'PROJECT_R', 'PROJECT_R', 'PROJECT'),
(1615, 'PROJECT_U', 'PROJECT_U', 'PROJECT'),
(1616, 'PROJECT_D', 'PROJECT_D', 'PROJECT'),
(1617, 'QUESTION_C', 'QUESTION_C', 'QUESTION'),
(1618, 'QUESTION_R', 'QUESTION_R', 'QUESTION'),
(1619, 'QUESTION_U', 'QUESTION_U', 'QUESTION'),
(1620, 'QUESTION_D', 'QUESTION_D', 'QUESTION'),
(1621, 'REGISTRATION_C', 'REGISTRATION_C', 'REGISTRATION'),
(1622, 'REGISTRATION_R', 'REGISTRATION_R', 'REGISTRATION'),
(1623, 'REGISTRATION_U', 'REGISTRATION_U', 'REGISTRATION'),
(1624, 'REGISTRATION_D', 'REGISTRATION_D', 'REGISTRATION'),
(1625, 'RESULT_C', 'RESULT_C', 'RESULT'),
(1626, 'RESULT_R', 'RESULT_R', 'RESULT'),
(1627, 'RESULT_U', 'RESULT_U', 'RESULT'),
(1628, 'RESULT_D', 'RESULT_D', 'RESULT'),
(1629, 'ATTENDANCE_C', 'ATTENDANCE_C', 'ATTENDANCE'),
(1630, 'ATTENDANCE_R', 'ATTENDANCE_R', 'ATTENDANCE'),
(1631, 'ATTENDANCE_U', 'ATTENDANCE_U', 'ATTENDANCE'),
(1632, 'ATTENDANCE_D', 'ATTENDANCE_D', 'ATTENDANCE'),
(1633, 'MARKS_SETUP_C', 'MARKS_SETUP_C', 'MARKS_SETUP'),
(1634, 'MARKS_SETUP_R', 'MARKS_SETUP_R', 'MARKS_SETUP'),
(1635, 'MARKS_SETUP_U', 'MARKS_SETUP_U', 'MARKS_SETUP'),
(1636, 'MARKS_SETUP_D', 'MARKS_SETUP_D', 'MARKS_SETUP'),
(1637, 'GRADE_SETUP_C', 'GRADE_SETUP_C', 'GRADE_SETUP'),
(1638, 'GRADE_SETUP_R', 'GRADE_SETUP_R', 'GRADE_SETUP'),
(1639, 'GRADE_SETUP_U', 'GRADE_SETUP_U', 'GRADE_SETUP'),
(1640, 'GRADE_SETUP_D', 'GRADE_SETUP_D', 'GRADE_SETUP'),
(1641, 'ROLE_C', 'ROLE_C', 'ROLE'),
(1642, 'ROLE_R', 'ROLE_R', 'ROLE'),
(1643, 'ROLE_U', 'ROLE_U', 'ROLE'),
(1644, 'ROLE_D', 'ROLE_D', 'ROLE'),
(1645, 'SCHOOL_C', 'SCHOOL_C', 'SCHOOL'),
(1646, 'SCHOOL_R', 'SCHOOL_R', 'SCHOOL'),
(1647, 'SCHOOL_U', 'SCHOOL_U', 'SCHOOL'),
(1648, 'SCHOOL_D', 'SCHOOL_D', 'SCHOOL'),
(1649, 'SESSION_C', 'SESSION_C', 'SESSION'),
(1650, 'SESSION_R', 'SESSION_R', 'SESSION'),
(1651, 'SESSION_U', 'SESSION_U', 'SESSION'),
(1652, 'SESSION_D', 'SESSION_D', 'SESSION'),
(1653, 'SURVEY_C', 'SURVEY_C', 'SURVEY'),
(1654, 'SURVEY_R', 'SURVEY_R', 'SURVEY'),
(1655, 'SURVEY_U', 'SURVEY_U', 'SURVEY'),
(1656, 'SURVEY_D', 'SURVEY_D', 'SURVEY'),
(1657, 'SURVEY_QUESTION_C', 'SURVEY_QUESTION_C', 'SURVEY QUESTION'),
(1658, 'SURVEY_QUESTION_R', 'SURVEY_QUESTION_R', 'SURVEY QUESTION'),
(1659, 'SURVEY_QUESTION_U', 'SURVEY_QUESTION_U', 'SURVEY QUESTION'),
(1660, 'SURVEY_QUESTION_D', 'SURVEY_QUESTION_D', 'SURVEY QUESTION'),
(1661, 'SURVEY_QUESTION_TYPE_C', 'SURVEY_QUESTION_TYPE_C', 'SURVEY QUESTION TYPE'),
(1662, 'SURVEY_QUESTION_TYPE_R', 'SURVEY_QUESTION_TYPE_R', 'SURVEY QUESTION TYPE'),
(1663, 'SURVEY_QUESTION_TYPE_U', 'SURVEY_QUESTION_TYPE_U', 'SURVEY QUESTION TYPE'),
(1664, 'SURVEY_QUESTION_TYPE_D', 'SURVEY_QUESTION_TYPE_D', 'SURVEY QUESTION TYPE'),
(1665, 'SURVEY_QUESTION_FILLUP_C', 'SURVEY_QUESTION_FILLUP_C', 'SURVEY QUESTION FILLUP'),
(1666, 'SURVEY_QUESTION_FILLUP_R', 'SURVEY_QUESTION_FILLUP_R', 'SURVEY QUESTION FILLUP'),
(1667, 'SURVEY_QUESTION_FILLUP_U', 'SURVEY_QUESTION_FILLUP_U', 'SURVEY QUESTION FILLUP'),
(1668, 'SURVEY_QUESTION_FILLUP_D', 'SURVEY_QUESTION_FILLUP_D', 'SURVEY QUESTION FILLUP'),
(1669, 'TERM_C', 'TERM_C', 'TERM'),
(1670, 'TERM_R', 'TERM_R', 'TERM'),
(1671, 'TERM_U', 'TERM_U', 'TERM'),
(1672, 'TERM_D', 'TERM_D', 'TERM'),
(1673, 'USER_C', 'USER_C', 'USER'),
(1674, 'USER_R', 'USER_R', 'USER'),
(1675, 'USER_U', 'USER_U', 'USER'),
(1676, 'USER_D', 'USER_D', 'USER'),
(1677, 'YEAR_C', 'YEAR_C', 'YEAR'),
(1678, 'YEAR_R', 'YEAR_R', 'YEAR'),
(1679, 'YEAR_U', 'YEAR_U', 'YEAR'),
(1680, 'YEAR_D', 'YEAR_D', 'YEAR'),
(1681, 'VIDEO_C', 'VIDEO_C', 'VIDEO'),
(1682, 'VIDEO_R', 'VIDEO_R', 'VIDEO'),
(1683, 'VIDEO_U', 'VIDEO_U', 'VIDEO'),
(1684, 'VIDEO_D', 'VIDEO_D', 'VIDEO'),
(1685, 'VIDEO_COMMENT_C', 'VIDEO_COMMENT_C', 'VIDEO COMMENT'),
(1686, 'VIDEO_COMMENT_R', 'VIDEO_COMMENT_R', 'VIDEO COMMENT'),
(1687, 'VIDEO_COMMENT_U', 'VIDEO_COMMENT_U', 'VIDEO COMMENT'),
(1688, 'VIDEO_COMMENT_D', 'VIDEO_COMMENT_D', 'VIDEO COMMENT'),
(1689, 'JOB_C', 'JOB_C', 'JOB'),
(1690, 'JOB_R', 'JOB_R', 'JOB'),
(1691, 'JOB_U', 'JOB_U', 'JOB'),
(1692, 'JOB_D', 'JOB_D', 'JOB');

-- --------------------------------------------------------

--
-- Table structure for table `ums_position`
--

DROP TABLE IF EXISTS `ums_position`;
CREATE TABLE IF NOT EXISTS `ums_position` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_position`
--

INSERT INTO `ums_position` (`ID`, `Name`) VALUES
('{1BFE76DB-C2AA-4FAA-A23B-F43E6150A2F6}', 'Section Officer'),
('{2E024DF5-BD45-4EF2-A5E3-43BCA3E9777F}', 'Pro-vice Chancellor'),
('{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}', 'Assistant Professor'),
('{7CDA1F32-A2F8-4469-B5A8-C2038FCE1F9A}', 'Lecturer'),
('{818DE12F-60CC-42E4-BAEC-48EAAED65179}', 'Dean of School'),
('{928EE9FF-E02D-470F-9A6A-AD0EB38B848F}', 'Vice Chancellor'),
('{92FDDA3F-1E91-4AA3-918F-EB595F85790C}', 'Daywise Worker'),
('{932CB0EE-76C2-448E-A40E-2D167EECC479}', 'Registrar'),
('{ADA027D3-21C1-47AF-A21D-759CAFCFE58D}', 'Assistant Registrar'),
('{B76EB035-EA26-4CEB-B029-1C6129574D98}', 'Librarian'),
('{B78C7A7B-4D38-4025-8170-7B8C9F291946}', 'Head of Discipline'),
('{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}', 'Associate Professor'),
('{EB4880E2-01B3-4C6E-A2C9-89B6E5427C0A}', 'Professor');

-- --------------------------------------------------------

--
-- Table structure for table `ums_role`
--

DROP TABLE IF EXISTS `ums_role`;
CREATE TABLE IF NOT EXISTS `ums_role` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_role`
--

INSERT INTO `ums_role` (`ID`, `Name`) VALUES
('administrator', 'Administrator'),
('registration coordinator', 'Registration Coordinator'),
('student', 'Student'),
('stuff', 'Stuff'),
('tabulator', 'Tabulator'),
('teacher', 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `ums_role_permission`
--

DROP TABLE IF EXISTS `ums_role_permission`;
CREATE TABLE IF NOT EXISTS `ums_role_permission` (
  `Row` int(11) NOT NULL AUTO_INCREMENT,
  `RoleID` varchar(40) NOT NULL,
  `PermissionID` varchar(100) NOT NULL,
  PRIMARY KEY (`Row`)
) ENGINE=InnoDB AUTO_INCREMENT=2205 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_role_permission`
--

INSERT INTO `ums_role_permission` (`Row`, `RoleID`, `PermissionID`) VALUES
(1453, 'teacher', 'COURSE_C'),
(1454, 'teacher', 'COURSE_D'),
(1455, 'teacher', 'COURSE_R'),
(1456, 'teacher', 'COURSE_U'),
(1457, 'teacher', 'DISCUSSION_C'),
(1458, 'teacher', 'DISCUSSION_D'),
(1459, 'teacher', 'DISCUSSION_R'),
(1460, 'teacher', 'DISCUSSION_U'),
(1461, 'teacher', 'DISCUSSION_CAT_C'),
(1462, 'teacher', 'DISCUSSION_CAT_D'),
(1463, 'teacher', 'DISCUSSION_CAT_R'),
(1464, 'teacher', 'DISCUSSION_CAT_U'),
(1465, 'teacher', 'DISCUSSION_COMMENT_C'),
(1466, 'teacher', 'DISCUSSION_COMMENT_D'),
(1467, 'teacher', 'DISCUSSION_COMMENT_R'),
(1468, 'teacher', 'DISCUSSION_COMMENT_U'),
(1469, 'teacher', 'FILE_C'),
(1470, 'teacher', 'FILE_D'),
(1471, 'teacher', 'FILE_R'),
(1472, 'teacher', 'FILE_U'),
(1473, 'teacher', 'PROJECT_C'),
(1474, 'teacher', 'PROJECT_D'),
(1475, 'teacher', 'PROJECT_R'),
(1476, 'teacher', 'PROJECT_U'),
(1477, 'teacher', 'QUESTION_C'),
(1478, 'teacher', 'QUESTION_D'),
(1479, 'teacher', 'QUESTION_R'),
(1480, 'teacher', 'QUESTION_U'),
(1481, 'teacher', 'REGISTRATION_C'),
(1482, 'teacher', 'REGISTRATION_D'),
(1483, 'teacher', 'REGISTRATION_R'),
(1484, 'teacher', 'REGISTRATION_U'),
(1485, 'teacher', 'RESULT_C'),
(1486, 'teacher', 'RESULT_D'),
(1487, 'teacher', 'RESULT_R'),
(1488, 'teacher', 'RESULT_U'),
(2048, 'administrator', 'ATTENDANCE_C'),
(2049, 'administrator', 'ATTENDANCE_R'),
(2050, 'administrator', 'ATTENDANCE_U'),
(2051, 'administrator', 'ATTENDANCE_D'),
(2052, 'administrator', 'CLUB_C'),
(2053, 'administrator', 'CLUB_R'),
(2054, 'administrator', 'CLUB_U'),
(2055, 'administrator', 'CLUB_D'),
(2056, 'administrator', 'COURSE_C'),
(2057, 'administrator', 'COURSE_R'),
(2058, 'administrator', 'COURSE_U'),
(2059, 'administrator', 'COURSE_D'),
(2060, 'administrator', 'COURSE_SESSIONAL_TYPE_C'),
(2061, 'administrator', 'COURSE_SESSIONAL_TYPE_R'),
(2062, 'administrator', 'COURSE_SESSIONAL_TYPE_U'),
(2063, 'administrator', 'COURSE_SESSIONAL_TYPE_D'),
(2064, 'administrator', 'COURSE_TYPE_C'),
(2065, 'administrator', 'COURSE_TYPE_R'),
(2066, 'administrator', 'COURSE_TYPE_U'),
(2067, 'administrator', 'COURSE_TYPE_D'),
(2068, 'administrator', 'DISCIPLINE_C'),
(2069, 'administrator', 'DISCIPLINE_R'),
(2070, 'administrator', 'DISCIPLINE_U'),
(2071, 'administrator', 'DISCIPLINE_D'),
(2072, 'administrator', 'DISCUSSION_C'),
(2073, 'administrator', 'DISCUSSION_R'),
(2074, 'administrator', 'DISCUSSION_U'),
(2075, 'administrator', 'DISCUSSION_D'),
(2076, 'administrator', 'DISCUSSION_CAT_C'),
(2077, 'administrator', 'DISCUSSION_CAT_R'),
(2078, 'administrator', 'DISCUSSION_CAT_U'),
(2079, 'administrator', 'DISCUSSION_CAT_D'),
(2080, 'administrator', 'DISCUSSION_COMMENT_C'),
(2081, 'administrator', 'DISCUSSION_COMMENT_R'),
(2082, 'administrator', 'DISCUSSION_COMMENT_U'),
(2083, 'administrator', 'DISCUSSION_COMMENT_D'),
(2084, 'administrator', 'FILE_C'),
(2085, 'administrator', 'FILE_R'),
(2086, 'administrator', 'FILE_U'),
(2087, 'administrator', 'FILE_D'),
(2088, 'administrator', 'GRADE_SETUP_C'),
(2089, 'administrator', 'GRADE_SETUP_R'),
(2090, 'administrator', 'GRADE_SETUP_U'),
(2091, 'administrator', 'GRADE_SETUP_D'),
(2092, 'administrator', 'JOB_C'),
(2093, 'administrator', 'JOB_R'),
(2094, 'administrator', 'JOB_U'),
(2095, 'administrator', 'JOB_D'),
(2096, 'administrator', 'MARKS_SETUP_C'),
(2097, 'administrator', 'MARKS_SETUP_R'),
(2098, 'administrator', 'MARKS_SETUP_U'),
(2099, 'administrator', 'MARKS_SETUP_D'),
(2100, 'administrator', 'PERMISSION_C'),
(2101, 'administrator', 'PERMISSION_R'),
(2102, 'administrator', 'PERMISSION_U'),
(2103, 'administrator', 'PERMISSION_D'),
(2104, 'administrator', 'POSITION_C'),
(2105, 'administrator', 'POSITION_R'),
(2106, 'administrator', 'POSITION_U'),
(2107, 'administrator', 'POSITION_D'),
(2108, 'administrator', 'PROJECT_C'),
(2109, 'administrator', 'PROJECT_R'),
(2110, 'administrator', 'PROJECT_U'),
(2111, 'administrator', 'PROJECT_D'),
(2112, 'administrator', 'QUESTION_C'),
(2113, 'administrator', 'QUESTION_R'),
(2114, 'administrator', 'QUESTION_U'),
(2115, 'administrator', 'QUESTION_D'),
(2116, 'administrator', 'REGISTRATION_C'),
(2117, 'administrator', 'REGISTRATION_R'),
(2118, 'administrator', 'REGISTRATION_U'),
(2119, 'administrator', 'REGISTRATION_D'),
(2120, 'administrator', 'RESULT_C'),
(2121, 'administrator', 'RESULT_R'),
(2122, 'administrator', 'RESULT_U'),
(2123, 'administrator', 'RESULT_D'),
(2124, 'administrator', 'ROLE_C'),
(2125, 'administrator', 'ROLE_R'),
(2126, 'administrator', 'ROLE_U'),
(2127, 'administrator', 'ROLE_D'),
(2128, 'administrator', 'SCHOLARSHIP_C'),
(2129, 'administrator', 'SCHOLARSHIP_R'),
(2130, 'administrator', 'SCHOLARSHIP_U'),
(2131, 'administrator', 'SCHOLARSHIP_D'),
(2132, 'administrator', 'SCHOOL_C'),
(2133, 'administrator', 'SCHOOL_R'),
(2134, 'administrator', 'SCHOOL_U'),
(2135, 'administrator', 'SCHOOL_D'),
(2136, 'administrator', 'SESSION_C'),
(2137, 'administrator', 'SESSION_R'),
(2138, 'administrator', 'SESSION_U'),
(2139, 'administrator', 'SESSION_D'),
(2140, 'administrator', 'SURVEY_C'),
(2141, 'administrator', 'SURVEY_R'),
(2142, 'administrator', 'SURVEY_U'),
(2143, 'administrator', 'SURVEY_D'),
(2144, 'administrator', 'SURVEY_QUESTION_C'),
(2145, 'administrator', 'SURVEY_QUESTION_R'),
(2146, 'administrator', 'SURVEY_QUESTION_U'),
(2147, 'administrator', 'SURVEY_QUESTION_D'),
(2148, 'administrator', 'SURVEY_QUESTION_FILLUP_C'),
(2149, 'administrator', 'SURVEY_QUESTION_FILLUP_R'),
(2150, 'administrator', 'SURVEY_QUESTION_FILLUP_U'),
(2151, 'administrator', 'SURVEY_QUESTION_FILLUP_D'),
(2152, 'administrator', 'SURVEY_QUESTION_TYPE_C'),
(2153, 'administrator', 'SURVEY_QUESTION_TYPE_R'),
(2154, 'administrator', 'SURVEY_QUESTION_TYPE_U'),
(2155, 'administrator', 'SURVEY_QUESTION_TYPE_D'),
(2156, 'administrator', 'TERM_C'),
(2157, 'administrator', 'TERM_R'),
(2158, 'administrator', 'TERM_U'),
(2159, 'administrator', 'TERM_D'),
(2160, 'administrator', 'USER_C'),
(2161, 'administrator', 'USER_R'),
(2162, 'administrator', 'USER_U'),
(2163, 'administrator', 'USER_D'),
(2164, 'administrator', 'VIDEO_C'),
(2165, 'administrator', 'VIDEO_R'),
(2166, 'administrator', 'VIDEO_U'),
(2167, 'administrator', 'VIDEO_D'),
(2168, 'administrator', 'VIDEO_COMMENT_C'),
(2169, 'administrator', 'VIDEO_COMMENT_R'),
(2170, 'administrator', 'VIDEO_COMMENT_U'),
(2171, 'administrator', 'VIDEO_COMMENT_D'),
(2172, 'administrator', 'YEAR_C'),
(2173, 'administrator', 'YEAR_R'),
(2174, 'administrator', 'YEAR_U'),
(2175, 'administrator', 'YEAR_D'),
(2176, 'student', 'CLUB_C'),
(2177, 'student', 'CLUB_R'),
(2178, 'student', 'CLUB_U'),
(2179, 'student', 'CLUB_D'),
(2180, 'student', 'DISCUSSION_C'),
(2181, 'student', 'DISCUSSION_R'),
(2182, 'student', 'DISCUSSION_U'),
(2183, 'student', 'DISCUSSION_D'),
(2184, 'student', 'DISCUSSION_COMMENT_C'),
(2185, 'student', 'DISCUSSION_COMMENT_R'),
(2186, 'student', 'DISCUSSION_COMMENT_U'),
(2187, 'student', 'DISCUSSION_COMMENT_D'),
(2188, 'student', 'JOB_R'),
(2189, 'student', 'PROJECT_C'),
(2190, 'student', 'PROJECT_R'),
(2191, 'student', 'PROJECT_U'),
(2192, 'student', 'PROJECT_D'),
(2193, 'student', 'QUESTION_C'),
(2194, 'student', 'QUESTION_R'),
(2195, 'student', 'QUESTION_U'),
(2196, 'student', 'QUESTION_D'),
(2197, 'student', 'REGISTRATION_R'),
(2198, 'student', 'RESULT_R'),
(2199, 'student', 'SCHOLARSHIP_R'),
(2200, 'student', 'USER_R'),
(2201, 'student', 'VIDEO_C'),
(2202, 'student', 'VIDEO_R'),
(2203, 'student', 'VIDEO_U'),
(2204, 'student', 'VIDEO_D');

-- --------------------------------------------------------

--
-- Table structure for table `ums_school`
--

DROP TABLE IF EXISTS `ums_school`;
CREATE TABLE IF NOT EXISTS `ums_school` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `DeanID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_school`
--

INSERT INTO `ums_school` (`ID`, `Name`, `DeanID`) VALUES
('{39DDC0C2-CFC2-4246-8748-8812B1751A5C}', 'Science Engineering and Technology', ''),
('{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}', 'Life Science', ''),
('{86E0F021-B30D-48D2-B177-247180633C5E}', 'Social Science', ''),
('{879375F7-0A15-4705-AC90-C6786D279EF1}', 'Law and Humanities', ''),
('{CE09AA38-205B-4F50-A0E0-14DB8686C912}', 'Fine Arts', '');

-- --------------------------------------------------------

--
-- Table structure for table `ums_user`
--

DROP TABLE IF EXISTS `ums_user`;
CREATE TABLE IF NOT EXISTS `ums_user` (
  `ID` varchar(40) NOT NULL,
  `UniversityID` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `MiddleName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `DisciplineID` varchar(40) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `IsLogged` varchar(10) DEFAULT NULL,
  `IsArchived` varchar(10) DEFAULT NULL,
  `IsDeleted` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `UniversityID` (`UniversityID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user`
--

INSERT INTO `ums_user` (`ID`, `UniversityID`, `Email`, `Password`, `FirstName`, `MiddleName`, `LastName`, `DisciplineID`, `Status`, `IsLogged`, `IsArchived`, `IsDeleted`) VALUES
('aysha@gmail.com', '020208', 'aysha@gmail.com', '$2y$10$pJX46d.T.jkANrRShAm0qOMYkYJ/YbNfu09BFmcmMiYGKfuuEcWgO', 'Aysha', 'mrs', 'Akther', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('hbappy79@gmail.com', '160219', 'hbappy79@gmail.com', '$2y$10$7XQkM5p0LhPtpJVLoyvuwuYOKz1IWiMwHsW.wO7DfwOcfkZ1Jt9QO', 'Md.', 'Hadiuzzaman', 'Bappy', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('kashif@gmail.com', '020202', 'kashif@gmail.com', '$2y$10$pM7S85LE300vkDhYnFIz0.WKfpSPJLMNzTS4y1wLCH0TeR0qno27q', 'Kashif', 'Nizam', 'Khan', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('mkazi078@uottawa.ca', '020229', 'mkazi078@uottawa.ca', '$2y$10$dtsgRMEMbm6XNRtEkSpfnOZCvuCx3kt4Feait6sk7K7wAo7Og5p4m', 'Kazi', 'Masudul', 'Alam', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('zahid@gmail.com', '020203', 'zahid@gmail.com', '$2y$10$nLZhZRneURR.v2AFqWw9KOe6/J60pCV/ioBnJnruw5H/Xf3x0lFy6', 'Zahidul', '', 'Islam', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_details`
--

DROP TABLE IF EXISTS `ums_user_details`;
CREATE TABLE IF NOT EXISTS `ums_user_details` (
  `ID` varchar(40) NOT NULL,
  `FatherName` varchar(100) DEFAULT NULL,
  `MotherName` varchar(100) DEFAULT NULL,
  `PermanentAddress` varchar(200) DEFAULT NULL,
  `HomePhone` varchar(20) DEFAULT NULL,
  `CurrentAddress` varchar(200) DEFAULT NULL,
  `MobilePhone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_details`
--

INSERT INTO `ums_user_details` (`ID`, `FatherName`, `MotherName`, `PermanentAddress`, `HomePhone`, `CurrentAddress`, `MobilePhone`) VALUES
('aysha@gmail.com', 'f', 'm', 'Dr. Kazi Masudul Alam', '12313123123', 'Computer Science and Engineering Discipline, Khulna University', '45 '),
('hbappy79@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('kashif@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('mkazi078@uottawa.ca', 'Kazi Shahidul Alam', 'Hosneara Jahan', '49/2, Rokon Uddin Sarak, East Baniakhamar, Khulna', '0417223344', 'Same', '01711149360 '),
('zahid@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_discipline`
--

DROP TABLE IF EXISTS `ums_user_discipline`;
CREATE TABLE IF NOT EXISTS `ums_user_discipline` (
  `UserID` varchar(40) NOT NULL,
  `DisciplineID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_position`
--

DROP TABLE IF EXISTS `ums_user_position`;
CREATE TABLE IF NOT EXISTS `ums_user_position` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(40) NOT NULL,
  `PositionID` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_position`
--

INSERT INTO `ums_user_position` (`ID`, `UserID`, `PositionID`) VALUES
(50, 'aysha@gmail.com', '{7CDA1F32-A2F8-4469-B5A8-C2038FCE1F9A}'),
(51, 'mkazi078@uottawa.ca', '{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}');

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_role`
--

DROP TABLE IF EXISTS `ums_user_role`;
CREATE TABLE IF NOT EXISTS `ums_user_role` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(40) NOT NULL,
  `RoleID` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_role`
--

INSERT INTO `ums_user_role` (`ID`, `UserID`, `RoleID`) VALUES
(122, 'middle@test.com', 'student'),
(123, 'middle@test.com', 'student'),
(124, 'middle@test.com', 'student'),
(125, 'middle@test.com', 'student'),
(126, 'middle@test.com', 'student'),
(127, 'middle@test.com', 'student'),
(128, 'middle@test.com', 'student'),
(129, 'middle@test.com', 'student'),
(130, 'middle@test.com', 'student'),
(131, 'middle@test.com', 'student'),
(132, 'middle@test.com', 'student'),
(133, 'middle@test.com', 'student'),
(134, 'middle@test.com', 'student'),
(135, 'middle@test.com', 'student'),
(136, 'middle@test.com', 'student'),
(137, 'middle@test.com', 'student'),
(138, 'middle@test.com', 'student'),
(142, 'zahid@gmail.com', 'student'),
(144, 'middle1@test.com', 'student'),
(145, 'kashif@gmail.com', 'student'),
(164, 'aysha@gmail.com', 'administrator'),
(165, 'mkazi078@uottawa.ca', 'administrator'),
(166, 'hbappy79@gmail.com', 'student');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
