# 1）long RNA-Seq dataset

This dataset contains RNA sequencing samples from healthy controls and patients with five cancer types. The data is structured for machine learning applications with predefined train/test splits.

## Column descriptions

| Column Name   | Description                                                     |
| ------------- | --------------------------------------------------------------- |
| **sample_id** | Unique sample identifier (e.g., CRC-2124325)                    |
| **label**     | Sample type: CRC, ESCA, HCC, LUAD, STAD, or NC (normal control) |
| **source**    | Collection source (see Source Key below)                        |
| **sex**       | Donor sex (M = Male, F = Female, U = Unknown)                   |
| **library**   | Library type: reverse or forward stranded                       |
| **dataset**   | Designation for ML: train or test                               |

## Cancer type

| Abbreviation | Full Name                |
| ------------ | ------------------------ |
| CRC          | Colorectal Cancer        |
| ESCA         | Esophageal Carcinoma     |
| HCC          | Hepatocellular Carcinoma |
| LUAD         | Lung Adenocarcinoma      |
| STAD         | Stomach Adenocarcinoma   |
| NC           | Normal Control           |

## Source key

| Code  | Description               |
| ----- | ------------------------- |
| P1/P2 | Peking University cohorts |
| C     | ChongQing samples         |
| S1/S2 | Shanghai cohorts          |
| O     | Other sources             |

## 

# 2）small RNA-Seq

This dataset contains RNA sequencing (RNA-Seq) samples from healthy donors and patients with different cancer types. Below is an explanation of the abbreviations and the structure of the dataset.

## Column descriptions

| Column Name                 | Description                                                           |
| --------------------------- | --------------------------------------------------------------------- |
| **sample id**               | Unique identifier for each sample (e.g., `Sample_1S1`, `Sample_N1`).  |
| **RNA Isolation batch**     | Batch number during RNA extraction.                                   |
| **library preparation day** | Day when the sequencing library was prepared.                         |
| **gel cut size selection**  | Size selection step during library preparation.                       |
| **label**                   | Indicates the sample type (`CRC`, `PC`, `PAAD`, or `HD`).             |
| **sex**                     | Biological sex of the donor (`M` for male, `F` for female).           |
| **id**                      | Public accession ID (e.g., `GSM1825212` from GEO database).           |
| **stage**                   | Cancer stage (I–IV for CRC; empty for HD/PAAD/PC).                    |
| **dataset**                 | Indicates if the sample is for `train` or `test` in machine learning. |

## Cancer type

| Abbreviation | Full Name                 |
| ------------ | ------------------------- |
| CRC          | Colorectal Cancer         |
| PC           | Prostate Cancer           |
| PAAD         | Pancreatic Adenocarcinoma |
| HD           | Healthy Donor             |


