<?php
setlocale(LC_TIME, 'fr_FR.uft8', 'fra');
date_default_timezone_set("Europe/Paris");

include('connexion.php');
$id=(int)$_GET['id'];
$today=date("Y-m-d");

// SUPPRESSION DE LA DATE
$requete= "UPDATE cantine SET date_suppr=\"$today\" WHERE matricule=$id";
$recupUser = $bdd->prepare($requete);
echo $requete;
$recupUser->execute();

header('Location: resa.php');

?>