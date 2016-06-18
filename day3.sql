-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema awesome
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema awesome
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `awesome` ;
USE `awesome` ;

-- -----------------------------------------------------
-- Table `awesome`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `awesome`.`users` (
  `id` VARCHAR(50) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `passwd` VARCHAR(50) NOT NULL,
  `admin` TINYINT NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `image` VARCHAR(500) NOT NULL,
  `created_at` REAL NOT NULL,
  UNIQUE INDEX `idx_email` (`email` ASC),
  INDEX `idx_created_at` (`created_at` ASC),
  PRIMARY KEY (`id`))
ENGINE = innodb
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `awesome`.`blogs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `awesome`.`blogs` (
  `id` VARCHAR(50) NOT NULL,
  `user_id` VARCHAR(50) NOT NULL,
  `user_name` VARCHAR(50) NOT NULL,
  `user_image` VARCHAR(500) NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `summary` VARCHAR(200) NOT NULL,
  `content` MEDIUMTEXT NOT NULL,
  `created_at` REAL NOT NULL,
  INDEX `idx_created_at` (`created_at` ASC),
  PRIMARY KEY (`id`))
ENGINE = innodb
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `awesome`.`comments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `awesome`.`comments` (
  `id` VARCHAR(50) NOT NULL,
  `blog_id` VARCHAR(50) NOT NULL,
  `user_id` VARCHAR(50) NOT NULL,
  `user_name` VARCHAR(50) NOT NULL,
  `user_image` VARCHAR(500) NOT NULL,
  `content` MEDIUMTEXT NOT NULL,
  `created_at` REAL NOT NULL,
  INDEX `idx_created_at` (`created_at` ASC),
  PRIMARY KEY (`id`))
ENGINE = innodb
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
