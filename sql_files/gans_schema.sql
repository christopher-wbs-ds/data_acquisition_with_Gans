DROP SCHEMA IF EXISTS gans;

CREATE SCHEMA gans;
USE gans;

CREATE TABLE cities (
	city_id INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(80),
    country VARCHAR(80),
    latitude DECIMAL(5,2) NOT NULL,
    longitude DECIMAL(5,2) NOT NULL,
    UNIQUE (latitude, longitude)
);

CREATE TABLE populations (
	city_id INT,
    population INT,
    date_gathered DATE,
    PRIMARY KEY (city_id, date_gathered),
    FOREIGN KEY (city_id) REFERENCES cities(city_id)
);