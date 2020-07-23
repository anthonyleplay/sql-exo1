
-- Il faudra pouvoir afficher les lignes du registre 
-- (titre, nom et prénom du client, date d'emprunt et de retour du livre)
SELECT `book_list`.`title_book_list`,`guest`.`firstname_guest`,`guest`.`lastname_guest`,`register`.`Date_start`,`register`.`Date_end`
FROM `register`

INNER JOIN `guest` 
ON `register`.`id_guest` = `guest`.`id`

INNER JOIN `book_list` 
ON `register`.`id_book_list` = `book_list`.`id`



-- Il faudra pouvoir lister tous les livres 
-- (titre, genre, nom et prénom de l'auteur, disponibilité)
SELECT `book_list`.`title_book_list`,`book_type`.`book_type`,`book_list`.`firstname_author_book_list`,`book_list`.`lastname_author_book_list`,`register`.`Date_end`
FROM `book_list`

INNER JOIN `book_type` 
ON `book_list`.`id_book_type` = `book_type`.`id`

LEFT JOIN `register`
ON `register`.`id_book_list` = `book_list`.`id`




-- Il faudra pouvoir afficher le nombre total de livres par genre 
-- (nom du genre, total de livres correspondants)
SELECT `book_type`.`book_type`, COUNT(`book_list`.`id_book_type`)
FROM `book_type`

INNER JOIN `book_list` 
ON `book_list`.`id_book_type` = `book_type`.`id`

GROUP BY `book_type`.`book_type`