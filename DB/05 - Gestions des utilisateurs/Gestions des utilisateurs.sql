-- GESTION DES UTILISATEURS --
--Je créer les rôles que j'utiliserai pour donner les droits--
CREATE IF NOT EXISTS ROLE 'ADMINISTRATEUR';
CREATE IF NOT EXISTS ROLE 'JOUEUR';
CREATE IF NOT EXISTS ROLE 'GESTION_BOUTIQUE';

-- PERMET DE DONNER TOUT LES DROITS A L'ADMIN --
GRANT, GRANT OPTION, SELECT, INSERT, UPDATE, DELETE ON db_space_invaders.* TO 'ADMINISTRATEUR' ; -- AJOUTER GRANT OPTION ET AUSSI SELECT INSERT UPDATE DELETE PLUTÔT QUE ALL PRIVILEGES


-- PERMET DE DONNER CERTAIN PRIVILEGES AUX UTILISATEURS --

-- JOUEUR --
GRANT SELECT  ON db_space_invaders.t_arme TO 'JOUEUR' ;  -- Permet de lire dans la table arme
GRANT SELECT, INSERT  ON db_space_invaders.t_commande TO 'JOUEUR' ;  -- Permet de lire et créer dans la table arme
GRANT SELECT  ON db_space_invaders.t_suive TO 'JOUEUR' ;  -- permet de creer dans la table commande
 -- FAIRE DE PREFENCE EN 1 LIGNE + AJOUTER LA TABLE INTERMEDIAIRE ENTRE LES DEUX TABLES -- 

-- GESTION_BOUTIQUE --
GRANT SELECT ON db_space_invaders.t_joueur TO 'GESTION_BOUTIQUE' ; -- Permet de lire dans la table arme
GRANT UPDATE, DELETE, SELECT, INSERT ON db_space_invaders.t_arme TO 'GESTION_BOUTIQUE' ; -- Permet de modifier lire supprimer dans la table arme
GRANT SELECT ON db_space_invaders.t_commande TO 'GESTION_BOUTIQUE' ; -- Permet de lire dans la table commande
GRANT SELECT ON db_space_invaders.t_suivre TO 'GESTION_BOUTIQUE' ; -- Permet de lire dans la table intermediare
 -- FAIRE DE PREFENCE EN 1 LIGNE + AJOUTER LA TABLE INTERMEDIAIRE ENTRE LES DEUX TABLES -- 

-- CREATION DES UTILISATEURS --
CREATE USER 'Joueur'@'%' IDENTIFIED BY 'password_joueur' -- creation de l'utilisateur en donnant son mdp et son id
GRANT 'JOUEUR' TO 'Joueur'@'%'; -- reçois le rôle 
SET DEFAULT ROLE 'JOUEUR' TO 'Joueur'; --donne le role


CREATE USER 'Administrateur'@'%' IDENTIFIED BY 'password_adminitrateur'; -- creation de l'utilisateur en donnant son mdp et son id
GRANT 'ADMINISTRATEUR' TO 'Administrateur'@'%'; -- reçois le rôle
SET DEFAULT ROLE 'ADMINISTRATEUR' TO 'Administrateur';  --donne le role
 

CREATE USER 'gestionboutique'@'%' IDENTIFIED BY 'password_gestionboutique'; -- creation de l'utilisateur en donnant son mdp et son id
GRANT 'GESTION_BOUTIQUE' TO 'gestionboutique'@'%'; -- reçois le rôle
SET DEFAULT ROLE 'GESTION_BOUTIQUE' TO 'gestionboutique'; --donne le role