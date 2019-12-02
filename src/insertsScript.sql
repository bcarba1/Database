-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema dgargu1db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dgargu1db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dgargu1db` DEFAULT CHARACTER SET utf8 ;
USE `dgargu1db` ;

-- -----------------------------------------------------
-- Table `dgargu1db`.`pasta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dgargu1db`.`pasta` (
  `order_num` INT NOT NULL,
  `pasta_type` VARCHAR(45) NULL,
  `sauce_type` VARCHAR(45) NULL,
  `ingredients` VARCHAR(45) NULL,
  `seasonings` VARCHAR(45) NULL,
  PRIMARY KEY (`order_num`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dgargu1db`.`breakfast`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dgargu1db`.`breakfast` (
  `order_num` INT NOT NULL,
  `cust_ID` INT NULL,
  `pancake_quantity` INT NULL,
  `fried_egg_quantity` INT NULL,
  `omlette` TINYINT NULL,
  `scrambled_eggs` TINYINT NULL,
  `ingredients` VARCHAR(45) NULL,
  `seasonings` VARCHAR(45) NULL,
  `bacon_quantity` INT NULL,
  `sausage_quantity` INT NULL,
  PRIMARY KEY (`order_num`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dgargu1db`.`login`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dgargu1db`.`login` (
  `ID` INT NOT NULL,
  `UserName` VARCHAR(45) NULL,
  `type` TINYINT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dgargu1db`.`ingredient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dgargu1db`.`ingredient` (
  `name` VARCHAR(45) NOT NULL,
  `status` INT NULL,
  PRIMARY KEY (`name`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `dgargu1db`.`pasta`
-- -----------------------------------------------------
START TRANSACTION;
USE `dgargu1db`;
INSERT INTO `dgargu1db`.`pasta` (`order_num`, `pasta_type`, `sauce_type`, `ingredients`, `seasonings`) VALUES (121, 'bowtie', 'marinara', 'onion, mushroom', 'old_bay, cajun');
INSERT INTO `dgargu1db`.`pasta` (`order_num`, `pasta_type`, `sauce_type`, `ingredients`, `seasonings`) VALUES (333, 'penne', 'alfredo, pesto', 'mushroom', 'salt and pepper');
INSERT INTO `dgargu1db`.`pasta` (`order_num`, `pasta_type`, `sauce_type`, `ingredients`, `seasonings`) VALUES (443, 'bowtie', 'marinara', 'onion', 'cajun');

COMMIT;


-- -----------------------------------------------------
-- Data for table `dgargu1db`.`breakfast`
-- -----------------------------------------------------
START TRANSACTION;
USE `dgargu1db`;
INSERT INTO `dgargu1db`.`breakfast` (`order_num`, `cust_ID`, `pancake_quantity`, `fried_egg_quantity`, `omlette`, `scrambled_eggs`, `ingredients`, `seasonings`, `bacon_quantity`, `sausage_quantity`) VALUES (Order_Num, cust_ID, Pancake_Quantity, Fried_Egg_Quantity, Omlette(bool), Scrambled_Egg(bool), 'Egg_Ingredients', 'seasonings', Bacon_Quantity, Sausage_Quantity);
INSERT INTO `dgargu1db`.`breakfast` (`order_num`, `cust_ID`, `pancake_quantity`, `fried_egg_quantity`, `omlette`, `scrambled_eggs`, `ingredients`, `seasonings`, `bacon_quantity`, `sausage_quantity`) VALUES (2212, 1212121, 1, 2, 0, 0, '', 'salt and pepper', 1, 3);
INSERT INTO `dgargu1db`.`breakfast` (`order_num`, `cust_ID`, `pancake_quantity`, `fried_egg_quantity`, `omlette`, `scrambled_eggs`, `ingredients`, `seasonings`, `bacon_quantity`, `sausage_quantity`) VALUES (3323, 1111111, 0, 0, 0, 1, 'mushroom', 'cajun', 0, 0);
INSERT INTO `dgargu1db`.`breakfast` (`order_num`, `cust_ID`, `pancake_quantity`, `fried_egg_quantity`, `omlette`, `scrambled_eggs`, `ingredients`, `seasonings`, `bacon_quantity`, `sausage_quantity`) VALUES (4423, 1234567, 0, 1, 1, 0, 'onion', 'old bay, cajun', 2, 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `dgargu1db`.`login`
-- -----------------------------------------------------
START TRANSACTION;
USE `dgargu1db`;
INSERT INTO `dgargu1db`.`login` (`ID`, `UserName`, `type`) VALUES (1234567, 'cust', 1);
INSERT INTO `dgargu1db`.`login` (`ID`, `UserName`, `type`) VALUES (7654321, 'emp1', 0);
INSERT INTO `dgargu1db`.`login` (`ID`, `UserName`, `type`) VALUES (1111111, 'emp2', 0);
INSERT INTO `dgargu1db`.`login` (`ID`, `UserName`, `type`) VALUES (1212121, 'cust1', 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `dgargu1db`.`ingredient`
-- -----------------------------------------------------
START TRANSACTION;
USE `dgargu1db`;
INSERT INTO `dgargu1db`.`ingredient` (`name`, `status`) VALUES ('Penne', 1);
INSERT INTO `dgargu1db`.`ingredient` (`name`, `status`) VALUES ('Bowtie', 1);
INSERT INTO `dgargu1db`.`ingredient` (`name`, `status`) VALUES ('Marinara', 1);
INSERT INTO `dgargu1db`.`ingredient` (`name`, `status`) VALUES ('Pesto', 0);
INSERT INTO `dgargu1db`.`ingredient` (`name`, `status`) VALUES ('Alfredo', 1);
INSERT INTO `dgargu1db`.`ingredient` (`name`, `status`) VALUES ('Mushroom', 1);
INSERT INTO `dgargu1db`.`ingredient` (`name`, `status`) VALUES ('Onion', 1);
INSERT INTO `dgargu1db`.`ingredient` (`name`, `status`) VALUES ('Brocolli', 1);
INSERT INTO `dgargu1db`.`ingredient` (`name`, `status`) VALUES ('Spinach', 0);
INSERT INTO `dgargu1db`.`ingredient` (`name`, `status`) VALUES ('Meatball', 0);
INSERT INTO `dgargu1db`.`ingredient` (`name`, `status`) VALUES ('Sausage', 1);
INSERT INTO `dgargu1db`.`ingredient` (`name`, `status`) VALUES ('Chicken', 0);
INSERT INTO `dgargu1db`.`ingredient` (`name`, `status`) VALUES ('Vegan Chicken', 0);
INSERT INTO `dgargu1db`.`ingredient` (`name`, `status`) VALUES ('Old Bay', 0);
INSERT INTO `dgargu1db`.`ingredient` (`name`, `status`) VALUES ('Cajun', 1);
INSERT INTO `dgargu1db`.`ingredient` (`name`, `status`) VALUES ('Salt', 1);
INSERT INTO `dgargu1db`.`ingredient` (`name`, `status`) VALUES ('Pepper', 1);
INSERT INTO `dgargu1db`.`ingredient` (`name`, `status`) VALUES ('Egg', 1);
INSERT INTO `dgargu1db`.`ingredient` (`name`, `status`) VALUES ('Bacon', 0);
INSERT INTO `dgargu1db`.`ingredient` (`name`, `status`) VALUES ('Sausage', 1);
INSERT INTO `dgargu1db`.`ingredient` (`name`, `status`) VALUES ('Cheese', 0);
INSERT INTO `dgargu1db`.`ingredient` (`name`, `status`) VALUES ('Pancakes', 1);

COMMIT;

