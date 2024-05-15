
CREATE TABLE client
(
  id serial NOT NULL,
  nom character varying(64),
  prenom character varying(64),
  nss character varying(64),
  adresse character varying(64),
  tel character varying(64),
  permis character varying(64),
  etat character varying(64),
  CONSTRAINT client_pkey PRIMARY KEY (id)
)
WITH (OIDS=TRUE);
ALTER TABLE client OWNER TO postgres;


CREATE TABLE facture
(
  id integer NOT NULL DEFAULT nextval('"Facture_id_seq"'::regclass),
  nom character varying(64),
  prenom character varying(64),
  nss character varying(64),
  adresse character varying(64),
  tel character varying(64),
  permis character varying(64),
  etat character varying(64),
  marque character varying(64),
  modele character varying(64),
  numero_meneralogique character varying(64),
  kilometrage character varying(64),
  prix character varying(64),
  statut character varying,
  CONSTRAINT "Facture_pkey" PRIMARY KEY (id)
)
WITH (OIDS=TRUE);
ALTER TABLE facture OWNER TO postgres;


CREATE TABLE utilisateurs
(
  id integer NOT NULL DEFAULT nextval('"Utilisateurs_id_seq"'::regclass),
  log character varying(64),
  passe character varying(64),
  ip character varying(64),
  statut character varying(64),
  CONSTRAINT "Utilisateurs_pkey" PRIMARY KEY (id)
)
WITH (OIDS=TRUE);
ALTER TABLE utilisateurs OWNER TO postgres;


CREATE TABLE vehicule
(
  id integer NOT NULL DEFAULT nextval('"Vehicule_id_seq"'::regclass),
  marque character varying(64),
  modele character varying(64),
  numero_meneralogique character varying(64),
  kilometrage character varying(64),
  prix character varying(64),
  statut character varying,
  CONSTRAINT "Vehicule_pkey" PRIMARY KEY (id)
)
WITH (OIDS=TRUE);
ALTER TABLE vehicule OWNER TO postgres;
