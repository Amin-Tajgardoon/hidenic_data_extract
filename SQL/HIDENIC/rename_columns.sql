ALTER TABLE hidenic_v1.admit_discharge 
RENAME COLUMN "ICUadmit" TO icuadmit;

ALTER TABLE hidenic_v1.admit_discharge
RENAME COLUMN "ICUdisch" TO icudisch;

ALTER TABLE hidenic_v1.admit_discharge 
RENAME COLUMN "HospAdmit" TO HOSPAdmit;

ALTER TABLE hidenic_v1.admit_discharge
RENAME COLUMN "HospDisch" TO hospdisch;

ALTER TABLE hidenic_v1.admit_discharge
RENAME COLUMN "Deathdate_update" TO Deathdate_update;

ALTER TABLE hidenic_v1.admit_discharge
RENAME COLUMN "ICU_Category" TO ICU_Category;

ALTER TABLE hidenic_v1.demographics
RENAME COLUMN "Sex" TO Sex;

ALTER TABLE hidenic_v1.demographics
RENAME COLUMN "Age" TO Age;

ALTER TABLE hidenic_v1.demographics
RENAME COLUMN "Race3Category" TO Race3Category;

ALTER TABLE hidenic_v1.demographics
RENAME COLUMN "Hispanic" TO Hispanic;