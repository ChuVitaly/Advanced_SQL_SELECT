
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


--task2 количество треков, вошедших в альбомы 2019-2020 годов  ВАРИАНТ 1
SELECT COUNT(id) FROM track
WHERE album_id IN (SELECT id FROM album WHERE years BETWEEN  '2019' AND '2020');

--task2 количество треков, вошедших в альбомы 2019-2020 годов  ВАРИАНТ 2 (JOIN)    ПЕРЕДЕЛАНО
SELECT COUNT(t.id) FROM track t
JOIN album a ON t.album_id = a.id 
WHERE t.years BETWEEN  '2019' AND '2020';


--task3 средняя продолжительность треков по каждому альбому
SELECT AVG(duration), album_id
FROM track
GROUP BY  album_id;

--task4 все исполнители, которые не выпустили альбомы в 2020 году                   ИСПРАВЛЕНО
SELECT artist_id FROM artist_album aa WHERE artist_id NOT IN
(SELECT artist_id
FROM artist_album aa 
JOIN album a ON aa.album_id = a.id 
WHERE a.years = '2020');




--task5 названия сборников, в которых присутствует конкретный исполнитель (выберите сами)   ПЕРЕДЕЛАНО
SELECT DISTINCT c.title, a."name" FROM collection c
join collection_track ct on c.id = ct.collection_id 
join track t on ct.collection_id = t.id 
join artist_album aa on t.id = aa.album_id 
join artist a on aa.album_id = a.id 
where a."name" = 'Круг';





--task6 название альбомов, в которых присутствуют исполнители более 1 жанра +
SELECT COUNT(artist_id), album_id FROM artist_album aa 
GROUP BY album_id
HAVING COUNT(artist_id) > 1 ;



--task7 наименование треков, которые не входят в сборники          (JOIN)              ПЕРЕДЕЛАНО
SELECT id, title FROM track t
JOIN collection_track ct ON t.id = ct.track_id  
where t.id EXCEPT ct.track_id;

--task8 исполнителя(-ей), написавшего самый короткий по продолжительности трек         ПЕРЕДЕЛАНО
--     (теоретически таких треков может быть несколько);
SELECT DISTINCT a.name, t.duration FROM artist a 
JOIN artist_album aa ON a.id = aa.artist_id 
JOIN album a2 ON aa.artist_id = a2.id 
JOIN track t ON a2.id = t.id
WHERE t.duratiON = (SELECT MIN(duration) FROM track t)




--task9 название альбомов, содержащих наименьшее количество треков +
SELECT COUNT(a.id), a.title FROM album a 
JOIN track t ON a.id = t.album_id 
GROUP BY a.title
HAVING COUNT(a.id) = 1;



