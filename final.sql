DROP TABLE IF EXISTS `STUDENT`;
CREATE TABLE `STUDENT` (
    `StudentID` int(11) NOT NULL AUTO_INCREMENT,
    `FirstName` varchar(255) DEFAULT NULL,
    `LastName` varchar(255) DEFAULT NULL,
    `Major` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`StudentID`)
) ENGINE=InnoDB AUTO_INCREMENT=4;


DROP TABLE IF EXISTS `SCORE`;
CREATE TABLE `SCORE` (
    `StudentID` int(11) NOT NULL,
    `AssignmentID` int(11) NOT NULL,
    `POINTS` int(11) DEFAULT 0 NOT NULL,
    PRIMARY KEY (`StudentID`, `AssignmentID`)
) ENGINE=InnoDB;


DROP TABLE IF EXISTS `ASSIGNMENT`;
CREATE TABLE `ASSIGNMENT` (
    `AssignmentID` int(11) NOT NULL UNIQUE AUTO_INCREMENT,
    `DistributionID` int(11) NOT NULL,
    `Instance` int(11) NOT NULL,
    `PointsPossible` int(11) DEFAULT 0 NOT NULL,
    PRIMARY KEY (`AssignmentID`)
) ENGINE=InnoDB;


DROP TABLE IF EXISTS `DISTRIBUTION`;
CREATE TABLE `DISTRIBUTION` (
    `DistributionID` int(11) NOT NULL UNIQUE,
    `CourseID` int(11) NOT NULL,
    `CategoryName` varchar(30) NOT NULL,
    `Percentage` int(11) NOT NULL,
    PRIMARY KEY(`DistributionID`)
) ENGINE=InnoDB;


DROP TABLE IF EXISTS `ENROLLMENT`;
CREATE TABLE `ENROLLMENT` (
    `StudentID` int(11) NOT NULL,
    `CourseID` int(11) NOT NULL,
    PRIMARY KEY (`StudentID`, `CourseID`)
) ENGINE=InnoDB;


DROP TABLE IF EXISTS `COURSE`;
CREATE TABLE `COURSE` (
    `CourseID` int(11) NOT NULL UNIQUE AUTO_INCREMENT,
    `CourseNumber` int(11) NOT NULL,
    `Department` varchar(255) NOT NULL,
    `CourseName` varchar(255) NOT NULL,
    `Term` varchar(255) NOT NULL,
    `Year` int(5) NOT NULL,
    PRIMARY KEY(`CourseID`)
) ENGINE=InnoDB;


INSERT INTO `STUDENT` VALUES('Richard', 'Hendricks', 'Computer Science', 1234);
INSERT INTO `STUDENT` VALUES('Jared', 'Dunn', 'Management Science', 5678);
INSERT INTO `STUDENT` VALUES('Erlich', 'Bachman', 'Aviato', 3456);
INSERT INTO `STUDENT` VALUES('Jimmy', 'Quoyang', 'Marine Biology', 4590);
INSERT INTO `STUDENT` VALUES('Dinesh', 'Gilfoyle', 'Computer Engineering', 5337);
INSERT INTO `STUDENT` VALUES('John', 'Doe', 'English', 5555);



