-- CLUMS database schema
-- Run in MySQL Workbench, in order.

-- CREATE DATABASE clums CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE clums;

CREATE TABLE computers (
  computer_id   INT AUTO_INCREMENT PRIMARY KEY,
  computer_uuid CHAR(36) NOT NULL UNIQUE,
  computer_name VARCHAR(50) NOT NULL,
  ip_address    VARCHAR(45),
  mac_address   VARCHAR(17),
  status        VARCHAR(30) NOT NULL DEFAULT 'offline'
) ENGINE=InnoDB;
