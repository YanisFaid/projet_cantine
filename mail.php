<?php
include('connexion.php');
session_start();
$ident= $_SESSION['id'];
$classe=$_SESSION['classe'];

// SELECTION DU NOM ET MAIL DANS LA BDD
$requete= "SELECT nom, mail FROM $classe WHERE identifiant =\"$ident\"";
$resultat=$bdd->query($requete);
$donne = $resultat->fetch(PDO::FETCH_OBJ);
$nom=$donne->nom;
$mailactu=$donne->mail;

// UPDATE DU MAIL VERS LA BDD
if (isset($_POST['mailnvx'])) {
    $identifiant=htmlspecialchars($ident);
    $mail=$_POST['mailnvx'];
    $requete="UPDATE $classe SET mail=\"$mail\" WHERE identifiant =\"$ident\"";
    $recupUser = $bdd->prepare($requete);
    $recupUser->execute();
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
    <link rel="stylesheet" href="mail.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>

    <main>
        <section class="banner">
            
            <h2>Changer votre email</h2>
            <div class="containers">

                <div class="card-container">
    
                    <div class="card-content">
                        <h3>Mail</h3>
                        <form action="mail.php" method="POST">
    
                            <div class="form-row">
                                <input type="text" value="<?php echo($nom);?>" disabled>
                                <input type="text" name="ident" value="<?php echo($ident);?>" disabled>
                            </div>
    
                            <div class="mailinput">
                            <input type="email" name="mailactu" value="<?php echo($mailactu);?>" disabled>
                            <input type="email" name="mailnvx" class="mailnvx" required placeholder="Nouvel email">

                            </div>
    
                            <div class="form-row">
                                <input type="submit" value="Changement">
                            </div>
                        </form>

                    </div>
    
                </div>

        </section>
        <img src="images/logo-bussy.png" alt="" width="70px" height="70px">

    </main>

    <!-- icon ionicons -->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>
