-- GESTION DES UTILISATEURS --
--Je créer les rôles que j'utiliserai pour donner les droits--
CREATE ROLE 'ADMINISTRATEUR';
CREATE ROLE 'JOUEUR';
CREATE ROLE 'GESTION_BOUTIQUE';

-- PERMET DE DONNER TOUT LES DROITS A L'ADMIN --
GRANT ALL PRIVILEGES ON db_space_invaders.* TO 'ADMINISTRATEUR' ;


-- PERMET DE DONNER CERTAIN PRIVILEGES AUX UTILISATEURS --

-- JOUEUR --
GRANT SELECT  ON db_space_invaders.t_arme TO 'JOUEUR' ;  -- Permet de lire dans la table arme
GRANT SELECT  ON db_space_invaders.t_commande TO 'JOUEUR' ;  -- Permet de lire dans la table arme
GRANT INSERT  ON db_space_invaders.t_commande TO 'JOUEUR' ;  -- permet de creer dans la table commande

-- GESTION_BOUTIQUE --
GRANT SELECT ON db_space_invaders.t_joueur TO 'GESTION_BOUTIQUE' ; -- Permet de lire dans la table arme
GRANT UPDATE ON db_space_invaders.t_arme TO 'GESTION_BOUTIQUE' ; -- Permet de modifier dans la table arme
GRANT SELECT ON db_space_invaders.t_arme TO 'GESTION_BOUTIQUE' ; -- Permet de lire dans la table arme
GRANT DELETE ON db_space_invaders.t_arme TO 'GESTION_BOUTIQUE' ; -- Permet de supprimer dans la table arme
GRANT INSERT ON db_space_invaders.t_arme TO 'GESTION_BOUTIQUE' ; -- Permet de creer dans la table arme
GRANT SELECT ON db_space_invaders.t_commande TO 'GESTION_BOUTIQUE' ; -- Permet de lire dans la table commande

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