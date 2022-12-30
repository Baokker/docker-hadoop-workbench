CREATE DATABASE IF NOT EXISTS dw_movie;

CREATE EXTERNAL TABLE IF NOT EXISTS dw_movie.Act (
  movie_id INT,
  actor_id INT,
  movie_title STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
location '/dw_movie/Act'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS dw_movie.Actor (
  actor_id INT ,
  name STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
location '/dw_movie/Actor'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS dw_movie.Asin (
  asin STRING,
  movie_id INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
location '/dw_movie/Asin'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS dw_movie.Cooperation (
  left_person_id INT ,
  right_person_id INT ,
  movie_id INT ,
  type INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
location '/dw_movie/Cooperation'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS dw_movie.Direct (
  movie_id INT ,
  director_id INT ,
  movie_title STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
location '/dw_movie/Direct'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS dw_movie.Director (
  director_id INT ,
  name STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
location '/dw_movie/Director'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS dw_movie.Format (
  format_id INT ,
  format_name STRING,
  movie_id INT ,
  movie_title STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
location '/dw_movie/Act'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS dw_movie.Genre (
  genre_id INT ,
  genre_name STRING,
  movie_id INT ,
  movie_title STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
location '/dw_movie/Genre'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS dw_movie.Movie (
  movie_id INT ,
  title STRING,
  score DOUBLE ,
  edition INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
location '/dw_movie/Movie'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS dw_movie.ReleaseDate (
  time_id INT ,
  movie_id INT ,
  year INT,
  month INT,
  day INT,
  season INT,
  weekday INT,
  movie_date STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
location '/dw_movie/ReleaseDate'
tblproperties ("skip.header.line.count"="1");

CREATE EXTERNAL TABLE IF NOT EXISTS dw_movie.Review (
  movie_id INT,
  review_id INT ,
  username STRING,
  helpfulness STRING,
  review_score DOUBLE,
  review_time STRING,
  review_summary STRING,
  review_text STRING,
  asin STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
location '/dw_movie/Review'
tblproperties ("skip.header.line.count"="1");
