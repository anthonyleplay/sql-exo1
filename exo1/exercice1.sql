
-- Il faudra pouvoir afficher tous les biens par ordre de prix 
-- (nom du bien, son type, son code postal, son prix)

SELECT `name_house`, `type_house`.`type_houses`, `codePostal_house`, `price_house`
FROM `biens_immobiliers`
INNER JOIN `type_house` 
ON `biens_immobiliers`.`id_type` = `type_house`.`id_type`
ORDER BY `price_house`;



-- Il faudra pouvoir afficher les rendez-vous par ordre chronologique 
-- (date et créneau horaire du rendez-vous, nom du bien, son type, son code postal, son prix, nom et prénom du client)

SELECT `date_rdv`, `time_spot`.`time_spot_start`, `time_spot`.`time_spot_end`,`biens_immobiliers`.`name_house`,`type_house`.`type_houses`,
 `biens_immobiliers`.`codePostal_house`,`biens_immobiliers`.`price_house`,`clients`.`lastname_client`,`clients`.`firstname_client`
FROM `appointment`
INNER JOIN `time_spot` 
ON `appointment`.`id_time_spot` = `time_spot`.`id_time_spot`

INNER JOIN `biens_immobiliers` 
ON `appointment`.`id_house` = `biens_immobiliers`.`id_house`

INNER JOIN `type_house` 
ON `biens_immobiliers`.`id_type` = `type_house`.`id_type`

INNER JOIN `clients` 
ON `appointment`.`id_client` = `clients`.`id_client`

ORDER BY `date_rdv`;



-- Il faudra pouvoir afficher les clients par type de bien qu'ils recherchent 
-- (nom et prénom du client, type de bien, budget)

SELECT `clients`.`lastname_client`,`clients`.`firstname_client`,`type_house`.`type_houses`,`clients`.`pricemax_client`
FROM `clients`

INNER JOIN `type_house` 
ON `clients`.`id_type` = `type_house`.`id_type`

ORDER BY `type_house`.`type_houses`;