<?php

session_start(); 

require_once 'connexion.php';

$id=$_GET['id'];


 $sqlState = $pdo->prepare('SELECT * FROM sold WHERE id=?');
 $sqlState->execute([$id]);
 $sold = $sqlState->fetch( PDO::FETCH_ASSOC);




?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
    <link      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet">
       <style>


    </style>
    <title >produit sold|  <?php    echo $sold['libelle']?>   </title>
    
    
</head>
<body>
<?php include 'nav.php' ?>
<br>


<br><br>
<div class="container" >

<div class="row">

<div class="col-md-6">
    <img  class="img img-fluid w-50" src="upload/<?php echo $sold['image']?>">
</div>
<div class="col-md-6">
    <h1><?php echo $sold['libelle']  ?></h1>

    <h2>
    <span > <?php echo $sold['prix']  ?>MAD</span>


</h2>

   <?php
   if(!empty($sold['discount'])){
    ?>

<p>
<span class="badge text-bg-success"> -<?php echo $sold['discount']  ?></span>
   </p>

    <?php
   }

   ?>



<p>

<?php echo $sold['description']  ?>
</p>
<hr>
<?php 
$idProduit = $sold['id'];
include'counter.php' ?>

<hr>



<a class="btn btn-primary " href="#"> ajouter au panier</a>

</div>


</div>
















</div>
<script
  src="https://code.jquery.com/jquery-3.6.3.js"
  integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
  crossorigin="anonymous"></script>
<script src="qty.js"></script>
</body>

</html>