CREATE DATABASE IF NOT EXISTS myData;

USE myData;

CREATE TABLE IF NOT EXISTS `Department` (
 `department_id` INT(6) UNSIGNED AUTO_INCREMENT ,   
 `department_name` VARCHAR(20) NOT NULL,    
 PRIMARY KEY (`department_id`)
 );

CREATE TABLE IF NOT EXISTS `Professor` (
`professor_id` INT(6) UNSIGNED AUTO_INCREMENT ,
`professor_name` VARCHAR(20) NOT NULL,
PRIMARY KEY (`professor_id`)
);

CREATE TABLE IF NOT EXISTS `course` ( 
 `course_id` INT(6) UNSIGNED NOT NULL AUTO_INCREMENT ,
 `course_name` VARCHAR(20) NOT NULL , 
 `course_description` VARCHAR(200) NOT NULL , 
 `professor_id` INT(6) UNSIGNED NOT NULL , 
 `department_id` INT(6) UNSIGNED NOT NULL , 
 PRIMARY KEY (`course_id`)) ENGINE = InnoDB;

ALTER TABLE `course` ADD CONSTRAINT `professor_fk` FOREIGN KEY (`professor_id`) REFERENCES `professor`(`professor_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;  
ALTER TABLE `course` ADD CONSTRAINT `department_fk` FOREIGN KEY (`department_id`) REFERENCES `department`(`department_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

INSERT INTO `Department` (`department_name`) VALUES 
('Computer'),
('Communication'),
('Electrical'),
('Mechanical'),
('Offshoring'),
('Agriculture'),
('Petrochemical');

INSERT INTO `Professor` (`professor_name`) VALUES 
('Ahmed Mohammed'),
('Mohammed Yossef'),
('Yossef Khames'),
('Malak Mohammed'),
('Hend Hassan'),
('Hisham ElMongi'),
('Maged Nagib'),
('Hassan Amin');

INSERT INTO `Course` (`course_name`,`course_description`,`professor_id`,`department_id`) VALUES
('Programming 1','Basics of programming',2,1),
('Graph 1','Basics of graph',7,7),
('Dynamics','Basics of dynamics',4,4),
('Chemistry','Basics of chemistry',7,3),
('Database','Advanced Programming',6,1),
('DSP','Advaned Communication',2,2),
('Analog','Advanced Analog Communication',1,2),
('Algorithms','Advanced programming',3,1),
('Electric circuits','Basics of circuits',5,3),
('Physics','Basics of Physics',2,3),
('Operating systems','Low level programming',6,1),
('Economics','Humanity',7,4);