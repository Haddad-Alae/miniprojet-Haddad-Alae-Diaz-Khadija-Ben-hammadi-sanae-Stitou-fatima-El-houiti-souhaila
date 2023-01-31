<?php 

session_start();
?>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="author" content="">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Checkout</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.min.css' />
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css' />
</head>
<body>
<?php include 'nav.php' ?>

  <div class="container">
    <div class="row justify-content-center">
      <div class="col-lg-6 px-4 pb-4" id="order">
        <h4 class="text-center text-info p-2">Completez votre commande!</h4>
        <div class="jumbotron p-3 mb-2 text-center">
        <h6 class="lead"><b>Produit(s) : </b></h6>
          <h6 class="lead"><b>frais de Livraison : </b>offerts</h6>
          <h5><b>montant total a payer : </b></h5>
        </div>
        <form action=" valida.php" method="post" id="placeOrder">
          <input type="hidden" name="products" value="<?= $allItems; ?>">
          <input type="hidden" name="grand_total" value="<?= $grand_total; ?>">
          <div class="form-group">
            <input type="text" name="name" class="form-control" placeholder="Entrer Nom" required>
          </div>
          <div class="form-group">
            <input type="email" name="email" class="form-control" placeholder="Entrer E-Mail" required>
          </div>
          <div class="form-group">
            <input type="tel" name="phone" class="form-control" placeholder="Entrer Phone" required>
          </div>
          <div class="form-group">
            <textarea name="address" class="form-control" rows="3" cols="10" placeholder="Entrer  Address De Livraison..."></textarea>
          </div>
          <h6 class="text-center lead">sélectioner le mode de paiement</h6>
          <div class="form-group">
            <select name="pmode" class="form-control">
              <option value="" selected disabled>-sélectioner le mode de paiement-</option>
              <option value="cod">Cash On Delivery</option>
              <option value="netbanking">Net Banking</option>
              <option value="cards">Debit/Credit Card</option>
            </select>
          </div>
          <div class="form-group">
            <input type="submit" name="submit" value="Passer la Commande" class="btn btn-danger btn-block">
          </div>
        </form>
        </div>
    </div>
  </div>

  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js'></script>

  
  </script>
  
</body>

</html>