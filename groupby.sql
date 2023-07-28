1 --Contare quanti iscritti ci sono stati ogni anno

SELECT YEAR(enrolment_date) AS AnnoIscrizione, COUNT(*) AS NumeroIscritti 
FROM `students`
GROUP BY YEAR(enrolment_date);