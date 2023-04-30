-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb3 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`actor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`actor` (
  `actor_id` INT NOT NULL,
  `first_name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(70) NOT NULL,
  `last_update` DATETIME NOT NULL,
  `full_name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`actor_id`),
  UNIQUE INDEX `actor_id_UNIQUE` (`actor_id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`film`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`film` (
  `film_id` INT NOT NULL,
  `title` VARCHAR(120) NOT NULL,
  `description` VARCHAR(2000) NOT NULL,
  `release_year` INT NOT NULL,
  `language` VARCHAR(2) NOT NULL,
  `rental_duration` INT NOT NULL,
  `rental_rate` FLOAT NOT NULL,
  `length` INT NOT NULL,
  `replacement_cost` FLOAT NOT NULL,
  `rating` VARCHAR(40) NOT NULL,
  `special_features` VARCHAR(45) NOT NULL,
  `genre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`film_id`),
  UNIQUE INDEX `film_id_UNIQUE` (`film_id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`film_actor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`film_actor` (
  `film_film_id` INT NOT NULL,
  `actor_actor_id` INT NOT NULL,
  PRIMARY KEY (`film_film_id`, `actor_actor_id`),
  INDEX `fk_film_has_actor_actor1_idx` (`actor_actor_id` ASC) VISIBLE,
  INDEX `fk_film_has_actor_film_idx` (`film_film_id` ASC) VISIBLE,
  CONSTRAINT `fk_film_has_actor_actor1`
    FOREIGN KEY (`actor_actor_id`)
    REFERENCES `mydb`.`actor` (`actor_id`),
  CONSTRAINT `fk_film_has_actor_film`
    FOREIGN KEY (`film_film_id`)
    REFERENCES `mydb`.`film` (`film_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mydb`.`rental`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`rental` (
  `rental_id` INT NOT NULL,
  `rental date` VARCHAR(45) NOT NULL,
  `inventory_id` INT NOT NULL,
  `return_date` VARCHAR(45) NOT NULL,
  `film_film_id` INT NOT NULL,
  PRIMARY KEY (`rental_id`, `film_film_id`),
  INDEX `fk_rental_film1_idx` (`film_film_id` ASC) VISIBLE,
  CONSTRAINT `fk_rental_film1`
    FOREIGN KEY (`film_film_id`)
    REFERENCES `mydb`.`film` (`film_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
