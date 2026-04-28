<img width="2291" height="1246" alt="Screenshot 2026-04-28 170957" src="https://github.com/user-attachments/assets/3ae1f37b-d4ef-4a14-a7ed-69d2b13cd1a2" />
<img width="693" height="778" alt="FOODWASTEERDIAG" src="https://github.com/user-attachments/assets/fdc1050e-744d-4720-af0a-9a82c7b34c9c" />

# ProjectWorkFoodWaste

# N.O.W.A.S.T.E. 🍎
### Network for Optimization of Waste and Surplus Tracking Ecosystem

**N.O.W.A.S.T.E.** è un sistema integrato di Data Engineering e Business Intelligence progettato per abbattere lo spreco alimentare. La piattaforma funge da ponte tra le attività commerciali con eccedenze alimentari in scadenza e realtà del terzo settore o privati cittadini.

🚀 Panoramica del Progetto

L'applicazione gestisce il flusso di prodotti alimentari con scadenza imminente (**$\le 3$ giorni**), connettendo due macro-categorie di utenti sulla base della loro posizione geografica (Roma):
*   **VENDITORI:** Ingrossi alimentari, supermercati, minimarket.
*   **ACQUIRENTI:** Mense, banchi alimentari, ONLUS e clienti privati.

🛠️ Tech Stack & Architettura

1. Database & Business Logic (MySQL)
 
Il cuore del progetto risiede in un database relazionale robusto con vincoli di integrità e automazioni avanzate:
   **Modellazione E-R:** Struttura ottimizzata per la gestione di utenti, prodotti, annunci e ordini.
   **Stored Procedures:** Inserimento utenti con validazione automatica, gestione prodotti e cancellazione ordini.
   **Funzioni & View:** Calcolo dinamico del totale ordine (al netto di sconti e agevolazioni) e viste dedicate per il catalogo annunci in tempo reale.
   **Regole di Business:** Validazione di P.IVA/CF, controllo maggiore età e gestione automatica delle agevolazioni per enti benefici.

3. Data Processing & EDA (Python)
 
Utilizzando **Google Colab**, abbiamo interfacciato Python e SQL per la pulizia e l'analisi dei dati:
   **Librerie:** `pandas`, `numpy`, `matplotlib`, `seaborn`.
   **EDA (Exploratory Data Analysis):** Analisi della distribuzione demografica degli utenti e studio della varianza dei prezzi per categoria tramite istogrammi e boxplot.

5. Business Intelligence (Power BI & Tableau)
 
Per la fase finale di monitoraggio e reporting, abbiamo sviluppato dashboard interattive:
   **Visualizzazione Avanzata:** Creazione di report dinamici per analizzare le performance di vendita e l'impatto dello spreco evitato.
   **Filtri Dinamici & Campi Calcolati:** Implementazione di slicer temporali, filtri per categoria merceologica e misure personalizzate (DAX/LOD) per calcolare KPI specifici e trend di risparmio.

📂 Struttura del Repository
   `DatabaseFoodWasteSQL.sql`: Script per la creazione del database e delle procedure.
   `Progetto_APP_NOWASTE.ipynb`: Notebook con l'integrazione Python-SQL e l'analisi statistica.
   `modello_project_finale.pbix`: Report interattivo Power BI.
   `Spreco_alimentare_tableau.twb`: Dashboard Tableau per la visualizzazione dei dati.

💡 Note Tecniche
Il database applica una logica di sconto progressivo e restrizioni rigorose: 
---> "L'utente che si registra come Privato non gode di alcuna agevolazione. Solo le attività benefiche hanno accesso a listini agevolati.
