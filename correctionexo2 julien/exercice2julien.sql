
-- Il faudra pouvoir afficher les lignes du registre 
-- (titre, nom et prénom du client, date d'emprunt et de retour du livre)
SELECT `books`.`book_Name`,CONCAT(`clients`.`client_fName`," ",`clients`.`client_lName`)AS `Client`,`register`.`register_startDate`,`register`.`register_endDate`
FROM `register`

INNER JOIN `clients` 
ON `register`.`id_Clients`=`clients`.`id`

INNER JOIN `books` 
ON `register`.`id_Books`= `books`.`id`



-- Il faudra pouvoir lister tous les livres 
-- (titre, genre, nom et prénom de l'auteur, disponibilité)
SELECT `books`.`book_Name`,`books_styles`.`book_style`, `books`.`book_Author_fName`, `books`.`book_Author_lName`,
CASE
WHEN `New_Tab`.`New_register_Returned` = 0 THEN 'Non Dispo'
WHEN `New_Tab`.`New_register_Returned` IS NULL THEN 'Dispo'
END AS `Disponibilité`
FROM `books`

LEFT JOIN `books_styles`
ON `books`.`id_Books_Styles`=`books_styles`.`id`

LEFT JOIN ( SELECT `register`.`id_Books` AS `New_id_Book`, `register`.`register_Returned` AS `New_register_Returned`
FROM `register`
WHERE `register_Returned` = 0 ) AS `New_Tab`
ON `New_Tab`.`New_id_Book` = `books`.`id`




-- Il faudra pouvoir afficher le nombre total de livres par genre 
-- (nom du genre, total de livres correspondants)
SELECT `book_style` AS `Genre`,COUNT(`books`.`id`) AS `Nombre de livres`
FROM `books`
LEFT JOIN `books_styles`
ON `books`.`id_Books_Styles` = `books_styles`.`id`
GROUP BY `book_style`