------------------------------------------------------------
--        Script SQLite  
------------------------------------------------------------
------------------------------------------------------------
-- Table: SAUVEGARDERECHERCHE
------------------------------------------------------------
CREATE TABLE SAUVEGARDERECHERCHE(
	idWhere          INTEGER NOT NULL,
	nomWhere         TEXT,
	titreWhere       TEXT,
	idAuteurWhere    TEXT,
	idSerieWhere     INTEGER,
	idGenreWhere     INTEGER,
	CONSTRAINT SAUVEGARDERECHERCHE_PK PRIMARY KEY (idWhere)
);


------------------------------------------------------------
-- Table: AUTEUR
------------------------------------------------------------
CREATE TABLE AUTEUR(
	id_auteur        TEXT NOT NULL ,
	nom_auteur       TEXT ,
	prenom_auteur    TEXT,
	CONSTRAINT AUTEUR_PK PRIMARY KEY (id_auteur)
);


------------------------------------------------------------
-- Table: SERIE
------------------------------------------------------------
CREATE TABLE SERIE(
	id_serie     INTEGER NOT NULL ,
	nom_serie    TEXT NOT NULL,
	CONSTRAINT SERIE_PK PRIMARY KEY (id_serie)
);


------------------------------------------------------------
-- Table: MOTSCLEF
------------------------------------------------------------
CREATE TABLE MOTSCLEF(
	id_mots      INTEGER NOT NULL ,
	type_mots    TEXT NOT NULL,
	CONSTRAINT MOTSCLEF_PK PRIMARY KEY (id_mots)
);


------------------------------------------------------------
-- Table: TOMES
------------------------------------------------------------
CREATE TABLE TOMES(
	id_tomes      INTEGER NOT NULL ,
	type_genre    TEXT NOT NULL,
	CONSTRAINT TOMES_PK PRIMARY KEY (id_tomes)
);


------------------------------------------------------------
-- Table: GENRE
------------------------------------------------------------
CREATE TABLE GENRE(
	id_genre      INTEGER NOT NULL ,
	type_genre    TEXT NOT NULL,
	CONSTRAINT GENRE_PK PRIMARY KEY (id_genre)
);


------------------------------------------------------------
-- Table: LIVRE
------------------------------------------------------------
CREATE TABLE LIVRE(
	id_livre        TEXT NOT NULL ,
	titre           TEXT NOT NULL ,
	nbpages         INTEGER NOT NULL ,
	evaluation      INTEGER ,
	datepubli       TEXT NOT NULL ,
	chemin_livre    TEXT NOT NULL ,
	description     TEXT ,
	avancement      INTEGER NOT NULL ,
	langue          TEXT NOT NULL ,
	hash            TEXT NOT NULL ,
	id_genre        INTEGER NOT NULL ,
	id_tomes        INTEGER ,
	id_serie        INTEGER,
	CONSTRAINT LIVRE_PK PRIMARY KEY (id_livre)

	,CONSTRAINT LIVRE_GENRE_FK FOREIGN KEY (id_genre) REFERENCES GENRE(id_genre)
	,CONSTRAINT LIVRE_TOMES0_FK FOREIGN KEY (id_tomes) REFERENCES TOMES(id_tomes)
	,CONSTRAINT LIVRE_SERIE1_FK FOREIGN KEY (id_serie) REFERENCES SERIE(id_serie)
);


------------------------------------------------------------
-- Table: COLLECT
------------------------------------------------------------
CREATE TABLE COLLECT(
	id_collect     TEXT NOT NULL ,
	nom_collect    TEXT NOT NULL,
	CONSTRAINT COLLECT_PK PRIMARY KEY (id_collect)
);


------------------------------------------------------------
-- Table: EDITEUR
------------------------------------------------------------
CREATE TABLE EDITEUR(
	id_editeur     TEXT NOT NULL ,
	nom_editeur    TEXT NOT NULL,
	CONSTRAINT EDITEUR_PK PRIMARY KEY (id_editeur)
);


------------------------------------------------------------
-- Table: EDITER_LIVRE
------------------------------------------------------------
CREATE TABLE EDITER_LIVRE(
	id_editeur    TEXT NOT NULL ,
	id_livre      TEXT NOT NULL ,
	id_collect    TEXT NOT NULL ,
	ISBN          TEXT NOT NULL ,
	pays          TEXT NOT NULL,
	CONSTRAINT EDITER_LIVRE_PK PRIMARY KEY (id_editeur,id_livre,id_collect)

	,CONSTRAINT EDITER_LIVRE_EDITEUR_FK FOREIGN KEY (id_editeur) REFERENCES EDITEUR(id_editeur)
	,CONSTRAINT EDITER_LIVRE_LIVRE0_FK FOREIGN KEY (id_livre) REFERENCES LIVRE(id_livre)
	,CONSTRAINT EDITER_LIVRE_COLLECT1_FK FOREIGN KEY (id_collect) REFERENCES COLLECT(id_collect)
);


------------------------------------------------------------
-- Table: APPARTIENT_COLLECT
------------------------------------------------------------
CREATE TABLE APPARTIENT_COLLECT(
	id_collect    TEXT NOT NULL ,
	id_livre      TEXT NOT NULL,
	CONSTRAINT APPARTIENT_COLLECT_PK PRIMARY KEY (id_collect,id_livre)

	,CONSTRAINT APPARTIENT_COLLECT_COLLECT_FK FOREIGN KEY (id_collect) REFERENCES COLLECT(id_collect)
	,CONSTRAINT APPARTIENT_COLLECT_LIVRE0_FK FOREIGN KEY (id_livre) REFERENCES LIVRE(id_livre)
);


------------------------------------------------------------
-- Table: ASSOCIER_MOTSCLEF
------------------------------------------------------------
CREATE TABLE ASSOCIER_MOTSCLEF(
	id_mots     INTEGER NOT NULL ,
	id_livre    TEXT NOT NULL,
	CONSTRAINT ASSOCIER_MOTSCLEF_PK PRIMARY KEY (id_mots,id_livre)

	,CONSTRAINT ASSOCIER_MOTSCLEF_MOTSCLEF_FK FOREIGN KEY (id_mots) REFERENCES MOTSCLEF(id_mots)
	,CONSTRAINT ASSOCIER_MOTSCLEF_LIVRE0_FK FOREIGN KEY (id_livre) REFERENCES LIVRE(id_livre)
);


------------------------------------------------------------
-- Table: A_ECRIT
------------------------------------------------------------
CREATE TABLE A_ECRIT(
	id_auteur    TEXT NOT NULL ,
	id_livre     TEXT NOT NULL,
	CONSTRAINT A_ECRIT_PK PRIMARY KEY (id_auteur,id_livre)

	,CONSTRAINT A_ECRIT_AUTEUR_FK FOREIGN KEY (id_auteur) REFERENCES AUTEUR(id_auteur)
	,CONSTRAINT A_ECRIT_LIVRE0_FK FOREIGN KEY (id_livre) REFERENCES LIVRE(id_livre)
);


------------------------------------------------------------
-- Table: GENRE DATA Livres
------------------------------------------------------------
INSERT INTO GENRE (id_genre, type_genre) VALUES (0, 'D??faut'); 
INSERT INTO GENRE (id_genre, type_genre) VALUES (1, 'Actualit??');
INSERT INTO GENRE (id_genre, type_genre) VALUES (2, 'Adolescent'); 
INSERT INTO GENRE (id_genre, type_genre) VALUES (3, 'Amour');
INSERT INTO GENRE (id_genre, type_genre) VALUES (4, 'Aventure');
INSERT INTO GENRE (id_genre, type_genre) VALUES (5, 'Bien-??tre');
INSERT INTO GENRE (id_genre, type_genre) VALUES (6, 'Biographie');
INSERT INTO GENRE (id_genre, type_genre) VALUES (7, 'Bit-Lit');
INSERT INTO GENRE (id_genre, type_genre) VALUES (8, 'Classique');
INSERT INTO GENRE (id_genre, type_genre) VALUES (9, 'Cuisine et Vin');
INSERT INTO GENRE (id_genre, type_genre) VALUES (10, 'D??veloppement personnel');
INSERT INTO GENRE (id_genre, type_genre) VALUES (11, 'Dictionnaires');
INSERT INTO GENRE (id_genre, type_genre) VALUES (12, '??conomie');
INSERT INTO GENRE (id_genre, type_genre) VALUES (13, '??rotique');
INSERT INTO GENRE (id_genre, type_genre) VALUES (14, '??sot??risme');
INSERT INTO GENRE (id_genre, type_genre) VALUES (15, 'Essai');
INSERT INTO GENRE (id_genre, type_genre) VALUES (16, 'Fantastique');
INSERT INTO GENRE (id_genre, type_genre) VALUES (17, 'Guerre');
INSERT INTO GENRE (id_genre, type_genre) VALUES (18, 'Histoire');
INSERT INTO GENRE (id_genre, type_genre) VALUES (19, 'Horreur');
INSERT INTO GENRE (id_genre, type_genre) VALUES (20, 'Humour');
INSERT INTO GENRE (id_genre, type_genre) VALUES (21, 'Informatique');
INSERT INTO GENRE (id_genre, type_genre) VALUES (22, 'Journalisme');
INSERT INTO GENRE (id_genre, type_genre) VALUES (23, 'Litt??rature');
INSERT INTO GENRE (id_genre, type_genre) VALUES (24, 'M??decine');
INSERT INTO GENRE (id_genre, type_genre) VALUES (25, 'Nature et Animaux');
INSERT INTO GENRE (id_genre, type_genre) VALUES (26, 'Philosophie');
INSERT INTO GENRE (id_genre, type_genre) VALUES (27, 'Po??sie');
INSERT INTO GENRE (id_genre, type_genre) VALUES (28, 'Policier');
INSERT INTO GENRE (id_genre, type_genre) VALUES (29, 'Politique');
INSERT INTO GENRE (id_genre, type_genre) VALUES (30, 'Psychologie');
INSERT INTO GENRE (id_genre, type_genre) VALUES (31, 'Religion');
INSERT INTO GENRE (id_genre, type_genre) VALUES (32, 'Romance');
INSERT INTO GENRE (id_genre, type_genre) VALUES (33, 'Romance Gay');
INSERT INTO GENRE (id_genre, type_genre) VALUES (34, 'Sant??');
INSERT INTO GENRE (id_genre, type_genre) VALUES (35, 'Science');
INSERT INTO GENRE (id_genre, type_genre) VALUES (36, 'Science Fiction');
INSERT INTO GENRE (id_genre, type_genre) VALUES (37, 'Soci??t??');
INSERT INTO GENRE (id_genre, type_genre) VALUES (38, 'Sociologie');
INSERT INTO GENRE (id_genre, type_genre) VALUES (39, 'Spiritualit??');
INSERT INTO GENRE (id_genre, type_genre) VALUES (40, 'Sport');
INSERT INTO GENRE (id_genre, type_genre) VALUES (41, 'Terreur');
INSERT INTO GENRE (id_genre, type_genre) VALUES (42, 'Thriller');
INSERT INTO GENRE (id_genre, type_genre) VALUES (43, 'Voyage/Tourisme');
INSERT INTO GENRE (id_genre, type_genre) VALUES (44, 'Notices');
INSERT INTO GENRE (id_genre, type_genre) VALUES (45, 'Guide utilisateur');