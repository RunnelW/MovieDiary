SELECT * from Movies
where ReleaseYear < 2005
order by MovieID desc;

DELETE FROM Viewings
where ViewingID = 1;

SELECT 
    GenreName,
    COUNT(*) AS Количество
FROM Genres
GROUP BY GenreName;

SELECT Title, FirstName, LastName From Directors
join Movies on Directors.DirectorID = Movies.DirectorID;

SELECT Title, LastName AS Режиссер FROM Movies 
LEFT JOIN Directors ON Movies.DirectorID = Directors.DirectorID;

SELECT Title, LastName AS Режиссер FROM Movies 
RIGHT JOIN Directors ON Movies.DirectorID = Directors.DirectorID;

SELECT Title, GenreName AS Жанр FROM Movies
INNER JOIN MovieGenres ON Movies.MovieID = MovieGenres.MovieID
INNER JOIN Genres ON MovieGenres.GenreID = Genres.GenreID;
