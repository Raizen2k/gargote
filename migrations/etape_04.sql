CREATE TABLE client(
    id_client SERIAL PRIMARY KEY,
    nom_client VARCHAR(255)
);

INSERT INTO client(nom_client) VALUES
('Client 1'),
('Client 2'),
('Client 3');

ALTER TABLE commande ADD COLUMN id_client INTEGER REFERENCES client(id_client); 

UPDATE commande SET id_client = 1 WHERE id_commande = 1;
UPDATE commande SET id_client = 2 WHERE id_commande = 2;