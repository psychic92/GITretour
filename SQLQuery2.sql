-- use master;

-- CREATE DATABASE village_green;

USE village_green;

/*CREATE TABLE pays ( 
   pay_id                    INT				NOT NULL		PRIMARY KEY,
   pay_libelle               VARCHAR(50)		NOT NULL		UNIQUE
);*/

/*CREATE TABLE  Categorie (
   cat_id                    INT				NOT NULL,
   cat_nom                   VARCHAR(50)		NOT NULL		UNIQUE,
   cat_parent                INT				NOT NULL,

   CONSTRAINT PK_Categorie              PRIMARY KEY (cat_id),
   CONSTRAINT FK_Categorie_Categorie    FOREIGN KEY (cat_parent) REFERENCES Categorie(cat_id)
);*/

/*CREATE TABLE poste (
   pos_id                     INT             NOT NULL         PRIMARY KEY,
   pos_libelle                VARCHAR(255)    NOT NULL,
   pos_descrition             VARCHAR(255)    NOT NULL,

   );*/

/*CREATE TABLE Client(
   cli_id                     INT             NOT NULL         PRIMARY KEY,
   cli_nom                    VARCHAR(255)    NOT NULL,
   cli_prenom                 VARCHAR(255)    NOT NULL,
   cli_sexe                   VARCHAR(1)      NOT NULL,
   cli_date_de_naissance      DATE            NOT NULL,
   cli_Coéfiecients           DECIMAL(15,4)   NOT NULL,
   cli_ad_facturation         VARCHAR(50)     NOT NULL,
   cli_adresse_livraison      VARCHAR(50)     NOT NULL,
   cli_code_postal            VARCHAR(10)     NOT NULL,
   cli_mail                   VARCHAR(50)     NOT NULL,
   cli_motsdepasse            VARCHAR(50)     NOT NULL,
   cli_login                  VARCHAR(50)     NOT NULL,
   );*/

/*CREATE TABLE employé (
   emp_id                    INT             NOT NULL,
   emp_Nom                   VARCHAR(25)     NOT NULL,
   emp_Prénom                VARCHAR(25)     NOT NULL,
   emp_telephone             VARCHAR(50)     NOT NULL,
   emp_date_entree           DATETIME        NOT NULL,
   emp_date_sortie           DATETIME        NOT NULL,
   emp_type_client           VARCHAR(50)     NOT NULL,
   emp_motdepasse            DECIMAL(15,2)   NOT NULL,
   emp_login                 VARCHAR(50)     NOT NULL,
   emp_n_secu_social         DECIMAL(15,2)   NOT NULL,
   emp_mail                  VARCHAR(50)     NOT NULL,
   emp_cp                    VARCHAR(50)     NOT NULL,
   emp_adresse               VARCHAR(50)     NOT NULL,
   emp_ville                 VARCHAR(50)     NOT NULL, 
   emp_sexe                  VARCHAR(50)     NOT NULL,
   emp_poste                 INT             NOT NULL,   
   
   CONSTRAINT PK_employé            PRIMARY KEY (emp_id),
   CONSTRAINT FK_employé_employé    FOREIGN KEY (emp_poste) REFERENCES employé(emp_id)
   );*/

/*CREATE TABLE Fournisseurs (
   FOu_id                    INT              NOT NULL,
   Fou_Nom                   VARCHAR(25)      NOT NULL,
   Fou_adresse               VARCHAR(50)      NOT NULL,
   Fou_code_postal           VARCHAR(50)      NOT NULL,
   Fou_ville                 VARCHAR(50)      NOT NULL,
   Fou_telephone             VARCHAR(50)      NOT NULL,
   Fou_mail                  VARCHAR(50)      NOT NULL,
   Fou_raison_social         VARCHAR(50)      NOT NULL,
   Fou_N_siret               VARCHAR(50)      NOT NULL,
   Fou_type                  VARCHAR(50)      NOT NULL,
   Fou_pays                  INT              NOT NULL,
   CONSTRAINT PK_Fournisseurs                 PRIMARY KEY (Fou_id),
   CONSTRAINT FK_Fournisseurs_Fournisseurs    FOREIGN KEY (Fou_pays) REFERENCES Fournisseurs(Fou_id)
   );*/

/*CREATE TABLE produits (
   pro_id                       INT            NOT NULL,
   Pro_Réf_produits             VARCHAR(50)    NOT NULL,
   Pro_Réf_fournisseurs         VARCHAR(50)    NOT NULL,
   Pro_Nom                      VARCHAR(50)    NOT NULL,
   Pro_photo                    VARCHAR(max)   NOT NULL,
   Pro_prix_HT                  VARCHAR(50)    NOT NULL,
   pro_prix_vente_ht            VARCHAR(50)    NOT NULL,
   Pro_Stock                    VARCHAR(50)    NOT NULL,
   Pro_Libelle_court            VARCHAR(50)    NOT NULL,
   Pro_libelle_long             VARCHAR(50)    NOT NULL,
   Pro_Validité                 VARCHAR(50)    NOT NULL,
   pro_categoriees              INT            NOT NULL, 
   CONSTRAINT PK_produits                 PRIMARY KEY (pro_id),
   CONSTRAINT FK_produits_produits        FOREIGN KEY (pro_categoriees) REFERENCES produits(pro_id)
   );*/

/*CREATE TABLE Commandes (
   com_id                        INT             NOT NULL,
   Com_Reference                 VARCHAR(50)     NOT NULL,
   Com_adresse_de_facturation    VARCHAR(50)     NOT NULL,
   Com_Date_commande             DATETIMEOFFSET  NOT NULL,
   Com_Prix_total_Ht             VARCHAR(50)     NOT NULL,
   Com_Reduction                 VARCHAR(50)     NOT NULL,
   Com_mode_paiement             VARCHAR(50)     NOT NULL,
   com_livraison                 INT             NOT NULL,
   CONSTRAINT PK_commandes               PRIMARY KEY (com_id),
   CONSTRAINT FK_commandes_commandes     FOREIGN KEY (com_livraison) REFERENCES commandes(com_id)
   );*/

/*CREATE TABLE suivre (
   cli_id                        INT             NOT NULL,
   emp_id                        INT             NOT NULL,
   CONSTRAINT PK_suivre               PRIMARY KEY (cli_id),
   CONSTRAINT FK_suivre_suivre        FOREIGN KEY (emp_id) REFERENCES    suivre(cli_id)
   );*/

   /*CREATE TABLE ligne_de_commande (
   lig_id                        INT              NOT NULL,
   lig_quantite                  INT              NOT NULL,
   lig_remise                    VARCHAR(255)     NOT NULL,
   pro_id                        INT              NOT NULL,
   com_id                        INT              NOT NULL,
   CONSTRAINT PK_ligne_de_commande                PRIMARY KEY (lig_id),
   CONSTRAINT FK_REFERENCES_ligne_de_commande_ligne_de_commande       FOREIGN KEY (com_id)        REFERENCES    ligne_de_commande(lig_id),
   CONSTRAINT FK_REFERENCE_PRODUIT FOREIGN KEY(pro_id) REFERENCES produits(pro_id)
   
   );*/

/*CREATE TABLE Livraison (
   com_id                       INT               NOT NULL,
   liv_id                       INT               NOT NULL,
   liv_d_reelle                 DATE              NOT NULL,
   liv_d_expedition             DATE              NOT NULL,
   liv_d_preparation            DATE              NOT NULL,
   CONSTRAINT PK_Livraison                  PRIMARY KEY (com_id),
   CONSTRAINT FK_REFERENCES_Livraison       FOREIGN KEY (liv_id)        REFERENCES    Livraison(com_id),

   );*/

/*CREATE TABLE Contenir (
   lig_id                       INT               NOT NULL,
   liv_id                       INT               NOT NULL,
   quantite                     INT               NOT NULL,
   CONSTRAINT PK_Contenir                  PRIMARY KEY (lig_id),
   CONSTRAINT FK_Contenir       FOREIGN KEY (liv_id)        REFERENCES    Contenir(lig_id),

   );*/
