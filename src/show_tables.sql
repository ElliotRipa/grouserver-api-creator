CREATE TABLE Shows(

    id          INT PRIMARY KEY AUTO_INCREMENT,
    name        TEXT NOT NULL,
    imdb_id     TEXT,
    imdb_rating TEXT

    CHECK (imdb_rating >= 0 AND imdb_rating <= 10)

);


CREATE TABLE FinishedShows(

    show            INT PRIMARY KEY,
    finished_date   DATE NOT NULL,

    FOREIGN KEY(show) REFERENCES Shows(id)

);


CREATE TABLE Episodes(

    id              INT PRIMARY KEY AUTO_INCREMENT,
    show            TEXT NOT NULL,
    name            TEXT NOT NULL,
    release_date    DATE NOT NULL,
    season          INT NOT NULL,
    episode         INT NOT NULL,
    imdb_id         TEXT,
    imdb_rating     INT

    CHECK (imdb_rating >= 0 AND imdb_rating <= 10),

    FOREIGN KEY(show) REFERENCES Shows(id)

);


CREATE TABLE DownloadedEpisodes(

    episode INT PRIMARY KEY,
    path    TEXT NOT NULL,

    FOREIGN KEY(episode) REFERENCES Episodes(id)

);


CREATE TABLE NetflixEpisodes(

    episode     INT PRIMARY KEY,
    netflix_id  INT NOT NULL,

    FOREIGN KEY(episode) REFERENCES Episodes(id)

);


CREATE TABLE YouTubeEpisodes(

    episode     INT PRIMARY KEY,
    youtube_id  TEXT NOT NULL,

    FOREIGN KEY(episode) REFERENCES Episodes(id)

);


CREATE TABLE YouTubeVideos(

    id           TEXT PRIMARY KEY,
    name         TEXT NOT NULL,
    release_date DATETIME NOT NULL

);