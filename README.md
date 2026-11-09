# Experiment 1: Creation of a Data Warehouse

## Data Mining Lab

### Healthcare – Patient Visit Analytics

## 1. Aim

To create a Data Warehouse using a multidimensional data model (Star Schema), perform ETL operations using Pentaho Data Integration (PDI), and execute analytical queries on healthcare data.

## 2. Technologies Used

- **Database:** PostgreSQL
- **Database Management Tool:** pgAdmin 4
- **ETL Tool:** Pentaho Data Integration (PDI) 9.4
- **Programming Language:** SQL
- **Data Format:** CSV

## 3. Project Overview

This experiment demonstrates the creation of a Healthcare Data Warehouse for analyzing patient visits, doctor information, hospital details, and treatment costs.

The data is stored in a Star Schema consisting of dimension tables and a fact table.

## 4. Database Schema

The database contains the following tables:

| Table Name | Description |
|---|---|
| `dim_patient` | Stores patient information |
| `dim_doctor` | Stores doctor information |
| `dim_hospital` | Stores hospital information |
| `dim_date` | Stores date-related information |
| `fact_patient_visit` | Stores patient visit transactions |

### Star Schema

The fact table connects the dimension tables through foreign keys.

- Patient Dimension
