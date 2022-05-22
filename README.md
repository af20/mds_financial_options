# mds_financial_options

Economic and Financial Time Series: modulo 1 - Assignments
## Problema 1
1. Scrivete una funzione in R che calcola il payoff di una Call con posizione lunga.
Verificate il comportamento della funzione con un esempio numerico.

2. Usando la funzione nel punto 1 disegnate il payoff di una strategia butterfly.

## Problema 2. 
1. Scrivete una funzione in R che valuta un’opzione europea di tipo put in un albero
binomiale uniperiodale.
- Gli argomenti della funzione sono: S 0 , K, t 0 (valore di default 0), T (valore
di default 1) e r (regime composto);
- la funzione restituisce una lista contenente il prezzo della put a t 0 , il vettore
Q = (q u , q d ) and le quantità y ? di titolo rischioso nel portafoglio di replica.

2. Scrivete una funzione in R che internamente richiama la funzione del punto 1 e
calcola il prezzo al tempo t 0 di una call europea con la put-call parity (ricordatevi
di utilizzare il regime composto anche nella put-call parity per coerenza con il punto
1).

3. Verificate il comportamento delle due funzioni con un esempio numerico. Verificate
che la call del punto 2 soddisfi i vincoli di Merton (regime composto).

## Problema 3. 
Utilizzando i pacchetti quantmod e fOptions scrivere un file in R che risolve i seguenti punti:
1. Scaricare i prezzi di chiusura giornalieri di una serie finanziaria.
2. Stimare la volatilitÆ storica dai log-rendimenti su base annua.
3. Valutare un’opzione di tipo put europeo utilizzando la funzione CRRBinomialTreeOption con strike 1.05∗S 0 (S 0 Ø il prezzo corrente del sottostante). Analizzare il comportamento del prezzo all’aumentare del numero di periodi.
