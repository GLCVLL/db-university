1 -- Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia

SELECT s.id, s.name, s.surname
FROM students AS s
JOIN degrees AS d ON s.degree_id = d.id
WHERE d.name = 'Corso di Laurea in Economia';

2 -- Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze

SELECT dep.name AS nome_dipartimento
FROM degrees AS deg
JOIN departments AS dep ON deg.department_id = dep.id
WHERE dep.name = 'Dipartimento di Neuroscienze';

3 --Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)