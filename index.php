<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="log.css">
</head>
<body>

    <!-- FORMULAIRE DE CONNEXION -->
    <section class="banner">

        <div class="card-content">
            <h3>Connexion</h3>
            <form action="" method="POST">
                <div class="form-row">
                    <input type="text" placeholder="Identifiant" name="id" maxlength="20" required>
                    <input type="password" placeholder="Mot de passe" name="password" maxlength="20" required>
                    <select name="classe" id="">
                        <option value="-1">Sélectioner votre classe</option>
                        <option value="6eme">6ème</option>
                        <option value="5eme">5ème</option>
                        <option value="4eme">4ème</option>
                        <option value="3eme">3ème</option>
                    </select>
                </div>

                <div class="form-row">
                    <input type="submit" value="Connexion" name="submit">
                </div>
                <!-- CASE TEXT PIEGE -->
                <input type="text" class="piege" name="error">
                <!-- CASE TEXT PIEGE -->
                <img src="images/logo-bussy.png" alt="" width="80px" height="80px">
            </form>

        </div>

    </section>
        <!-- FORMULAIRE DE CONNEXION -->
</body>
</html>



<?php
include('connexion.php');
if(isset($_POST['submit']))
{   
    // RECUPERATION DES VARIABLES + CONTROLER LA QUALITER DES VARIABLES DEPUIS LE FORMULAIRE
    if(!empty($_POST['id']) AND !empty($_POST['password'])){
        $erreur=$_GET['error']??NULL;
        if ($erreur=='error'){echo 'haha';}
        $identifiant = htmlspecialchars($_POST['id']);
        $password = sha1($_POST['password'].SALT);
        $classe=$_POST['classe'];
        sleep(1);

        // RECUPERATION DES UTILISATEURS DE LA BDD
        $recupUser = $bdd->prepare(
            "SELECT identifiant, password, nom
             FROM $classe
             WHERE identifiant= :identifiant AND password=:password");
        $recupUser->bindParam(':identifiant', $identifiant, PDO::PARAM_STR, 20);
        $recupUser->bindParam(':password', $password, PDO::PARAM_STR,41);
        $recupUser->execute();
        
        // SI LE USER EST TROUVER ALORS DEMARAGE DE SESSION
        if($recupUser->rowCount() == 1){
            session_start();
            $_SESSION['id'] = $identifiant;
            $_SESSION['classe'] = $classe;

            header('Location: resa.php');
        }else{
            echo "Votre mot de passe ou pseudo est incorrect";
        }
    }
    else{
        echo "Veuillez completer tout les champs";
    }

}

?>