CREATE TABLE artists (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    country TEXT,
    debut_year INTEGER,
    bio TEXT,
    total_albums INTEGER,
    profile_image_url TEXT
);

CREATE TABLE albums (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    release_year INTEGER,
    artist_id INTEGER,
    label TEXT,
    cover_image_url TEXT,
    total_tracks INTEGER,
    total_play_count INTEGER,
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
);

CREATE TABLE tracks (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    duration INTEGER NOT NULL,
    album_id INTEGER,
    release_date DATE,
    lyrics TEXT,
    play_count INTEGER,
    feature_artists TEXT,
    FOREIGN KEY (album_id) REFERENCES albums(album_id)
);

INSERT INTO artists (id, name, country, debut_year, bio, total_albums, profile_image_url)
VALUES 
(1, 'The Rolling Stones', 'UK', 1962, 'An English rock band formed in London in 1962.', 30, 'rolling_stones_img_url'),
(2, 'Beyonce', 'USA', 1997, 'An American singer, songwriter, record producer, and actress.', 8, 'beyonce_img_url'),
(3, 'Ludwig van Beethoven', 'Germany', 1792, 'A German composer and pianist; crucial figure in the transition between the classical and romantic eras.', 9, 'beethoven_img_url'),
(4, 'Johann Sebastian Bach', 'Germany', 1703, 'A German composer and musician of the Baroque period. He is known for instrumental compositions such as the Brandenburg Concertos and vocal music like the St. Matthew Passion and the Mass in B minor.', 10, 'bach_img_url'),
(5, 'Wolfgang Amadeus Mozart', 'Austria', 1761, 'A prolific and influential composer of the Classical era. His work is recognized for its melodic clarity, form, and development. His notable compositions include operas, symphonies, and piano concertos.', 18, 'mozart_img_url'),
(6, 'Rihanna', 'Barbados', 2003, 'A Barbadian singer, actress, and businesswoman.', 9, 'rihanna_img_url'),
(7, 'Coldplay', 'UK', 1996, 'A British rock band formed in London in 1996.', 8, 'coldplay_img_url'),
(8, 'Daft Punk', 'France', 1993, 'A French electronic music duo formed in 1993.', 6, 'daft_punk_img_url'),
(9, 'Bob Marley', 'Jamaica', 1962, 'A Jamaican singer, songwriter, and musician.', 13, 'marley_img_url'),
(10, 'Madonna', 'USA', 1979, 'An American singer, songwriter, and actress.', 14, 'madonna_img_url'),
(11, 'Metallica', 'USA', 1981, 'An American heavy metal band formed in Los Angeles, California.', 10, 'metallica_img_url'),
(12, 'Led Zeppelin', 'UK', 1968, 'A British rock band known for their innovative sound and heavy guitar-driven tracks.', 9, 'led_zeppelin_img_url'),
(13, 'Black Sabbath', 'UK', 1968, 'A British rock band, often cited as pioneers of heavy metal music.', 19, 'black_sabbath_img_url'),
(14, 'Iron Maiden', 'UK', 1975, 'A British heavy metal band noted for their melodic early heavy metal songs.', 17, 'iron_maiden_img_url'),
(15, 'Nirvana', 'USA', 1987, 'An American rock band that played a pivotal role in bringing grunge music to the mainstream.', 3, 'nirvana_img_url');

-- The Rolling Stones
INSERT INTO albums (id, name, release_year, artist_id, label, cover_image_url, total_tracks, total_play_count)
VALUES 
(1, 'Sticky Fingers', 1971, 1, 'Rolling Stones Records', 'sticky_fingers_img_url', 10, 1000000),
(2, 'Exile on Main St.', 1972, 1, 'Rolling Stones Records', 'exile_img_url', 18, 1200000),
(3, 'Some Girls', 1978, 1, 'Rolling Stones Records', 'some_girls_img_url', 10, 1100000);

-- Beyonce
INSERT INTO albums (id, name, release_year, artist_id, label, cover_image_url, total_tracks, total_play_count)
VALUES 
(4, 'Dangerously in Love', 2003, 2, 'Columbia', 'dangerously_img_url', 15, 2000000),
(5, 'Lemonade', 2016, 2, 'Parkwood', 'lemonade_img_url', 12, 2500000),
(6, 'Beyoncé', 2013, 2, 'Parkwood', 'beyonce_album_img_url', 14, 2200000);

-- Ludwig van Beethoven
-- Note: For classical composers, their "albums" would typically be collections or specific recordings of their works.
INSERT INTO albums (id, name, release_year, artist_id, label, cover_image_url, total_tracks, total_play_count)
VALUES 
(7, 'Symphonies Nos. 5 & 7', 2007, 3, 'Deutsche Grammophon', 'beethoven5and7_img_url', 8, 50000),
(8, 'Piano Sonatas', 1992, 3, 'Philips', 'beethoven_piano_img_url', 32, 70000),
(9, 'Violin Concerto', 1980, 3, 'EMI Classics', 'beethoven_violin_img_url', 3, 55000);

-- Johann Sebastian Bach
INSERT INTO albums (id, name, release_year, artist_id, label, cover_image_url, total_tracks, total_play_count)
VALUES 
(10, 'The Well-Tempered Clavier', 1984, 4, 'DG Archiv', 'wtc_img_url', 48, 60000),
(11, 'Mass in B Minor', 1990, 4, 'Harmonia Mundi', 'mass_bminor_img_url', 27, 65000),
(12, 'Brandenburg Concertos', 1977, 4, 'EMI', 'brandenburg_img_url', 6, 58000);

-- Wolfgang Amadeus Mozart
INSERT INTO albums (id, name, release_year, artist_id, label, cover_image_url, total_tracks, total_play_count)
VALUES 
(13, 'Symphonies 40 & 41', 1991, 5, 'Linn Records', 'mozart_symphonies_img_url', 8, 70000),
(14, 'Requiem in D minor', 1986, 5, 'Philips', 'requiem_img_url', 12, 71000),
(15, 'The Magic Flute', 2000, 5, 'Decca', 'magic_flute_img_url', 14, 67000);

-- Rihanna
INSERT INTO albums (id, name, release_year, artist_id, label, cover_image_url, total_tracks, total_play_count)
VALUES 
(16, 'Music of the Sun', 2005, 6, 'Def Jam', 'music_of_the_sun_img_url', 13, 1500000),
(17, 'Loud', 2010, 6, 'Def Jam', 'loud_img_url', 11, 2100000),
(18, 'Anti', 2016, 6, 'Westbury Road', 'anti_img_url', 13, 2300000);

-- Coldplay
INSERT INTO albums (id, name, release_year, artist_id, label, cover_image_url, total_tracks, total_play_count)
VALUES 
(19, 'Parachutes', 2000, 7, 'Parlophone', 'parachutes_img_url', 10, 2000000),
(20, 'A Rush of Blood to the Head', 2002, 7, 'Parlophone', 'rush_of_blood_img_url', 11, 2200000),
(21, 'Viva la Vida or Death and All His Friends', 2008, 7, 'Parlophone', 'viva_la_vida_img_url', 10, 2300000);

-- Daft Punk
INSERT INTO albums (id, name, release_year, artist_id, label, cover_image_url, total_tracks, total_play_count)
VALUES 
(22, 'Homework', 1997, 8, 'Virgin', 'homework_img_url', 16, 1200000),
(23, 'Discovery', 2001, 8, 'Virgin', 'discovery_img_url', 14, 1500000),
(24, 'Random Access Memories', 2013, 8, 'Columbia', 'random_access_memories_img_url', 13, 1700000);

-- Bob Marley
INSERT INTO albums (id, name, release_year, artist_id, label, cover_image_url, total_tracks, total_play_count)
VALUES 
(25, 'Catch a Fire', 1973, 9, 'Island', 'catch_a_fire_img_url', 9, 1300000),
(26, 'Rastaman Vibration', 1976, 9, 'Island', 'rastaman_vibration_img_url', 10, 1200000),
(27, 'Legend', 1984, 9, 'Island', 'legend_img_url', 16, 2000000);

-- Madonna
INSERT INTO albums (id, name, release_year, artist_id, label, cover_image_url, total_tracks, total_play_count)
VALUES 
(28, 'Like a Virgin', 1984, 10, 'Sire', 'like_a_virgin_img_url', 9, 2200000),
(29, 'True Blue', 1986, 10, 'Sire', 'true_blue_img_url', 9, 2100000),
(30, 'Ray of Light', 1998, 10, 'Maverick', 'ray_of_light_img_url', 13, 1900000);

-- Metallica
INSERT INTO albums (id, name, release_year, artist_id, label, cover_image_url, total_tracks, total_play_count)
VALUES 
(31, 'Kill Em All', 1983, 11, 'Megaforce', 'kill_em_all_img_url', 10, 1400000),
(32, 'Master of Puppets', 1986, 11, 'Elektra', 'master_of_puppets_img_url', 8, 1800000),
(33, 'Metallica (The Black Album)', 1991, 11, 'Elektra', 'black_album_img_url', 12, 2100000);

-- Led Zeppelin
INSERT INTO albums (id, name, release_year, artist_id, label, cover_image_url, total_tracks, total_play_count)
VALUES 
(34, 'Led Zeppelin', 1969, 12, 'Atlantic', 'led_zeppelin_I_img_url', 9, 1400000),
(35, 'Led Zeppelin IV', 1971, 12, 'Atlantic', 'led_zeppelin_IV_img_url', 8, 2000000),
(36, 'Physical Graffiti', 1975, 12, 'Swan Song', 'physical_graffiti_img_url', 15, 1600000);

-- Black Sabbath
INSERT INTO albums (id, name, release_year, artist_id, label, cover_image_url, total_tracks, total_play_count)
VALUES 
(37, 'Black Sabbath', 1970, 13, 'Vertigo', 'black_sabbath_img_url', 7, 1400000),
(38, 'Paranoid', 1970, 13, 'Vertigo', 'paranoid_img_url', 8, 1600000),
(39, 'Master of Reality', 1971, 13, 'Vertigo', 'master_of_reality_img_url', 8, 1500000);

-- Iron Maiden
INSERT INTO albums (id, name, release_year, artist_id, label, cover_image_url, total_tracks, total_play_count)
VALUES 
(40, 'Iron Maiden', 1980, 14, 'EMI', 'iron_maiden_img_url', 9, 1300000),
(41, 'The Number of the Beast', 1982, 14, 'EMI', 'number_of_the_beast_img_url', 8, 1700000),
(42, 'Powerslave', 1984, 14, 'EMI', 'powerslave_img_url', 8, 1500000);

-- Nirvana
INSERT INTO albums (id, name, release_year, artist_id, label, cover_image_url, total_tracks, total_play_count)
VALUES 
(43, 'Bleach', 1989, 15, 'Sub Pop', 'bleach_img_url', 11, 1100000),
(44, 'Nevermind', 1991, 15, 'DGC', 'nevermind_img_url', 12, 2500000),
(45, 'In Utero', 1993, 15, 'DGC', 'in_utero_img_url', 12, 2200000);

-- Tracks for 'The Rolling Stones'

-- Sticky Fingers
INSERT INTO tracks (id, name, duration, album_id, release_date, lyrics, play_count, feature_artists)
VALUES 
(1, 'Brown Sugar', 215, 1, '1971-04-23', 'Gold coast slave ship bound for cotton fields...', 100000, NULL),
(2, 'Sway', 230, 1, '1971-04-23', 'Did you ever wake up to find...', 90000, NULL),
(3, 'Wild Horses', 250, 1, '1971-04-23', 'Childhood living is easy to do...', 110000, NULL);

-- Exile on Main St.
INSERT INTO tracks (id, name, duration, album_id, release_date, lyrics, play_count, feature_artists)
VALUES 
(4, 'Rocks Off', 212, 2, '1972-05-12', 'I hear you talking when I''m on the street...', 85000, NULL),
(5, 'Rip This Joint', 200, 2, '1972-05-12', 'Mama says yes, Papa says no...', 80000, NULL),
(6, 'Tumbling Dice', 210, 2, '1972-05-12', 'Women think I''m tasty...', 79000, NULL);

-- Some Girls
INSERT INTO tracks (id, name, duration, album_id, release_date, lyrics, play_count, feature_artists)
VALUES 
(7, 'Miss You', 275, 3, '1978-06-09', 'I''ve been holding out so long...', 115000, NULL),
(8, 'Beast of Burden', 243, 3, '1978-06-09', 'I''ll never be your beast of burden...', 120000, NULL),
(9, 'Respectable', 190, 3, '1978-06-09', 'Well now we''re respected in society...', 117000, NULL);

-- Beyonce
INSERT INTO tracks (name, duration, album_id, release_date, lyrics, play_count, feature_artists)
VALUES
('Crazy in Love', 235, 4, '2003-06-24', 'Uh oh, uh oh, uh oh, oh no no...', 450000, 'Jay-Z'),
('Baby Boy', 256, 4, '2003-09-09', 'Baby boy, you stay on my mind...', 400000, 'Sean Paul'),
('Me, Myself and I', 230, 4, '2003-10-19', 'Me, myself, and I...', 350000, NULL),
('Pray You Catch Me', 215, 5, '2016-04-23', 'You can taste the dishonesty...', 500000, NULL),
('Hold Up', 218, 5, '2016-04-23', 'Hold up, they don’t love you like I love you...', 470000, NULL),
('Formation', 225, 5, '2016-04-23', 'Okay, ladies, now let’s get in formation...', 600000, NULL),
('Drunk in Love', 320, 6, '2013-12-13', 'Drunk in love... We be all night...', 550000, 'Jay-Z'),
('Partition', 310, 6, '2013-12-13', 'Driver roll up the partition please...', 520000, NULL),
('XO', 220, 6, '2013-12-16', 'Baby love me lights out...', 500000, NULL);

-- Ludwig van Beethoven
INSERT INTO tracks (name, duration, album_id, release_date, lyrics, play_count)
VALUES
('Symphony No. 5 in C Minor, Op. 67: I. Allegro con brio', 450, 7, '2007-06-01', NULL, 15000),
('Symphony No. 7 in A Major, Op. 92: II. Allegretto', 480, 7, '2007-06-01', NULL, 12000),
('Piano Sonata No. 14 "Moonlight" in C Sharp Minor', 320, 8, '1992-05-01', NULL, 18000),
('Piano Sonata No. 8 "Pathétique" in C Minor', 290, 8, '1992-05-01', NULL, 17000),
('Violin Concerto in D, Op. 61: I. Allegro ma non troppo', 620, 9, '1980-04-01', NULL, 25000);

-- Johann Sebastian Bach
INSERT INTO tracks (name, duration, album_id, release_date, lyrics, play_count)
VALUES
('The Well-Tempered Clavier, Book I: Prelude and Fugue No. 1', 210, 10, '1984-09-01', NULL, 20000),
('Mass in B Minor, BWV 232: Kyrie Eleison', 330, 11, '1990-10-01', NULL, 23000),
('Brandenburg Concerto No. 3 in G Major, BWV 1048: I. Allegro', 300, 12, '1977-03-01', NULL, 19000);

-- Wolfgang Amadeus Mozart
INSERT INTO tracks (name, duration, album_id, release_date, lyrics, play_count)
VALUES
('Symphony No. 40 in G Minor, K. 550: I. Molto allegro', 420, 13, '1991-02-01', NULL, 25000),
('Requiem in D Minor, K. 626: Lacrimosa', 200, 14, '1986-07-01', NULL, 26000),
('The Magic Flute, K. 620: Overture', 410, 15, '2000-10-01', NULL, 24000);

INSERT INTO tracks (name, duration, album_id, release_date, lyrics, play_count)
VALUES
-- Rihanna
('Pon de Replay', 245, 16, '2005-05-24', 'Come Mr. DJ, song pon de replay...', 500000),
('SOS', 230, 16, '2006-02-14', 'SOS please someone help me...', 460000),
('Only Girl (In the World)', 235, 17, '2010-09-10', 'Want you to make me feel like I’m the only girl in the world...', 580000),
('Rude Boy', 228, 17, '2010-02-19', 'Come on rude boy, boy; can you get it up...', 560000),
('Work', 220, 18, '2016-01-27', 'Work, work, work, work, work...', 600000),
('Needed Me', 229, 18, '2016-04-20', 'You needed me...', 590000),

-- Coldplay
('Yellow', 266, 19, '2000-06-26', 'Look at the stars, look how they shine for you...', 530000),
('Trouble', 264, 19, '2000-10-23', 'I never meant to cause you trouble...', 500000),
('Clocks', 307, 20, '2002-12-10', 'The lights go out and I can’t be saved...', 550000),
('The Scientist', 309, 20, '2002-11-04', 'Come up to meet you, tell you I’m sorry...', 540000),
('Viva la Vida', 242, 21, '2008-05-25', 'I used to rule the world...', 600000),
('Lost!', 229, 21, '2008-11-10', 'Just because I’m losing, doesn’t mean I’m lost...', 580000),

-- Daft Punk
('Around the World', 428, 22, '1997-03-17', 'Around the world, around the world...', 400000),
('Da Funk', 329, 22, '1995-11-30', 'Instrumental', 380000),
('One More Time', 320, 23, '2000-11-13', 'One more time, we’re gonna celebrate...', 450000),
('Digital Love', 305, 23, '2001-06-11', 'Last night, I had a dream about you...', 430000),
('Get Lucky', 366, 24, '2013-04-19', 'We’re up all night to get lucky...', 490000),
('Instant Crush', 337, 24, '2013-12-03', 'And we will never be alone again...', 470000),

-- Bob Marley
('Stir It Up', 251, 25, '1973-04-13', 'Stir it up, little darling...', 430000),
('Concrete Jungle', 309, 25, '1973-04-13', 'No sun will shine in my day today...', 410000),
('Roots, Rock, Reggae', 228, 26, '1976-04-30', 'Play I some music...', 420000),
('Positive Vibration', 326, 26, '1976-04-30', 'Live if you want to live...', 400000),
('No Woman, No Cry', 382, 27, '1984-05-08', 'No woman, no cry...', 570000),
('Buffalo Soldier', 250, 27, '1983-05-10', 'Buffalo soldier, dreadlock rasta...', 550000),

-- Madonna
('Material Girl', 240, 28, '1984-11-30', 'Living in a material world...', 590000),
('Like a Virgin', 235, 28, '1984-10-31', 'Like a virgin, touched for the very first time...', 600000),
("Papa Don't Preach", 270, 29, '1986-06-11', "Papa don’t preach, I’m in trouble deep...", 570000),
('Open Your Heart', 245, 29, '1986-11-19', 'Open your heart to me, baby...', 550000),
('Frozen', 370, 30, '1998-02-23', 'You only see what your eyes want to see...', 520000),
('Ray of Light', 320, 30, '1998-05-06', 'Zephyr in the sky at night I wonder...', 500000),

-- Metallica
('Seek & Destroy', 410, 31, '1983-07-25', 'Searching, seek and destroy...', 460000),
('Whiplash', 244, 31, '1983-10-08', 'Late at night all systems go...', 440000),
('Master of Puppets', 517, 32, '1986-03-03', 'Obey your master! Master!', 530000),
('Battery', 312, 32, '1986-03-03', 'Lashing out the action, returning the reaction...', 510000),
('Enter Sandman', 330, 33, '1991-07-29', 'Exit light, enter night...', 600000),
('The Unforgiven', 386, 33, '1991-10-28', "What I’ve felt, what I’ve known...", 580000),

-- Led Zeppelin
('Good Times Bad Times', 166, 34, '1969-03-10', 'In the days of my youth...', 480000),
("Babe I'm Gonna Leave You", 402, 34, '1969-03-10', 'Babe, babe, babe...', 460000),
('Stairway to Heaven', 482, 35, '1971-11-08', 'And as we wind on down the road...', 620000),
('Rock and Roll', 210, 35, '1972-02-21', "It’s been a long time since I rock and rolled...", 600000),
('Kashmir', 508, 36, '1975-02-24', 'Oh let the sun beat down upon my face...', 520000),
('Trampled Under Foot', 337, 36, '1975-04-02', 'Grease it, fix it, clean it, wash it...', 500000),

-- Black Sabbath
('Black Sabbath', 390, 37, '1970-02-13', 'What is this that stands before me?', 460000),
('The Wizard', 274, 37, '1970-02-13', 'Misty morning, clouds in the sky...', 440000),
('Paranoid', 174, 38, '1970-09-18', 'Finished with my woman because she couldn’t help me with my mind...', 530000),
('Iron Man', 358, 38, '1970-10-20', 'I am Iron Man...', 520000),
('Sweet Leaf', 315, 39, '1971-07-21', 'Alright now!', 500000),
('Children of the Grave', 305, 39, '1971-07-21', 'Revolution in their minds - the children start to march...', 490000),

-- Iron Maiden
('Running Free', 202, 40, '1980-02-08', 'Just sixteen, a pickup truck, out of money, out of luck...', 430000),
('Phantom of the Opera', 427, 40, '1980-04-11', "I’ve been looking so long for you now...", 420000),
('Hallowed Be Thy Name', 430, 41, '1982-03-22', "I’m waiting in my cold cell...", 490000),
('Run to the Hills', 312, 41, '1982-02-12', 'The white man came across the sea...', 480000),
('Aces High', 265, 42, '1984-09-03', 'There goes the siren that warns of the air raid...', 460000),
('2 Minutes to Midnight', 360, 42, '1984-08-06', 'Kill for gain or shoot to maim...', 450000),

-- Nirvana
('About a Girl', 170, 43, '1989-06-15', 'I need an easy friend, I do...', 370000),
('Blew', 198, 43, '1989-09-15', "If you wouldn’t mind, I would like it blew...", 350000),
('Smells Like Teen Spirit', 301, 44, '1991-09-10', "With the lights out, it’s less dangerous...", 650000),
('Come as You Are', 219, 44, '1991-11-21', 'Come as you are, as you were...', 630000),
('Heart-Shaped Box', 278, 45, '1993-08-23', 'She eyes me like a Pisces when I am weak...', 610000),
('All Apologies', 230, 45, '1993-12-06', 'I wish I was like you, easily amused...', 590000);
