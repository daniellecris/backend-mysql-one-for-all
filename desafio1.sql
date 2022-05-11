DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans(
id_plan INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
type_plan VARCHAR(100) NOT NULL,
price DECIMAL(5,2) 
);

INSERT INTO plans(type_plan,price) 
  VALUES
    ('Familiar', 7.99),
    ('Gratuito', 0),
    ('Pessoal', 6.99),
    ('Universitario', 5.99);

CREATE TABLE artists(
id_artist INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
artist_name VARCHAR(100) NOT NULL
);

INSERT INTO artists(artist_name) 
  VALUES
    ('Fog'),
    ('Freedie Shannon'),
    ('Lance Day'),
    ('Peter Strong'),
    ('Tyler Isle'),
    ('Walter Phoenix');


CREATE TABLE users(
id_user INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
user_name VARCHAR(100) NOT NULL,
age INT NOT NULL,
signature_date DATE,
id_plan INT NOT NULL,
FOREIGN KEY (id_plan) REFERENCES plans(id_plan)
);

INSERT INTO users(user_name, age, signature_date, id_plan) 
  VALUES
    ('Thati', 23, '2019-10-20', 2),
    ('Cintia', 35, '2017-12-30', 1),
    ('Bill', 20, '2019-06-05', 4),
    ('Roger', 45, '2020-05-13', 3),
    ('Norman', 58, '2017-02-17', 3),
    ('Patrick', 33, '2017-01-06', 1),
    ('Vivian', 26, '2018-01-05', 4),
    ('Carol', 19, '2018-02-14', 4),
    ('Angelina', 42, '2018-04-29', 1),
    ('Paul', 46, '2017-01-17', 1);


CREATE TABLE albums(
id_album INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
album_name VARCHAR(100) NOT NULL,
release_year INT,
id_artist INT NOT NULL,
FOREIGN KEY (id_artist) REFERENCES artists(id_artist)
);


INSERT INTO albums(album_name, release_year, id_artist) 
  VALUES
    ('Envious', '1990', 6),
    ('Exuberant', '1993', 6),
    ('Hallowed Steam', '1995', 4),
    ('Incandescent', '1998', 3),
    ('Temporary Culture', '2001', 2),
    ('Library of liberty', '2003', 2),
    ('Chained Down', '2007', 5),
    ('Cabinet of fools', '2012', 5),
    ('No guarantees', '2015', 5),
    ('Apparatus', '2015', 1); 


CREATE TABLE songs(
id_song INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
song_name VARCHAR(100) NOT NULL,
duration_seconds INT,
id_album INT NOT NULL,
FOREIGN KEY (id_album) REFERENCES albums(id_album)
);

INSERT INTO songs(song_name, duration_seconds, id_album) 
  VALUES
    ('Soul For Us', 200, 1),
    ('Reflections Of Magic', 163, 1),
    ('Dance With Her Own', 116, 1),
    ('Troubles Of My Inner Fire', 203, 2),
    ('Time Fireworks', 152, 2),
    ('Magic Circus', 105, 3),
    ('Honey, So Do I', 207, 3),
    ("Sweetie, Let's Go Wild", 139, 3),
    ('She Knows', 244, 3),
    ('Fantasy For Me', 100, 4),
    ('Celebration Of More', 146, 4),
    ('Rock His Everything', 223, 4),
    ('Home Forever', 231, 4),
    ('Diamond Power', 241, 4),
    ("Let's Be Silly", 132, 4),
    ('Thang Of Thunder', 240, 5),
    ('Words Of Her Life', 185, 5),
    ('Without My Streets', 176, 5),
    ('Need Of The Evening', 190, 6),
    ('History Of My Roses', 222, 6),
    ('Without My Love', 111, 6),
    ('Walking And Game', 123, 6),
    ('Young And Father', 197, 6),
    ('Finding My Traditions', 179, 7),
    ('Walking And Man', 229, 7),
    ('Hard And Time', 135, 7),
    ("Honey, I'm A Lone Wolf", 150, 7),
    ("She Thinks I Won't Stay Tonight", 166, 8),
    ("He Heard You're Bad For Me", 154, 8),
    ("He Hopes We Can't Stay", 210, 8),
    ('I Know I Know', 117, 8),
    ("He's Walking Away", 159, 9),
    ("He's Trouble", 138, 9),
    ('I Heard I Want To Bo Alone', 120, 9),
    ('I Ride Alone', 151, 9),
    ('Honey', 79, 10),
    ('You Cheated On Me', 95, 10),
    ("Wouldn't It Be Nice", 213, 10),
    ('Baby', 136, 10),
    ('You Make Me Feel So.', 83, 10);


CREATE TABLE history(
id_song INT NOT NULL,
id_user INT NOT NULL,
player_date DATETIME,
CONSTRAINT PRIMARY KEY (id_song, id_user),
FOREIGN KEY (id_song) REFERENCES songs(id_song),
FOREIGN KEY (id_user) REFERENCES users(id_user)
);


INSERT INTO history( id_song, id_user, player_date)
  VALUES
    (36, 1, '2020-02-28 10:45:55'),
    (25, 1, '2020-05-02 05:30:35'),
    (23, 1, '2020-03-06 11:22:33'),
    (14, 1, '2020-08-05 08:05:17'),
    (15, 1, '2020-09-14 16:32:22'),
    (34, 2, '2020-01-02 07:40:33'),
    (24, 2, '2020-05-16 06:16:22'),
    (21, 2, '2020-10-09 12:27:48'),
    (39, 2, '2020-09-21 13:14:46'),
    (6, 3, '2020-11-13 16:55:13'),
    (3, 3, '2020-12-05 18:38:30'),
    (26, 3, '2020-07-30 10:00:00'),
    (2, 4, '2021-08-15 17:10:10'),
    (35, 4, '2021-07-10 15:20:30'),
    (27, 4, '2021-01-09 01:44:33'),
    (7, 5, '2020-07-03 19:33:28'),
    (12, 5, '2017-02-24 21:14:22'),
    (14, 5, '2020-08-06 15:23:43'),
    (1, 5, '2020-11-10 13:52:27'),
    (38, 6, '2019-02-07 20:33:48'),
    (29, 6, '2017-01-24 00:31:17'),
    (30, 6, '2017-10-12 12:35:20'),
    (22, 6, '2018-05-29 14:56:41'),
    (5, 7, '2018-05-09 22:30:49'),
    (4, 7, '2020-07-27 12:52:58'),
    (11, 7, '2018-01-16 18:40:43'),
    (39, 8, '2018-03-21 16:56:40'),
    (40, 8, '2020-10-18 13:38:05'),
    (32, 8, '2019-05-25 08:14:03'),
    (33, 8, '2021-08-15 21:37:09'),
    (16, 9, '2021-05-24 17:23:45'),
    (17, 9, '2018-12-07 22:48:52'),
    (8, 9, '2021-03-14 06:14:26'),
    (9, 9, '2020-04-01 03:36:00'),
    (20, 10, '2017-02-06 08:21:34'),
    (21, 10, '2017-12-04 05:33:43'),
    (12, 10, '2017-07-27 05:24:49'),
    (13, 10, '2017-12-25 01:03:57');


CREATE TABLE favorites(
id_artist INT NOT NULL,
id_user INT NOT NULL,
CONSTRAINT PRIMARY KEY (id_artist, id_user),
FOREIGN KEY (id_artist) REFERENCES artists(id_artist),
FOREIGN KEY (id_user) REFERENCES users(id_user)
);


INSERT INTO favorites(id_artist, id_user)
  VALUES
    (6, 1),
    (2, 1),
    (3, 1),
    (6, 2),
    (3, 2),
    (4, 3),
    (6, 3),
    (2, 4),
    (5, 5),
    (1, 5),
    (1, 6),
    (3, 6),
    (6, 6),
    (4, 7),
    (5, 7),
    (6, 8),
    (5, 8),
    (1, 9),
    (2, 9),
    (3, 9),
    (4, 10),
    (1, 10);