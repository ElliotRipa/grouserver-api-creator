SELECT CONCAT('DROP TABLE IF EXISTS `', table_name, '`;')
FROM information_schema.tables
WHERE table_schema = 'media2';

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `CineasternaMovies`;
DROP TABLE IF EXISTS `DownloadedEpisodes`;
DROP TABLE IF EXISTS `DownloadedMovies`;
DROP TABLE IF EXISTS `Episodes`;
DROP TABLE IF EXISTS `FinishedShows`;
DROP TABLE IF EXISTS `Movies`;
DROP TABLE IF EXISTS `NetflixEpisodes`;
DROP TABLE IF EXISTS `NetflixMovies`;
DROP TABLE IF EXISTS `Shows`;
DROP TABLE IF EXISTS `YouTubeEpisodes`;
DROP TABLE IF EXISTS `YouTubeMovies`;


SET FOREIGN_KEY_CHECKS = 1;
