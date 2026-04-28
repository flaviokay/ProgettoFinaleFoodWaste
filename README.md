# ProjectWorkFoodWaste

<img width="1917" height="1075" alt="Screenshot 2026-04-28 172744" src="https://github.com/user-attachments/assets/1845e172-6686-4e94-9122-b7426f601763" />

# N.O.W.A.S.T.E. 🍎
### Network for Optimization of Waste and Surplus Tracking Ecosystem

**N.O.W.A.S.T.E.** è un sistema integrato di Data Engineering e Business Intelligence progettato per abbattere lo spreco alimentare. La piattaforma funge da ponte tra le attività commerciali con eccedenze alimentari in scadenza e realtà del terzo settore o privati cittadini.

🚀 Panoramica del Progetto

L'applicazione gestisce il flusso di prodotti alimentari con scadenza imminente (**$\le 3$ giorni**), connettendo due macro-categorie di utenti sulla base della loro posizione geografica (Roma):
*   **VENDITORI:** Ingrossi alimentari, supermercati, minimarket.
*   **ACQUIRENTI:** Mense, banchi alimentari, ONLUS e clienti privati.


🔍 1. Data Sourcing & Preparation

Prima della modellazione, abbiamo affrontato una fase critica di reperimento e raffinamento dei dati:

  **Data Retrieval**: Ricerca e selezione di dataset pertinenti tramite Kaggle, Google Dataset Search e portali di Open Data istituzionali per ottenere dati realistici su anagrafiche, listini prezzi e categorie merceologiche.
  **Data Cleaning** (Excel & Power Query):
  **Rimozione** di duplicati e gestione dei valori nulli/mancanti.
  **Normalizzazione** dei formati (date, valute, stringhe).
  **Standardizzazione** delle categorie alimentari per garantire la coerenza tra il database SQL e le dashboard di BI.
  **Data Enrichment**: Integrazione di diverse fonti per simulare un ecosistema di dati eterogeneo e verosimile.


🛠️ Tech Stack & Architettura

2. Database & Business Logic (MySQL)
 
Il cuore del progetto risiede in un database relazionale robusto con vincoli di integrità e automazioni avanzate:
   **Modellazione E-R:** Struttura ottimizzata per la gestione di utenti, prodotti, annunci e ordini.
   **Stored Procedures:** Inserimento utenti con validazione automatica, gestione prodotti e cancellazione ordini.
   **Funzioni & View:** Calcolo dinamico del totale ordine (al netto di sconti e agevolazioni) e viste dedicate per il catalogo annunci in tempo reale.
   **Regole di Business:** Validazione di P.IVA/CF, controllo maggiore età e gestione automatica delle agevolazioni per enti benefici.

3. Data Processing & EDA (Python)
 
Utilizzando **Google Colab**, abbiamo interfacciato Python e SQL per la pulizia e l'analisi dei dati:
   **Librerie:** `pandas`, `numpy`, `matplotlib`, `seaborn`,`mysql-connector-python`.
   **EDA (Exploratory Data Analysis):** Analisi della distribuzione demografica degli utenti e studio della varianza dei prezzi per categoria tramite istogrammi e boxplot.
   **Connettività**: Implementazione di un'interfaccia di comunicazione tra MySQL e Python utilizzando la libreria mysql-connector-python. Questo ha permesso l'esecuzione di query dinamiche, il popolamento delle tabelle e il recupero dei dati direttamente all'interno dell'ambiente di analisi.
   **Automazione**: Sviluppo di script per automatizzare l'inserimento di nuovi prodotti e la gestione degli ordini, superando i limiti della gestione manuale del database.

4. Business Intelligence (Power BI & Tableau)
 
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
