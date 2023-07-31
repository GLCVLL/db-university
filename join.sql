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

3 -- Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)

SELECT c.name
FROM courses AS c
JOIN course_teacher AS ct ON c.id = ct.course_id
JOIN teachers AS t ON ct.teacher_id = t.id
WHERE t.id = 44;

4 -- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome

SELECT s.name AS nome_studente, s.surname AS cognome_studente, d.name AS corso_di_laurea, dp.name AS dipartimento
FROM students AS s
JOIN degrees AS d ON s.degree_id = d.id
JOIN departments AS dp ON d.department_id = dp.id
ORDER BY s.surname, s.name;

5 -- Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti

SELECT d.name AS corso_di_laurea, c.name AS corso, t.name AS insegnante
FROM degrees AS d
JOIN courses AS c ON d.id = c.degree_id
JOIN course_teacher AS ct ON c.id = ct.course_id
JOIN teachers AS t ON ct.teacher_id = t.id;

6 -- Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica 
SELECT DISTINCT t.name, t.surname, t.id, t.email
FROM teachers AS t
JOIN course_teacher AS ct ON t.id = ct.teacher_id
JOIN courses AS c ON ct.course_id = c.id
JOIN degrees AS d ON c.degree_id = d.id
JOIN departments AS dp ON d.department_id = dp.id
WHERE dp.name = 'Dipartimento di Matematica';
