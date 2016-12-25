<?php


	function insertintouserdetails($useremail, $userpassword, $userfullname, $useraddress){

		$conn = mysqli_connect("localhost", "root", "", "portfolio");


		$useremail = mysqli_real_escape_string($conn ,$useremail);
	    $userpassword = mysqli_real_escape_string($conn ,$userpassword);
	    $userfullname = mysqli_real_escape_string($conn ,$userfullname);
	    $useraddress = mysqli_real_escape_string($conn ,$useraddress);

		$sql="INSERT INTO userdetails (userID, password, email, fullname, address)
        VALUES (NULL, '$useremail', '$userpassword', '$userfullname', '$useraddress')";

        if (!mysqli_query($conn,$sql)) {
          die('Error: ' . mysqli_error($conn));
        }
        $message = "Registered Yooooooooooooooooooooooooooooooooooooo";
		echo "<script type='text/javascript'>alert('$message');</script>";

        mysqli_close($conn);
	}
	
?>

