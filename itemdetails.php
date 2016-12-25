<?php

include("BEssential/oftenuse/header.php");

?>

<style type="text/css">
	
	.row-centered {
		text-align:center;
	}

	.col-centered {
		display:inline-block;
		float:none;
		/* reset the text-align */
		text-align:left;
		/* inline-block space fix */
		margin-right:-4px;
	}

</style>

<body>

<?php

	$itemID = htmlspecialchars($_GET["id"]);

	$sql = "SELECT itemName, itemDescription, itemImage 
			FROM goodiegood
			WHERE itemID = $itemID";
	$result = $conn->query($sql);

	if ($result->num_rows > 0) {
	     // output data of each row
	    while($row = $result->fetch_assoc()) {

?>
</body>

<!--  -->
<div class="container">
    <div class="row row-centered">
    	<h1><?php echo $row["itemName"]; ?></h1>
		<a class="thumbnail">
      		<div class="col-xs-6 col-centered"><img src="BEssential/images/<?php echo $row["itemImage"]; ?>" style="width:100%;height:100%; alt="..."></div>
    	</a>
    	<p class="thumbnail text-justify">
			<?php echo $row["itemDescription"]; ?>
		</p>
				
    </div>
</div>
<!--  -->

<?php
		}
	} else {
	     echo "Contact simhedi90@gmail.com for further question";
	}
	$conn->close();
?>

<?php

include("BEssential/oftenuse/footer.php");


?>