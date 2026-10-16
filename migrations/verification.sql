-- Etape 01 
SELECT * FROM plat ORDER BY pu DESC;

-- Etape 02 
INSERT INTO categorie(libelle) VALUES ('categorie sans plat');

SELECT c.libelle as categorie, count(p.id_plat) as nb_plat FROM plat p 
RIGHT JOIN categorie c ON p.id_categorie = c.id_categorie 
GROUP BY c.libelle ORDER BY count(p.id_plat) DESC;