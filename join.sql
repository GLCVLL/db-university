1 -- Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia

SELECT s.id, s.name, s.surname
FROM students s
JOIN degrees d ON s.degree_id = d.id
WHERE d.name = 'Corso di Laurea in Economia';

2 -- Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze