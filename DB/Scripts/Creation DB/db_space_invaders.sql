CREATE DATABASE db_space_invaders ;
USE db_space_invaders;

CREATE TABLE t_joueur(
   joueur_id INT AUTO_INCREMENT,
   pseudonyme VARCHAR(50) NOT NULL,
   nombre_points INT NOT NULL,
   PRIMARY KEY(joueur_id),
   UNIQUE(pseudonyme)
);

CREATE TABLE t_arme(
   arme_id INT AUTO_INCREMENT,
   type VARCHAR(50) NOT NULL,
   nom VARCHAR(50) NOT NULL,
   description VARCHAR(500) NOT NULL,
   prix INT NOT NULL,
   force INT NOT NULL,
   max_utilisation INT,
   PRIMARY KEY(arme_id),
   UNIQUE(nom)
);

CREATE TABLE t_commande(
   commande_id INT AUTO_INCREMENT,
   _date DATE NOT NULL,
   joueur_fk INT NOT NULL,
   PRIMARY KEY(commande_id),
   FOREIGN KEY(joueur_fk) REFERENCES t_joueur(joueur_id)
);

CREATE TABLE t_utiliser(
   joueur_fk INT,
   arme_fk INT,
   coup_restant SMALLINT,
   PRIMARY KEY(joueur_fk, arme_fk),
   FOREIGN KEY(joueur_fk) REFERENCES t_joueur(joueur_id),
   FOREIGN KEY(arme_fk) REFERENCES t_arme(arme_id)
);

CREATE TABLE t_suivre(
   arme_fk INT,
   commande_fk INT,
   quantite INT,
   PRIMARY KEY(arme_fk, commande_fk),
   FOREIGN KEY(arme_fk) REFERENCES t_arme(arme_id),
   FOREIGN KEY(commande_fk) REFERENCES t_commande(commande_id)
);
