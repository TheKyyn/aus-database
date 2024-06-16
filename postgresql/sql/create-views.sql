DROP VIEW IF EXISTS tracteurs_disponibles;

CREATE VIEW tracteurs_disponibles AS
SELECT
    ferme.raison_social,
    commune.nom_commune,
    commune.lat_long,
    tracteur.image_url,
    tracteur.modele,
    tracteur.categorie,
    tracteur.annee_fabrication
FROM
    commune
    JOIN ferme ON ferme.commune_id :: text = commune.id :: text
    JOIN tracteur_par_ferme ON ferme.id = tracteur_par_ferme.ferme_id
    JOIN tracteur ON tracteur.id = tracteur_par_ferme.tracteur_id;