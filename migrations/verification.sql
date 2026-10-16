-- Etape 01 
SELECT * FROM plat ORDER BY pu DESC;

-- Etape 02 
INSERT INTO categorie(libelle) VALUES ('categorie sans plat');

SELECT c.libelle as categorie, count(p.id_plat) as nb_plat FROM plat p 
RIGHT JOIN categorie c ON p.id_categorie = c.id_categorie 
GROUP BY c.libelle ORDER BY count(p.id_plat) DESC;

-- Etape 03 
SELECT 
    c.description as commande,
    c.date_commande as date,
    SUM(cd.quantite * p.pu) as montant_total
FROM commande c
JOIN commande_detail cd ON c.id_commande = cd.id_commande
JOIN plat p ON cd.id_plat = p.id_plat
GROUP BY c.id_commande, c.description, c.date_commande

-- Etape 04 
SELECT 
c.description as commande,
CASE 
    WHEN c.id_client IS NULL THEN 'client de passage'
    ELSE cl.nom_client
END as client
FROM  commande c
LEFT JOIN client cl ON c.id_client = cl.id_client;