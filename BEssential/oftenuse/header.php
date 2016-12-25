<?php

include("BEssential/oftenuse/connection.php");

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Hedi Sim - Simple Ecommerce</title>

    <!-- Bootstrap -->
    <link href="BEssential/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script src="BEssential/oftenuse/commonuse.js"></script>


    <!-- header -->

    <nav class="navbar navbar-default" style="border-radius:0px;  margin-bottom:75px;">
      <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="home.php">Home</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="border-radius:0px; margin-left: auto; margin-right: auto;">
          <ul class="nav navbar-nav">
            <li><a href="items.php">Electronics<span class="sr-only">(current)</span></a></li>
            <li><a href="clothes.php">Clothes</a></li>
          </ul>

          <ul class="nav navbar-nav navbar-right">
           
           <?php

            if( (!isset($_SESSION["login_user"])) && (empty($_SESSION["login_user"])) ){
                $_SESSION["login_user"] = null;
              ?>
              <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Login <span id="magics" data-fullname ="nothing"></span>
              </a>
              <ul class="dropdown-menu">
                <li><a href="register.php">Register</a></li>
                <li><a href="loggin.php">Login</a></li>
              </ul>

            </li>

            <a href="cart.php">
            <span class="glyphicon glyphicon-shopping-cart" style="font-size: 25px;">
            </span>
            </a>
            <a href="#" class="read-the-book">
            <span class="a-trap" id="mycroft"></span>
            </a>

            <?php }else{
            ?>
            <li class="dropdown">
              <a href="#" id="logged-in" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" 
              aria-expanded="false">
              <span id="magics" data-fullname ="<?php 
              if( (!isset($_SESSION["login_user"])) && (empty($_SESSION["login_user"])) ){
                echo "nothing";
              }else{
                echo $_SESSION['login_user'];
              } ?>" ><?php echo $_SESSION['login_user']; ?></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Setting</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="logout.php">Log out</a></li>
              </ul>
            </li>
            <a href="cart.php">
            <span class="glyphicon glyphicon-shopping-cart" style="font-size: 25px;">
            </span>
            </a>
            <a href="#" class="read-the-book">
            <span class="a-trap" id="mycroft"></span>
            </a>
          <?php
            }
           ?>

            </ul>
            

        <form class="navbar-form navbar-right" method="POST">
          <div class="input-group">
              <input type="text" name="search-portfolio" class="form-control" placeholder="Search Portfolio">
              <span class="input-group-btn">
                <button class="btn btn-default" type="submit" name="searchbutton" >Search</button>
              </span>
          </div>
          
              
              
        </form>

        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>

    <!-- end header -->


  </head>


<?php
  if(isset($_POST['searchbutton'])){

    $_SESSION["search-portfolio"] = $_POST['search-portfolio'];


   /* echo $_SESSION["search-portfolio"];*/
    header('Location: search.php');
    exit;
  }
?>

<script>

  loadfromanywhereLocalStorage();

</script>