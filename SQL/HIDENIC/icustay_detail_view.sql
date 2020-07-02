 SELECT adm.patientid AS subject_id,
    adm.patientvisitid AS hadm_id,
    adm.icuid AS icustay_id,
    pat.sex AS gender,
    adm.deathdate_update AS dod,
    adm.hospadmit AS admittime,
    adm.hospdisch AS dischtime,
    adm.hlos AS los_hospital,
    pat.age,
    pat.race3category AS race,
    pat.hispanic,
    dense_rank() OVER (PARTITION BY adm.patientid ORDER BY adm.hospadmit) AS hospstay_seq,
        CASE
            WHEN dense_rank() OVER (PARTITION BY adm.patientid ORDER BY adm.hospadmit) = 1 THEN true
            ELSE false
        END AS first_hosp_stay,
    adm.icuadmit AS intime,
    adm.icudisch AS outtime,
    adm.iculos AS los_icu,
    dense_rank() OVER (PARTITION BY adm.patientvisitid ORDER BY adm.icuadmit) AS icustay_seq,
        CASE
            WHEN dense_rank() OVER (PARTITION BY adm.patientvisitid ORDER BY adm.icuadmit) = 1 THEN true
            ELSE false
        END AS first_icu_stay
   FROM hidenic_v1.admit_discharge adm
     JOIN hidenic_v1.demographics pat ON adm.patientid = pat.patientid
  ORDER BY adm.patientid, adm.hospadmit, adm.icuadmit;