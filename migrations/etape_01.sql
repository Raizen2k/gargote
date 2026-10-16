CREATE TABLE IF NOT EXISTS plat (
    id_plat SERIAL PRIMARY KEY,
    nom_plat VARCHAR(255),
    pu INTEGER NOT NULL 
);

INSERT INTO plat (nom_plat,pu) VALUES
('Romazava',7000),
('Ravitoto sy henakisoa',8000),
('Akoho sy voanio',8500),
('Mi sao',6000),
('Soupe chinoise',5000),
('Mofo gasy (les 4)',1000),
('Ranon apango',500);