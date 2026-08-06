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