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

CREATE TABLE pc_users (
  user_id           INT AUTO_INCREMENT PRIMARY KEY,
  full_name         VARCHAR(100) NOT NULL,
  computer_username VARCHAR(100) NOT NULL UNIQUE
) ENGINE=InnoDB;

CREATE TABLE monitoring_agents (
  agent_id          INT AUTO_INCREMENT PRIMARY KEY,
  computer_id       INT NOT NULL UNIQUE,
  agent_version     VARCHAR(30),
  agent_status      VARCHAR(30) NOT NULL DEFAULT 'offline',
  last_heartbeat_at DATETIME,
  FOREIGN KEY (computer_id) REFERENCES computers(computer_id)
) ENGINE=InnoDB;