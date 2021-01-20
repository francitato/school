alter session set current_schema=ADMIN;

Trovare nome, cognome e numero di telefono dei proprietari di appartamenti a Sanremo con la piscina
/*select NOME, COGNOME, TELEFONO from PROPRIETARI, RESIDENZE where (RESIDENZE.CITTA='SANREMO' and RESIDENZE.PISCINA='TRUE' and proprietari.codice_proprietario=residenze.codice_proprietario)*/

Trovare il numero totale di posti letto a Imperia
/*select sum(POSTI_LETTO) as "posti letto" from RESIDENZE where RESIDENZE.CITTA='IMPERIA'*/

Trovare il numero di posti letto per ciascuna località
/*select CITTA, sum(POSTI_LETTO) as "posti letto" from RESIDENZE group by CITTA*/

Trovare il proprietario dell’appartamento con la tariffa massima
/*select NOME, COGNOME FROM PROPRIETARI, RESIDENZE where TARIFFA_SETTIMANALE=(select max(TARIFFA_SETTIMANALE) from RESIDENZE) and proprietari.codice_proprietario=residenze.codice_proprietario*/

Contare gli appartamenti con vista mare per ciascuna località
/*select CITTA, count(CODICE_RESIDENZA) as "Appartamenti con vista mare" from RESIDENZE where PISCINA='TRUE' group by CITTA*/

Trovare il guadagno settimanale di ciascun proprietario
/*select NOME, COGNOME, sum(TARIFFA_SETTIMANALE) as Guadagno from RESIDENZE, PROPRIETARI where PROPRIETARI.codice_proprietario=RESIDENZE.codice_proprietario group by NOME, COGNOME order by guadagno desc*/

Trovare la media dei posti letto di ciascuna località
/*select CITTA, avg(POSTI_LETTO) as "Media posti letto" from RESIDENZE group by CITTA*/

Trovare l’appartamento meno costoso, il cognome e il numero di telefono del suo proprietario
/*select NOME, COGNOME, TELEFONO from PROPRIETARI, RESIDENZE where TARIFFA_SETTIMANALE=(select min(TARIFFA_SETTIMANALE) from RESIDENZE) and proprietari.codice_proprietario=residenze.codice_proprietario*/

select CITTA, count(CODICE_RESIDENZA) as "Appartamenti con vista mare e piscina" from RESIDENZE where RESIDENZE.VISTA_MARE='TRUE' and RESIDENZE.PISCINA='TRUE' group by CITTA

select NOME, COGNOME, PROPRIETARI.INDIRIZZO from PROPRIETARI, RESIDENZE where PROPRIETARI.PROPRIETARIO_UNICO='TRUE' and RESIDENZE.CITTA='SANREMO' and proprietari.codice_proprietario=residenze.codice_proprietario


-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-


alter session set current_schema=ADMIN;

select RESIDENZA, count(ID) as "Numero docenti in una citta" from DOCENTI group by RESIDENZA order by count(ID) desc;

select NOME, COGNOME, DATA_DI_NASCITA from DOCENTI where DATA_DI_NASCITA<'15 NOV 1957';

select NOME, COGNOME, INCARICO_AGGIUNTIVO from DOCENTI, DATI_AMMINISTRATIVI where INCARICO_AGGIUNTIVO like 'Dipartimento%' and DOCENTI.ID=DATI_AMMINISTRATIVI.ID;

select REGIONE from RESIDENZE where CITTA='Cuneo';

select NOME, COGNOME, REGIONE from RESIDENZE, DOCENTI where REGIONE='Lombardia' and DOCENTI.RESIDENZA=RESIDENZE.CITTA;

select REGIONE, count(ID) as "Numero docenti in una regione" from DOCENTI, RESIDENZE where DOCENTI.RESIDENZA=RESIDENZE.CITTA group by REGIONE order by count(ID) asc;

select NOME, COGNOME, (65-ANNI_SERVIZIO) as "Anni prima della pensione" from DOCENTI, DATI_AMMINISTRATIVI where DOCENTI.ID=DATI_AMMINISTRATIVI.ID order by (65-ANNI_SERVIZIO) asc
