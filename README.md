# DE-Mini--Assignment-Introduction-to-Databases(SQLite + DBeaver)

This project uses the University Rankings dataset to demonstrate CRUD operations (Create, Read, Update, Delete) and simple SQL analysis.  
All work was done in DBeaver, then saved and pushed to GitHub.

## What I Did — and Why

| Step | Action | Purpose | Result |
|------|---------|----------|---------|
| 1️⃣ | **Viewed sample data** | Understand dataset structure and confirm column names. | Key columns verified. |
| 2️⃣ | **Inserted Duke Tech (2014)** | Add missing record for completeness. | 1 row added. |
| 3️⃣ | **Counted Japan (2013)** | Answer policy question on representation. | 6 universities found. |
| 4️⃣ | **Updated Oxford (2014)** | Correct miscalculated score. | Score ↑ +1.2 → 98.71. |
| 5️⃣ | **Deleted 2015 <45** | Remove invalid low-score entries. | 556 rows removed, 0 remain. |

## Data Quality Impact
- **Completeness:** Duke Tech added.  
- **Accuracy:** Oxford score corrected.  
- **Validity:** 2015 cleaned as per rule.

## Summary Stats (After Edits)
| Year | Universities | Avg Score | Min | Max |
|------|---------------|-----------|-----|-----|
| 2012 | 100 | 54.94 | 43.36 | 100 |
| 2013 | 100 | 55.27 | 44.26 | 100 |
| 2014 | 1001 | 47.29 | 44.18 | 100 |
| 2015 | 444 | 49.97 | 45.00 | 100 |

DBeaver was used for execution, and all SQL commands are saved in `Script-1.sql`.