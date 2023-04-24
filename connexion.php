<?php
define("HOST", "localhost");
define("LOGIN", "root");
define("PWD", "");
define("DBNAME","projet_cantine");
define("SALT", "#/ùzz");

$bdd = new PDO('mysql:host='.HOST.';dbname='.DBNAME.';
charset=utf8', LOGIN, PWD);
