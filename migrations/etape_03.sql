CREATE TABLE IF NOT EXISTS commande(
    id_commande SERIAL PRIMARY KEY,
    description VARCHAR(255),
    date_commande TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS commande_detail(
    id_commande_detail SERIAL PRIMARY KEY,
    id_commande INTEGER REFERENCES commande(id_commande) NOT NULL,
    id_plat INTEGER REFERENCES plat(id_plat) NOT NULL,
    quantite INTEGER 
);

INSERT INTO commande(description) VALUES
('Commande 1'),
('Commande 2'),
('Commande 3');

INSERT INTO commande_detail(id_commande,id_plat,quantite) VALUES
(1, 1, 2),
(1, 2, 1),
(2, 1, 3),
(2, 3, 1),
(3, 2, 2),
(3, 3, 1);