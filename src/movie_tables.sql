CREATE TABLE Movies (

    id           INT PRIMARY KEY AUTO_INCREMENT,
    name         TEXT NOT NULL,
    release_date DATE NOT NULL,
    imdb_id      TEXT,
    imdb_rating  FLOAT
        CHECK (imdb_rating >= 0 AND imdb_rating <= 10),
    length       TEXT

);


CREATE TABLE DownloadedMovies(

    movie   INT PRIMARY KEY,
    path    TEXT NOT NULL,

    FOREIGN KEY(movie) REFERENCES Movies(id)

);


CREATE TABLE YouTubeMovies(

    movie      INT PRIMARY KEY,
    youtube_id  TEXT NOT NULL,

    FOREIGN KEY(movie) REFERENCES Movies(id)

);


CREATE TABLE NetflixMovies(

    movie      INT PRIMARY KEY,
    netflix_id  INT NOT NULL,

    FOREIGN KEY(movie) REFERENCES Movies(id)

);


CREATE TABLE CineasternaMovies(

    movie           INT PRIMARY KEY,
    cineasterna_id  INT NOT NULL,

    FOREIGN KEY(movie) REFERENCES Movies(id)

);
