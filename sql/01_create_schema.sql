CREATE DATABASE product_analytics;
USE product_analytics;

CREATE TABLE users (
    user_id VARCHAR(10) PRIMARY KEY,
    signup_date DATE,
    country VARCHAR(50),
    device VARCHAR(20),
    age_group VARCHAR(20),
    gender VARCHAR(20),
    acquisition_source VARCHAR(30),
    premium_user BOOLEAN
);

CREATE TABLE videos (
    video_id VARCHAR(10) PRIMARY KEY,
    creator_id VARCHAR(10),
    category VARCHAR(50),
    language VARCHAR(30),
    upload_date DATE,
    duration_sec INT,
    has_hashtags BOOLEAN,
    is_verified_creator BOOLEAN
);

CREATE TABLE events (
    event_id VARCHAR(8) PRIMARY KEY,
    user_id VARCHAR(10),
    video_id VARCHAR(10),
    event_type VARCHAR(20),
    timestamp DATETIME,
    watch_time_sec FLOAT,
    watch_completed BOOLEAN,

    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (video_id) REFERENCES videos(video_id)
);


DESCRIBE users;
DELETE FROM events;
DELETE FROM videos;
DELETE FROM users;
SELECT COUNT(*) FROM users;
SELECT COUNT(*) FROM videos;
SELECT COUNT(*) FROM events;


SHOW VARIABLES LIKE 'local_infile';

SET GLOBAL local_infile = 1;
SHOW GLOBAL VARIABLES LIKE 'local_infile';

SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE events;
TRUNCATE TABLE videos;
TRUNCATE TABLE users;

SET FOREIGN_KEY_CHECKS = 1;

SELECT COUNT(*) FROM users;
SELECT COUNT(*) FROM videos;
SELECT COUNT(*) FROM events;


LOAD DATA LOCAL INFILE 'C:/Users/bsava/Downloads/Product-Analytics-Case-Study/data/users.csv'
INTO TABLE users
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(user_id,
 signup_date,
 country,
 device,
 age_group,
 gender,
 acquisition_source,
 premium_user);
 
 SELECT @@version;
 
 SHOW VARIABLES LIKE 'secure_file_priv';
 
 LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/users.csv'
INTO TABLE users
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(user_id,
 signup_date,
 country,
 device,
 age_group,
 gender,
 acquisition_source,
 premium_user);
 
 SELECT COUNT(*) FROM users;
 
 SET FOREIGN_KEY_CHECKS = 0;

DELETE FROM events;
DELETE FROM videos;
DELETE FROM users;

SET FOREIGN_KEY_CHECKS = 1;


SELECT COUNT(*) FROM users;
SELECT COUNT(*) FROM videos;
SELECT COUNT(*) FROM events;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/users.csv'
INTO TABLE users
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(user_id,
 signup_date,
 country,
 device,
 age_group,
 gender,
 acquisition_source,
 premium_user);
 
  SELECT COUNT(*) FROM users;
  
  LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/videos.csv'
INTO TABLE videos
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(
    video_id,
    creator_id,
    category,
    language,
    upload_date,
    duration_sec,
    has_hashtags,
    is_verified_creator
);

SELECT COUNT(*) FROM videos;

DESCRIBE events;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/events.csv'
INTO TABLE events
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(
    event_id,
    user_id,
    video_id,
    event_type,
    timestamp,
    watch_time_sec,
    watch_completed
);

SELECT COUNT(*) FROM events;