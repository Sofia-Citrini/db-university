--1. Contare quanti iscritti ci sono stati ogni anno
SELECT YEAR(`enrolment_date`) AS `anno`,
	   COUNT(`id`) AS `numero_iscritti`
FROM `students`
GROUP BY YEAR(`enrolment_date`);

--2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(`office_address`) AS `conteggio_professori`,
	   `office_address` AS `indirizzo`
FROM `teachers`
GROUP BY `office_address`;

--3. Calcolare la media dei voti di ogni appello d'esame
SELECT `exam_id`, 
        AVG(`vote`) as `media_voto`
FROM `exam_student`
GROUP BY `exam_id`;

--4. Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT `department_id` AS `dipartimento`,
		COUNT(`id`) AS `corsi_laurea`
FROM `degrees`
GROUP BY `department_id`;