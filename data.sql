CREATE TABLE Games (
    Title VARCHAR(255),
    Platform VARCHAR(50),
    Mode VARCHAR(20),
    Genre VARCHAR(50),
    SubGenre VARCHAR(50)
);

INSERT INTO Games (Title, Platform, Mode, Genre, SubGenre) VALUES
    ('Pocket Card Jockey', 'Mobile', 'Multiplayer', 'Fantasy', 'Arcade'),
    ('Resident Evil Village', 'Mobile', 'Single', 'Action', 'Shooter'),
    ('Hello Kitty', 'Mobile', 'Multiplayer', 'Arcade', 'Fantasy'),
    ('Honkai: Star Rail', 'Mobile', 'Single', 'Fantasy', 'Shooter'),
    ('Puzzmo', 'Mobile', 'Single', 'Arcade', 'Fantasy'),

    ('Dead Space', 'PC', 'Single', 'Action', 'Shooter'),
    ('Starfield', 'PC', 'Single', 'Action', 'RPG'),
    ('Control', 'PC', 'Single', 'Action', 'Fantasy'),
    ('Baldur''s Gate 3', 'PC', 'Multiplayer', 'Fantasy', 'Shooter'),
    ('Valorant', 'PC', 'Multiplayer', 'Action', 'Shooter'),

    ('Marvels Spider-Man', 'Playstation', 'Single', 'Fantasy', 'Action'),
    ('The Last of Us Part 2', 'Playstation', 'Multiplayer', 'Action', 'Shooter'),
    ('Final Fantasy VII Remake', 'Playstation', 'Multiplayer', 'Fantasy', 'Action'),
    ('God of War', 'Playstation', 'Multiplayer', 'Action', 'Fantasy'),
    ('Fall Guys: Ultimate Knockout', 'Playstation', 'Multiplayer', 'Arcade', 'Fantasy'),

    ('The Legend of Zelda: Tears of the Kingdom', 'Nintendo', 'Multiplayer', 'Fantasy', 'Action'),
    ('Metroid Prime Remastered', 'Nintendo', 'Multiplayer', 'Fantasy', 'Action'),
    ('Super Mario Odyssey', 'Nintendo', 'Multiplayer', 'Fantasy', 'Action'),
    ('Pokemon Scarlet and Violet', 'Nintendo', 'Multiplayer', 'Fantasy', 'Action'),
    ('The Legend of Zelda', 'Nintendo', 'Single', 'Fantasy', 'RPG')
    
    ('Starfield', 'Xbox', 'Single', 'Action', 'RPG'),
    ('Resident Evil 4', 'Xbox', 'Single', 'Action', 'Shooter'),
    ('Minecraft Legends', 'Xbox', 'Multiplayer', 'Fantasy', 'Action'),
    ('Star Wars Jedi: Survivor', 'Xbox', 'Single', 'Fantasy', 'Shooter'),
    ('Deathloop', 'Xbox', 'Multiplayer', 'Action', 'Shooter');
