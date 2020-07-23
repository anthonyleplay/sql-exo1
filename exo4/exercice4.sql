
-- Il faudra pouvoir afficher toutes les notes des élèves 
-- (nom et prénom de l'élève, la note et la matière)
SELECT `studiant`.`firstname_studiant`,`studiant`.`lastname_studiant`,`note`.`value_note`,`subject`.`name_subject`
FROM `note`

INNER JOIN `studiant` 
ON `note`.`id_studiant` = `studiant`.`id_studiant`

INNER JOIN `subject` 
ON `note`.`id_subject` = `subject`.`id_subject`



-- Il faudra pouvoir afficher la moyenne générale de chaque élève 
-- (nom et prénom de l'élève, la classe de l'élève, le nom du professeur principal, la moyenne)
SELECT `studiant`.`firstname_studiant`,`studiant`.`lastname_studiant`,`classroom`.`name_classroom`,`teacher`.`lastname_teacher`,AVG(`note`.`value_note`)
FROM `studiant`

INNER JOIN `note` 
ON `studiant`.`id_studiant` = `note`.`id_studiant`

INNER JOIN `teacher` 
ON `studiant`.`id_teacher` = `teacher`.`id_teacher`

INNER JOIN `classroom` 
ON `studiant`.`id_classroom` = `classroom`.`id_classroom`

GROUP BY `studiant`.`firstname_studiant`




-- Il faudra pouvoir afficher tous les élèves d'un professeur 
-- (nom et prénom du professeur, la classe du professeur, nom et prénom de l'élève)
SELECT `teacher`.`firstname_teacher`,`teacher`.`lastname_teacher`,`classroom`.`name_classroom`,`studiant`.`firstname_studiant`,`studiant`.`lastname_studiant`
FROM `teacher`

INNER JOIN `studiant` 
ON `teacher`.`id_teacher` = `studiant`.`id_teacher`

INNER JOIN `classroom` 
ON `teacher`.`id_classroom` = `classroom`.`id_classroom`