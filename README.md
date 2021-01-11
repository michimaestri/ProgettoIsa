ProgettoIsa per la gestione di sensori 
Realizzazione di una applicazione web che funga da gateway per la gestione di sensori IoT
in una rete multidominio.
A questo scopo i sensori andranno simulati attraverso degli script in Ruby i quali
implementeranno l’upload di nuove misure inviando messaggi al server.
Nello specifico gli script utilizzano l’interfaccia ReST per sottomettere le misure serializzate in formato JSON.
L’applicazione deve fornire i seguenti servizi:
- registrazione utenti e sensori, gli ultimi saranno sempre legati ad un utente
proprietario con pieno controllo su essi.
- memorizzazione delle misure inviate dai sensori
- ogni utente può consultare tutte le misure rilevate dai propri sensori
- Gli utenti possono settare i propri sensori come pubblici e quindi dare accesso alle
misure dei propri sensori anche a tutti gli altri utenti
- ogni owner, se lo desidera, può essere notificato in caso di down (nessuna misura
ricevuta entro un intervallo di tempo configurato dall’utente) dei propri sensori
attraverso notifiche interne o anche email
- ogni owner, se lo desidera, può aggiornare il firmware di un suo sensore nuovo file
all’interno dell’applicazione
- gestione di sottoscrizione ai sensori con notifica (ogni volta che una nuova misura del
sensore viene caricata l’utente sottoscritto e’ notificato)