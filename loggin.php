<?php

include("BEssential/oftenuse/header.php");

$_POST['userTxt'] = "We'll never share your email with anyone else.";
$_POST['passTxt'] = "So is your password, of course!";
$userTxt = $_POST['userTxt'];
$passTxt = $_POST['passTxt'];

if((!isset($_SESSION["login_user"])) && (empty($_SESSION["login_user"])) ){

    $_SESSION["login_user"] = null;

}else{
    
    header("Location: home.php");

}

if(isset($_POST['something'])){

    $emailValidate = "";
    $passwordValidate = "";
    $userNameSession = "";

    if( (($_POST["user_email"])!= "") && (isset($_POST["user_email"])) ){/*--------------------validate the email*/

        $user_email_login = mysqli_real_escape_string($conn ,$_POST["user_email"]);

        $sql = "SELECT * 
                FROM userdetails
                WHERE email = '".$user_email_login."'";

        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
             // output data of each row

            while($row = $result->fetch_assoc()) {
                $emailValidate = $row["email"];
                $passwordValidate = $row["password"];
                $userNameSession = $row["fullname"];
            }

        }

        $conn->close();

    }

    if($emailValidate != $_POST["user_email"]){

        $userTxt = "somethin' wrong with your email, bruh!";

    }elseif($passwordValidate != $_POST["user_password"]){

        $passTxt = "somethin' wrong with your password, bruh!";

    } else{/*------------------------------------------------------------------------------after they logged in*/

        $userTxt = "HEY, MY BROTHER FROM ANOTHER MOTHER!";
        header("Location: home.php");
        $_SESSION['login_user'] = $userNameSession;

    }

}

?>

<!-- Main Form -->

<form class="container" method="POST" id="login-form">
    <div id="error">
            <!-- error will be shown here ! -->
    </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" name="user_email" id="user_email" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="email-error" class="form-text text-muted"> <?php echo $userTxt; ?> </small>
  </div>

  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" name="user_password" id="user_password" placeholder="Password">
    <small id="password-error" class="form-text text-muted"> <?php echo $passTxt; ?> </small>
  </div>
  <button type="submit" name="something" class="btn btn-primary" id="btn-login">Submit</button>
</form>

<!-- end:Main Form -->

<?php

include("BEssential/oftenuse/footer.php");

?>
