#regola per utenti solo maggiorenni
ALTER TABLE utenti
ADD CHECK (eta >= 18);

#aggiungiamo una regola per fare in modo che si possa inserire solo o una p.iva o un codice fiscale
ALTER TABLE utenti
ADD CONSTRAINT chk_registrazione CHECK (length(id_utente) = 11 OR length(id_utente) = 16);

#regola se lenght = 16 (codice fiscale) categoria = acquisto (obbligato)
ALTER TABLE utenti
ADD CONSTRAINT chk_privato_solo_acquisto CHECK ((length(id_utente) = 16 AND categoria = 'acquisto') OR (length(id_utente) = 11) AND categoria IN ('acquisto', 'vendita'));

#regola se l' utente è privato l' agevolazione (bool) è 0
ALTER TABLE clienti
ADD CONSTRAINT chk_agevolazione_privato CHECK (tipologia_clienti = "privato" AND agevolazione = 0 OR tipologia_clienti = "azienda");

'''
CREATE VIEW storico_acquisti AS 
SELECT ordine.data_ordine,
	     ordine.ID_ORDINE,
         ordine.sconto_applicato,
         utenti.NOME_UTENTE,
         clienti.tipologia_clienti,
         clienti.Agevolazione,
         prodotti.nome,
         prodotti.marca
FROM prodotti 
JOIN annuncio 
	ON prodotti.ID_prodotti = annuncio.ID_PRODOTTI
JOIN ordine
	ON ordine.ID_ORDINE = annuncio.ID_ORDINE
JOIN clienti
	ON clienti.ID_UTENTE = ordine.ID_ORDINE
JOIN utenti
	ON utenti.ID_UTENTE = clienti.ID_UTENTE
'''

CREATE VIEW storico_acquisti AS
SELECT ordine.data_ordine,
	   ordine.id_ordine,
       ordine.sconto_applicato,
       utenti.nome_utente,
       clienti.tipologia_clienti,
       clienti.agevolazione,
       prodotti.nome,
       prodotti.marca
FROM prodotti 
JOIN annuncio
	ON prodotti.id_prodotti = annuncio.id_prodotti
JOIN ordine 
	ON ordine.id_ordine = annuncio.id_ordine
JOIN clienti
	ON clienti.id_utente = ordine.id_utente
JOIN utenti
	ON utenti.id_utente = clienti.id_utente
'''   
#ordine vi visualizzazione desiderato per view catalogo_annuncio
-data_annuncio
-id_annuncio
-nome_utente
-prodotti.nome
-prodotti.marca
-quantita
-data_scadenza
-prezzo originale    
'''
CREATE VIEW catalogo_annuncio AS
SELECT annuncio.id_annuncio,
	   annuncio.data_annuncio,
	   utenti.nome_utente,
       prodotti.nome,
       prodotti.marca,
       annuncio.quantita,
       annuncio.data_scadenza,
       annuncio.prezzo_originale,
       totale_ordine(annuncio.prezzo_originale, ordine.sconto_applicato, annuncio.quantita) AS prezzo_finale
FROM prodotti 
JOIN annuncio
	ON prodotti.id_prodotti = annuncio.id_prodotti
JOIN attivita_vendita
	ON attivita_vendita.id_utente = annuncio.id_utente
JOIN utenti 
	ON utenti.id_utente = attivita_vendita.id_utente
JOIN ordine
	ON annuncio.id_ordine = ordine.id_ordine
    
# INIZIO FUNZIONI !
#Funzione per calcolare il prezzo totale
#FUNZIONE
#Funzione per calcolare il prezzo totale

DELIMITER //
CREATE FUNCTION Totale_Ordine(prezzo_partenza DOUBLE, sconto INT, quantita INT) RETURNS DOUBLE
DETERMINISTIC
BEGIN
	SET @prezzoscontato = (prezzo_partenza - (prezzo_partenza * sconto / 100 ));

	RETURN ROUND((@prezzoscontato * quantita),2);
END ; 
// DELIMITER ;

#richiamo la funzione di cui sopra
SELECT totale_ordine(annuncio.prezzo_originale, ordine.sconto_applicato, annuncio.quantita) AS prezzo_finale
FROM annuncio
JOIN ordine
	ON annuncio.id_ordine = ordine.id_ordine

#PROCEDURA CHE AGGIUNGE UN UTENTE PER FARE INSERT INTO CON VARI IF

DELIMITER //
CREATE PROCEDURE Aggiungi_Utente(IN ID_UTENT varchar(105), IN NOME_UTENT VARCHAR(105), IN ET int, IN CATEGORI VARCHAR(105), IN  tipologi VARCHAR(105), IN agevolazion TINYINT)
BEGIN 
	SET @verificautente = (SELECT ID_UTENTE from utenti WHERE ID_UTENTE = ID_UTENT);
    IF @verificautente IS NOT NULL THEN SELECT "Utente già registrato";
    ELSE INSERT INTO utenti ( id_utente, nome_utente, eta, categoria) VALUES (id_utent, nome_utent, et, categori);
    END IF;
    SET @verificacategoria = (SELECT Categoria FROM utenti WHERE ID_UTENTE = ID_UTENT);
    IF @verificacategoria = "Vendita" THEN insert into attivita_vendita( id_utente, tipologia_vendita) VALUES (id_utent, tipologi);
    ELSEIF @verificacategoria = "Acquisto" THEN INSERT INTO clienti(id_utente, tipologia_clienti, agevolazione) VALUES (id_utent, tipologi, agevolazion);
	ELSE SELECT "Non esiste questa categoria";
    END IF; 
    END    
// DELIMITER ;

CALL Aggiungi_Utente("asdfghjkloiuytre", "Laura Passeri", 19, "Acquisto", "Privato", 0 )

         
