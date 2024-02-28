SELECT bar.nom, AVG(noter.note) AS note_moyenne
FROM BAR 
LEFT JOIN NOTER ON bar.id = noter.id_bar
GROUP BY bar.nom
HAVING AVG(noter.note) > 4 
LIMIT 5 ;


SELECT nom FROM BAR
ORDER BY nom
LIMIT 10;


UPDATE ouvre SET est_ouvert = true WHERE id_bar = 1 AND id_jour = 2 ;

DELETE FROM `bar’
WHERE id = 2;


SELECT nom FROM BAR
UNION
SELECT nom FROM EVENEMENT;

Alter table evenement ADD prix_entree float ;

DROP TABLE bar

SELECT DISTINCT nom FROM bar;


Select* from boisson where nom like ‘R%’;

SELECT * FROM utilisateur
WHERE prenom IN ( 'Maurice', 'Marie', 'Thimothé' );

SELECT b.nom, c.prix
FROM boisson b
INNER JOIN comporte c ON b.id = c.id_boisson
INNER JOIN cartehappyhour ch ON c.id_carte = ch.id
INNER JOIN bar ba ON ch.id_bar = ba.id
WHERE ba.nom = 'Le Joyeux'
AND c.prix BETWEEN  4 AND 5;


SELECT 
    CASE
        WHEN COUNT(*) = 1 THEN 'Connexion réussie' 
        WHEN COUNT(*) = 0 THEN 'Utilisateur non trouvé' 
        ELSE 'Plusieurs utilisateurs trouvés' 
    END AS resultat
FROM utilisateur
WHERE adresse_email = 'user@example.com' AND mot_de_passe = 'password123';


TRUNCATE TABLE `utilisateur`;

SELECT nom, prenom, adresse_email
FROM UTILISATEUR
WHERE est_abonne = TRUE;


EXPLAIN SELECT * FROM BAR;

BEGIN;
UPDATE BAR
SET nom = 'Nouveau Nom'
WHERE id_bar = 1;
DELETE FROM EVENEMENT
WHERE id_evenement = 123;
COMMIT;



