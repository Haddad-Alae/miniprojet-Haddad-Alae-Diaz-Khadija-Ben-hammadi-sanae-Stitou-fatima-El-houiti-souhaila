<?php
session_start();
?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
    <link      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet">

<style>

html{
   height:100%;
}


.home-bg{
   background: url(images/shop3.webp) no-repeat;
   background-size: cover;
   background-position: center;
   padding:200px;
   margin-left:30px;
   margin-right:30px;
}

.home-bg .home{
   display: flex;
   align-items: center;
   min-height: 60vh;
}

.home-bg .home .content{
   width: 50rem;
}

.home-bg .home .content span{
   color:var(--orange);
   font-size: 2.5rem;
}

.home-bg .home .content h3{
   font-size: 3rem;
   text-transform: uppercase;
   margin-top: 1.5rem;
   color:var(--black);

}

.home-bg .home .content p{
   font-size: 1.6rem;
   padding:1rem 0;
   line-height: 2;
   color:var(--light-color);
}

.home-bg .home .content a{
   display: inline-block;
   width: auto;
}

.home-category .box-container{
   display: grid;
   grid-template-columns: repeat(auto-fit, 27rem);
   gap:1.5rem;
   justify-content: center;
   align-items: flex-start;
}

.home-category .box-container .box{
   padding:0.5rem;
   text-align: center;
   border:var(--border);
   background-color: var(--white);
   box-shadow: var(--box-shadow);
   border-radius: .5rem;
   background-color:beige;
   margin-left:30px;
   margin-right:30px;
}

.home-category .box-container .box img{
   width: 100%;
   margin-bottom: 1rem;
}

.home-category .box-container .box h3{
   text-transform: uppercase;
   color:var(--black);
   padding:1rem 0;
   font-size: 2rem;
}

.home-category .box-container .box p{
   line-height: 2;
   font-size: 1.5rem;
   color:var(--light-color);
   padding:.5rem 0;
}

.home-category{
   padding-bottom: 0;
}





body{

margin: 0;
font-family: sans-serif;

}



h5{
    text-align: center;
    font-size: 30px;
    margin: 0;
    padding-top: 10px;
}
a{
    text-decoration: none;
}

.gallery{


display: block;
flex-wrap: wrap;
width: 100%;
justify-content: center;
align-items: center;
margin: 50px 0;
}

.content{
                 

                 width:22%;
                 margin: 15px;
                 box-sizing: border-box;
                 float: left;
                 text-align: center;
                 border-radius: 20px;
                 cursor: pointer;
                 padding-top: 10px;
                 box-shadow: 0 14px 28px rgba(0,0,0,0.25);
                 transition: .4s;
                 background:white;
                 }



.content:hover{
    box-shadow:0 3px 6px rgba(0, 0, 0, 0.16),0, 3px, 6px rgba(0,0,0, 0.23);
    transform: translate(0px, -8px);}
img{


width: 200px;
height: 250px;
text-align: center;
margin: 0 auto;
display: block;

}
ul{
    list-style:none ;
    display: flex;
    justify-content: center;
    align-items: center;
    padding-top: 0;
}
li{
    padding-top: 5px;

}

.fa{
    font-size: 26px;
    transition: .4s;
    margin: 3px;
}
.checked{
    color: #ff9f43;

}
.fa:hover{
    transform:scale(1.3);
    transition: .6s;
}






footer li{
   list-style:none;
   display:inline-block;
   margin:10px;
}
.footer-icons a{
   background:;
  border-radius:100px;
}

/* our serveces */
.container{
   width: 100%;
   height: 100vh;
   padding: 0 8%;
}
.container h1{
   text-align: center;
   padding-top: 10%;
   margin-bottom: 60px;
   font-weight: 600;
   position: relative;
}
.container h1::after{
   content:'';
   background: #303ef7;
   width: 100px;
   height: 5px;
   position:absolute;
   bottom: -5px;
   left:50%;
   transform: translatex(-50%);
}
.row{
   display: grid;
   grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
   grid-gap: 30px;
}
.service{
   text-align: center;
   padding: 25px 10px;
   border-radius: 5px;
   font-size: 14px;
   cursor: pointer;
   background: transparent;
   transition: transform 0,5s, background 0,5s;

}
.service i{
   font-size: 40px;
   margin-bottom: 10px;
   color: #303ef7;

}
#sold{
   width: 100%;
   height: 300px;
}
.service h2{
   font-weight: 600;
   margin-bottom: 8px;
}
.service:hover{
   background: #303ef7;
   color: #fff;
   transform: scale(1.05);
}
.service:hover{
   background: #303ef7;
   color: #fff;
   transform: scale(1.05);
}
.service:hover i{
   color: #fff;
}





</style>




   
    <title>sold</title>
    

</head>
<body>
<?php include 'nav.php' ?>

<div id="prod"></div>
<h3 style="text-align:center;"  style="color:red;"  class="title"> achetez des produit sold  </h3>
    
<?php 



$user = "root";
$pass = "";
$pdo = new PDO ("mysql:host=localhost;dbname=siteweb", $user, $pass);
$solds = $pdo->query(" SELECT * FROM sold")->fetchAll(PDO ::FETCH_OBJ);

foreach($solds as $solds)
{
 
  $idsold =$solds->id;
  ?>


<div    id="gallery" >
  <div class="content">
  <img src="upload/<?php echo $solds->image ?>" class="card-img-top w-75 mx-auto" style="width:100%; ">
  <div class="card-body">
  <a href="detail_sold.php?id=<?php echo $idsold ?>" >afficher les details</a>
    <h5 class="card-title"><?php echo $solds->libelle ?></h5>
    <p class="card-text" style="color:red;" ><?php echo $solds->prix ?>MAD</p>
    <ul>

   <li><i class="fa fa-star checked"></i></li>
   <li><i class="fa fa-star checked"></i></li>
   <li><i class="fa fa-star checked"></i></li>
   <li><i class="fa fa-star checked"></i></li>
   <li><i class="fa fa-star "></i></li>

    </ul>
      
  </div>
                   <div class="card-footer" style="z-index: 10">

                       <?php include'countersold.php' ?>
                     </div>
        </div>
</div>


<?php

}
?>



<script
  src="https://code.jquery.com/jquery-3.6.3.js"
  integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
  crossorigin="anonymous"></script>
<script src="qty.js"></script>

</body>
</html>