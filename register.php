<?php

include("BEssential/oftenuse/header.php");
include("BEssential/oftenuse/functions.php");

if((!isset($_SESSION["login_user"])) && (empty($_SESSION["login_user"])) ){/*Fixing here*/

    $_SESSION["login_user"] = null;

}else{
    
    header("Location: home.php");

}

$errorError = array(    "USER" => "<small id='email-error' class='form-text text-muted'>We'll never share your email with anyone else.</small>",
                        "PASS" => "<small id='password-error' class='form-text text-muted'>So is your password, of course!</small>",
                        "REPASS" => "<small id='re-password-error' class='form-text text-muted'>So is this password, of course!</small>",
                        "FULLNAME" => "<small id='fullname-error' class='form-text text-muted'>Yep, not gonna share your name either!</small>",
                        "ADDRESS" => "<small id='address-error' class='form-text text-muted'>We're bloody discreet!</small>");

if(isset($_POST['register-button'])){ 

    /*php validation begins*/
    /*the functions are in BEssential/oftenuse/functions.php*/

    if( (empty($_POST['password'])) && (empty($_POST['fullname'])) && (empty($_POST['address'])) && (empty($_POST['user_email'])) && (empty($_POST['repassword'])) ){

        $errorError['USER'] = "<small id='email-error' class='form-text text-muted' style='color:red'>EMPTY HERE!!</small>";
        $errorError['PASS'] = "<small id='password-error' class='form-text text-muted' style='color:red'>HERE AS WELL!!</small>";
        $errorError['REPASS'] = "<small id='re-password-error' class='form-text text-muted' style='color:red'>HERE AS WELL!!</small>";
        $errorError['FULLNAME'] = "<small id='fullname-error' class='form-text text-muted' style='color:red'>HERE AS WELL!!</small>";
        $errorError['ADDRESS'] = "<small id='address-error' class='form-text text-muted' style='color:red'>HERE AS WELL!!</small>";

        if( (!isset($_POST['password'])) && (!isset($_POST['fullname'])) && (!isset($_POST['address'])) && (!isset($_POST['user_email'])) && (!isset($_POST['repassword'])) ){

            $errorError['USER'] = "<small id='email-error' class='form-text text-muted' style='color:red'>EMPTY HERE!!</small>";
            $errorError['PASS'] = "<small id='password-error' class='form-text text-muted' style='color:red'>HERE AS WELL!!</small>";
            $errorError['REPASS'] = "<small id='re-password-error' class='form-text text-muted' style='color:red'>HERE AS WELL!!</small>";
            $errorError['FULLNAME'] = "<small id='fullname-error' class='form-text text-muted' style='color:red'>HERE AS WELL!!</small>";
            $errorError['ADDRESS'] = "<small id='address-error' class='form-text text-muted' style='color:red'>HERE AS WELL!!</small>";

        }
        
    }elseif ($_POST['password'] != $_POST['repassword']){

        $errorError['PASS'] = "<small id='password-error' class='form-text text-muted' style='color:red'>Passwords are not match!</small>";
        $errorError['REPASS'] = "<small id='re-password-error' class='form-text text-muted' style='color:red'>Passwords are not match!</small>";

    }elseif ( (empty($_POST['password'])) && (empty($_POST['repassword'])) ){

        $errorError['PASS'] = "<small id='password-error' class='form-text text-muted' style='color:red'>Please enter your passwords!</small>";
        $errorError['REPASS'] = "<small id='re-password-error' class='form-text text-muted' style='color:red'>This one too please!</small>";

        if( (!isset($_POST['password'])) && (!isset($_POST['repassword'])) ){

            $errorError['PASS'] = "<small id='password-error' class='form-text text-muted' style='color:red'>Please enter your passwords!</small>";
            $errorError['REPASS'] = "<small id='re-password-error' class='form-text text-muted' style='color:red'>This one too please!</small>";
        }

    }elseif (strlen($_POST['password']) <= 5) {

        $errorError['PASS'] = "<small id='password-error' class='form-text text-muted' style='color:red'>Passwords must be more than 5 characters!</small>";
        
    }else{

        insertintouserdetails($_POST['user_email'], $_POST['password'], $_POST['fullname'], $_POST['address']);
    }

}



?>

<!-- Main Form -->

<form class="container" method="POST" id="register-form">
   
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" name="user_email" id="user_email" aria-describedby="emailHelp" placeholder="Enter email">
    <?php echo $errorError["USER"]; ?>
  </div>

  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" name="password" id="password" placeholder="Password">
    <?php echo $errorError["PASS"]; ?>
  </div>

  <div class="form-group">
    <label for="exampleInputPassword1">Re-Password</label>
    <input type="password" class="form-control" name="repassword" id="repassword" placeholder="Please re-enter your password">
    <?php echo $errorError["REPASS"]; ?>
  </div>

  <div class="form-group">
    <label for="exampleInputPassword1">Full Name</label>
    <input type="text" class="form-control" name="fullname" id="fullname" placeholder="Fullname">
    <?php echo $errorError["FULLNAME"]; ?>
  </div>

  <div class="form-group">
    <label for="exampleInputPassword1">Address</label>
    <textarea class="form-control" rows="5" name="address" id="address" placeholder="Address please"></textarea>
    <?php echo $errorError["ADDRESS"]; ?>
  </div>

  <button type="submit" name="register-button" class="btn btn-primary" id="btn-login">Submit</button>
</form>

<!-- end:Main Form -->

<?php

include("BEssential/oftenuse/footer.php");

?>
