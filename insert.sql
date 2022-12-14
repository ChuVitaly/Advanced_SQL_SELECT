INSERT INTO genre(title, description)
VALUES('шансон', 'Главный принцип этого жанра заключается в том, что песню обычно исполняет сам автор'),
	  ('поп', ' простота инструментальной части, ритмичность, акцент на вокал. '),
	  ('джаз', ' род музыкального искусства, сложившийся под влиянием африканских ритмов, европейской гармонии'),
	  ('рэп', ' ритмичный речитатив, обычно читающийся под музыку с тяжёлым битом'),
	  ('рок', ' основная разновидность популярной музыки,характерны использование электромузыкальных инструментов');

	 
INSERT INTO artist(name, country)
VALUES('Жека', 'Россия'),
	  ('Круг', 'Россия'),
	  ('Киркоров', 'Россия'),
	  ('Пугачева', 'Россия'),
	  ('Каас', 'Франция'),
	  ('Плант', 'Великобритания'),
	  ('Армстронг', 'США'),
	  ('Хьюстон', 'США'),
	  ('Джексон', 'США');
	  
	 
INSERT INTO album(title, years)
VALUES('Вдыхая друг друга', '2012'),
	  ('Зеркало души', '1978'),
	  ('Лучшие песни', '2008'),
	  ('Не делайте мне больно, господа', '1995'),
	  ('Kabaret', '2008'),
	  ('Love Songs', '1985'),
	  ('Gold', '2008'),
	  ('Power Ballads', '2018'),
	  ('Georgia on My Mind', '2014');
	 
INSERT INTO album (id, title, years)
VALUES ('10', 'Созвездие хитов шансона', '2020'),
		('11', 'Live at David Lynch’s', '2019');
	 

	 
	  
INSERT INTO collection(title, years)
VALUES  ('Сборник советской музыки', '2000'),
		('Сборник музыки', '2008'),
		('Сборник зарубежной музыки', '2010'),
		('Шансон лучшее', '2018'),
		('Америка, Америка', '2010'),
		('Лучшее из Америки', '2019'),
		('Король советской эстрады', '2010'),
		('Американские певцы', '2020');
		
INSERT INTO track(album_id, title, duration, years)
VALUES(1, 'кони', 3, '2012'),
       (2, 'Позови меня с собой', 4, '1978'),
       (3, 'Звёздное лето', 3, '2012'),
       (4, 'Не делайте мне больно, господа', 3, '1995'),
       (5, 'Addicte Aux Héroines', 2, '2008'),
       (6, 'How Will I Know', 4, '1985'),
       (7, 'Billie Jean', 5, '1982'),
       (7, 'Thriller', 6, '1982'),
       (7, 'my Got To Be There', 3, '2008'),
       (8, 'Big Log', 5, '2019'),
       (9, 'What a Wonderful World', 5, '2019'),
       (7, 'Black Or White', 4, '2001'),
       (8, 'Quattro', 4, '2021'),
       (8, 'The Price of Love', 5, '2021'),
       (8, 'Go your Way', 5, '2021'),
       (6, 'I Will Always Love You', 4, '1985');
      
INSERT INTO track(id, album_id, title, duration, years)
VALUES(17, 10, 'Прилетай', 3, '2020'),
       (18, 10, 'Кукушка', 4, '2020'),
       (19, 10, ' Дорога В Никуда', 4, '2020'),
       (20, 10, 'Просто', 4, '2020'),
       (21, 11, 'Poor Howard', 4, '2019'),
       (22, 11, 'Black Dog', 3, '2018'),
       (23, 11, 'Little Maggie', 5, '2018');
      
INSERT INTO genre_artist(genre_id, artist_id)
VALUES (1, 1),
		(2, 1),
		(2, 2),
		(4, 8),
		(5, 9),
		(5, 7),
		(3, 7),
		(3, 8),
		(4, 9),
		(5, 3),
		(2, 6),
		(4, 6);
	
INSERT INTO artist_album(artist_id, album_id)
VALUES (1, 1),
		(2, 1),
		(3, 3),
		(4, 2),
		(4, 3),
		(5, 5),
		(6, 8),
		(7, 9),
		(8, 6),
		(9, 7);
	
INSERT INTO artist_album(artist_id, album_id)
VALUES (2, 10);       
	
INSERT INTO collection_track(collection_id, track_id)
VALUES(1, 2),
	  (1, 10),
	  (1, 3),
	  (2, 4),
	  (2, 2),
	  (3, 5),
	  (3, 6),
	  (4, 1),
	  (5, 7),
	  (8, 16),
	  (8, 15),
	  (8, 14),
	  (8, 12),
	  (8, 11),
	  (8, 10),
	  (8, 9),
	  (8, 8),
	  (8, 7),
	  (8, 6),
	  (8, 5),
	  (8, 4);
	 
	 
	 
       
      