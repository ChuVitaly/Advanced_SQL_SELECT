
SELECT  * FROM album
WHERE  years='2018';

SELECT * FROM track
WHERE  duration = (SELECT MAX(duration) FROM track);

SELECT title FROM track
WHERE duration > 3.5;


SELECT "title" FROM collection
WHERE years='2018' OR years='2019' OR years='2020';

SELECT "name"  FROM artist
WHERE name LIKE '__%';

SELECT "title" FROM track
WHERE title LIKE '%my%';


--Продвинутая выборка данных
SELECT title FROM genre;

--task1 количество исполнителей в каждом жанре
SELECT COUNT(artist_id), genre_id
FROM genre_artist
GROUP BY genre_id;


--task2 количество треков, вошедших в альбомы 2019-2020 годов
SELECT COUNT(id) FROM track
WHERE album_id IN (SELECT id FROM album WHERE years BETWEEN  '2019' AND '2020')

--task3 средняя продолжительность треков по каждому альбому
SELECT AVG(duration), album_id
FROM track
GROUP BY  album_id;

--task4 все исполнители, которые не выпустили альбомы в 2020 году
SELECT artist_id FROM artist_album
WHERE album_id  IN (SELECT id FROM album WHERE album.years<>'2020');


--task5 названия сборников, в которых присутствует конкретный исполнитель (выберите сами)
SELECT title FROM collection
WHERE id IN (SELECT collection_id FROM collection_track 
where track_id IN (SELECT id FROM track 
WHERE album_id IN (SELECT album_id FROM artist_album 
WHERE artist_id IN (SELECT id FROM artist WHERE "name" = 'Джексон'))));

--task6 название альбомов, в которых присутствуют исполнители более 1 жанра
SELECT title FROM album
WHERE id IN (SELECT album_id FROM artist_album
WHERE artist_id IN (9, 6, 7, 1, 8));

-- Неудается все включить в один запрос?

--Исполнители более одного жанра(9, 6, 7, 1, 8)
SELECT COUNT(genre_id) as gen, artist_id
FROM genre_artist
GROUP BY artist_id
HAVING COUNT(genre_id) > 1;

--task7 наименование треков, которые не входят в сборники
SELECT id,title FROM track
where id IN (SELECT id FROM track EXCEPT SELECT track_id FROM collection_track);

--task8 исполнителя(-ей), написавшего самый короткий по продолжительности трек 
--     (теоретически таких треков может быть несколько);
SELECT name FROM artist
WHERE artist.id IN (SELECT artist_id FROM artist_album
WHERE album_id IN (SELECT album_id FROM track
WHERE duration IN (SELECT MIN(duration) FROM track)));

--task9 название альбомов, содержащих наименьшее количество треков
SELECT TITLE FROM album
WHERE id IN (SELECT album_id, COUNT(id) AS track FROM track
GROUP BY album_id
HAVING COUNT(id) = 1);

----------Не могу понять как сделать?---------------
-- При таком запросе идет ошибка: SQL Error [42601]: ERROR: subquery has too many columns

-- а так получается два запроса
SELECT album_id, COUNT(id) AS track FROM track
GROUP BY album_id
HAVING COUNT(id) = 1;

SELECT TITLE FROM album --(album_id = (9, 3, 5, 4, 2, 1))
WHERE id IN (9, 3, 5, 4, 2, 1);























