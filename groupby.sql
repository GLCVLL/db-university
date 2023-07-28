1 --Contare quanti iscritti ci sono stati ogni anno

SELECT YEAR(enrolment_date) AS AnnoIscrizione, COUNT(*) AS NumeroIscritti 
FROM `students`
GROUP BY YEAR(enrolment_date);

2 --Contare gli insegnanti che hanno l'ufficio nello stesso edificio

SELECT office_address, COUNT(*) AS NumeroInsegnanti 
FROM `teachers`
GROUP BY office_address
HAVING COUNT(*) > 1;

3 -- Calcolare la media dei voti di ogni appello d'esame

SELECT exam_id, AVG(vote) AS MediaVoti 
FROM `exam_student`
WHERE `vote` >= 18
GROUP BY exam_id;

4 --Contare quanti corsi di laurea ci sono per ogni dipartimento

