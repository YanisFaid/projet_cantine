<?php

include('connexion.php');
// RECUP DE LA SESSION DE LA PAGE INDEX
session_start();
// DECLARATION DE VARIABLES
$ident= $_SESSION['id'];
$classe=$_SESSION['classe'];

    // REQUETE POUR RECUPERER LE USER CONNECTER DEPUIS LA PAGE INDEX
    $requete= "SELECT nom FROM $classe WHERE identifiant =\"$ident\"";
    $resultat=$bdd->query($requete);
    $donne = $resultat->fetch(PDO::FETCH_OBJ);
    $nom=$donne->nom;

    // REQUETE POUR RECUPERER TOUTES LES RESERVATIONS EN FONCTION DE L'ID
    $recupUser = $bdd->prepare(
        "SELECT identifiant, date_resa, matricule
            FROM cantine
            WHERE identifiant= :identifiant AND date_resa > NOW() AND date_suppr=\"0000-00-00\"");
    $recupUser->bindParam(':identifiant', $ident, PDO::PARAM_STR);
    $recupUser->execute();

    // ENVOIE DES DONNEES SELECTIONEE DANS LE FORM VERS LA BDD
    if (isset($_POST['date_resa'])) {

        $identifiant=htmlspecialchars($ident);
        $date_resa=$_POST['date_resa'];
        $requete="INSERT INTO cantine (identifiant, date_resa) VALUES (?, ?)";
        $recupUser = $bdd->prepare($requete);
        $recupUser->execute(["$identifiant", "$date_resa"]);
        header('Location:resa.php');
    };


?>



<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Réservation client</title>
    <link rel="stylesheet" href="index.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>

    <main>

        <header class="head">
            <h1>R&eacute;servation cantine - Bussy-saint-Georges</h1>
        </header>
        
        <section class="banner">
            
            <h2>R&eacute;serv&eacute;e votre plat</h2>
            <div class="containers">

                <div class="card-container">
                    <div class="card-img"></div>
                    <!-- FORMULAIRE -->
                    <div class="card-content">
                        <h3>R&eacute;servation</h3>
                        <form action="resa.php" method="POST">
    
                            <div class="form-row">
                                <input type="text" value="<?php echo($nom);?>" disabled>
                                <input type="text" name="ident" value="<?php echo($ident);?>" disabled>
                            </div>
    
                            <div class="date">
                                <input type="date" name="date_resa" min="<?php echo date("Y-m-d");?>">
                            </div>
    
                            <div class="form-row">
                                <input type="submit" value="Reserver">
                            </div>
                            <button type="text" class="mail" name="mail"><a href="mail.php">changer votre mail</a></button>
                        </form>
                    </div>
                    <!-- FORMULAIRE -->
                    
                </div>

                    <!-- TABLEAU DE RESERVATION + PHP -->
                <div class="container">
                    <div class="mesresa">
                        <h3>Mes r&eacute;servations</h3>
                        <div class="date_resa">
                        <?php
                        // DELCARATION DE LA DATE EN FRANCAIS
                        setlocale(LC_ALL, 'fr_FR.UTF-8');
                            while ($donnee = $recupUser->fetch(PDO::FETCH_OBJ)) {

                                $date = new DateTime($donnee->date_resa);

                                $datelimite=" ";

                                $dateFrom = new DateTime($donnee->date_resa);
                                $dateNow = new DateTime();
                                $interval = $dateNow->diff($dateFrom);
                                $interval->format("%d");
                                // MASQUER L'ICON POUBELLE POUR TOUTES DATE INFERIEUR A 3 JOURS
                                if($interval->format("%d")<4){
                                    $datelimite='masque';
                                }
         
                                echo'<p><button class="boutton '.$datelimite.' " type="button" name="delete"><a href="supp.php?id='.$donnee->matricule.'">
                                <ion-icon name="trash-outline" value="<?php echo($date_resa);?>"></ion-icon></a></button>
                            '.$date->format('d-m-Y'). '</p>';
                        };

                        ?>                            
                          </div>
    
                    </div>
                  </div>
    
                    <!-- TABLEAU DE RESERVATION + PHP -->
                       
            </div>


            <img src="images/mini-logo-bussy.png" alt="" width="100px" height="100px">


        </section>

    </main>

    <!-- icon ionicons -->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>


