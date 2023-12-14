CREATE DATABASE IF NOT EXISTS winter_games_db;
CREATE USER IF NOT EXISTS 'wg_dev'@'localhost' IDENTIFIED BY 'wg_dev_pwd';
GRANT ALL PRIVILEGES ON `winter_games_db`.* TO 'wg_dev'@'localhost';
GRANT SELECT ON `performance_schema`.* TO 'wg_dev'@'localhost';
FLUSH PRIVILEGES;
