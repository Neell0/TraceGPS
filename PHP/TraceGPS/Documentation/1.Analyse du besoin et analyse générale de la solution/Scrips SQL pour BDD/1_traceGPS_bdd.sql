--
-- MySQL : cr�ation de la base tracegps et de son login associ�
--
-- Notes:
-- (1) Le nom de base, le login et mot de passe doivent �tre identiques aux param�tres 
--     precis�s dans le fichier parametres.localhost.php :
--           $db_database = "tracegps";
--           $db_login = "tracegps";
--           $db_password = "spgecart";

-- cr�ation de la base de donn�es
DROP DATABASE IF EXISTS tracegps;
CREATE DATABASE IF NOT EXISTS tracegps
  CHARACTER SET utf8 COLLATE utf8_general_ci;

-- cr�ation d'un login tracegps ayant tous les droits sur la base tracegps et
-- affectation � ce login de tous les droits sur la base de donne�s tracegps

CREATE USER tracegps@'localhost' IDENTIFIED BY 'spgecart';
GRANT ALL ON tracegps.* TO tracegps@'localhost' ;
