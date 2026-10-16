# Etape 1 
## shema relationnel
- PLAT(__id_plat__,nom_plat,pu,#id_categorie) (modifie)
## Question piege
- Je choisis integer pour le pu
- Comme identifiant je choisis id_plat 


# Etape 2 
## shema relationnel;
- CATEGORIE(__id_categorie__,libelle) (nouveau)
## question piege
- il ne faut pas ajouter une colonne categorie dans plat puisque une categorie peux etre attibue a plusieurs plat (`one to many`) 
- des erreurs de frappe peuvent creer deux different categorie
- exemple : categorie `plat malagasy` et `plat gasy` sont different  

# Etape 3
## schema
- COMMANDE(__id_commande__,description?,date)
- COMMANDE_DETAIL(__id_commande_detail__,#id_commmande,#id_plat,quantite)
## piege 
- Je place quatite dans COMMANDE_DETAIL 

# Etape 4 
## schema 
- CLIENT (__id_client__,nom_client)
## piege 
- La cle etrangere n'est pas NULL 
- Il me faut LEFT JOIN 