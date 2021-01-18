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
/*select NOME, COGNOME, sum(TARIFFA_SETTIMANALE) as Guadagno from RESIDENZE, PROPRIETARI where PROPRIETARI.codice_proprietario=residenze.codice_proprietario group by NOME, COGNOME order by guadagno desc*/

Trovare la media dei posti letto di ciascuna località
/*select CITTA, avg(POSTI_LETTO) as "Media posti letto" from RESIDENZE group by CITTA*/

Trovare l’appartamento meno costoso, il cognome e il numero di telefono del suo proprietario
/*select NOME, COGNOME, TELEFONO from PROPRIETARI, RESIDENZE where TARIFFA_SETTIMANALE=(select min(TARIFFA_SETTIMANALE) from RESIDENZE) and proprietari.codice_proprietario=residenze.codice_proprietario*/
