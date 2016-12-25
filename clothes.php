<?php

include("BEssential/oftenuse/header.php");

/*Should I make users who doesn't register cannot access this page?*/

?>

<!-- <script type="text/javascript" src="ajaxscript.js"></script> -->

<body>
<!-- Row Items -->

<div class="container">
	
	<div class="row row-centered">

		<?php

			if( (!isset($_SESSION["login_user"])) && (empty($_SESSION["login_user"])) ){
                $_SESSION["login_user"] = null;

                $sql = "SELECT itemID, itemName, itemDescription, itemType, itemPrice, itemImage 
		                FROM goodiegood
		                WHERE itemType = '"."Clothes"."'";
				$result = $conn->query($sql);

				if ($result->num_rows > 0) {
				     // output data of each row
				    while($row = $result->fetch_assoc()) {
		?>		<!-- Loads everything for non-members -->

		<div class="col-xs-6 col-sm-3 col-centered" id="<?php echo $row["itemID"]?>">		
			<div class="thumbnail">
			    <img src="BEssential/images/<?php echo $row["itemImage"];?>" alt="<?php $row["itemName"]?>"; style="width:304px;height:228px;" data-img="<?php echo "BEssential/images/".$row["itemImage"];?>">
				<div class="caption">
					<h3><?php echo $row["itemName"]?></h3>
					<p><?php echo "RM ".$row["itemPrice"]?></p>
					<p>
						<a href="itemdetails.php<?php echo "?id=".$row["itemID"]?>"  target="_blank" class="btn btn-primary" role="button">Details</a>
						
						<a 	id="add-to-cart" 
							class="btn btn-default" 
							role="button"
							onclick="addtocartButton(this);"
							data-ID="<?php echo $row["itemID"]; ?>" 
							data-item-name="<?php echo $row["itemName"];?>" 
							data-item-price="<?php echo $row["itemPrice"];?>" 
							data-item-imagename="<?php echo $row["itemImage"];?>"
							data-user = "<?php echo $_SESSION["login_user"];?>">Add to cart</a>
					</p>
				</div>
			</div>
		</div>
		<?php
				}
			} else {
			     echo "0 results";
			}
			$conn->close();
		?>

		<?php
			/* Ends Here ------ Loads everything for non-members */
			}else{

				/* Loads everything for members */
				$sql = "SELECT itemID, itemName, itemDescription, itemPrice, itemImage, discount
						FROM goodiegood
						WHERE itemType = '"."Clothes"."'";

				$result = $conn->query($sql);

				if ($result->num_rows > 0) {
					// output data of each row
				    while($row = $result->fetch_assoc()) {
				    	if($row["discount"] != 0){

				    		$realprice = $row["itemPrice"] - ($row["discount"] * $row["itemPrice"])/100;
				    		$realprice = number_format($realprice, 2, '.', '');

				    	}else{
				    		$realprice = $row["itemPrice"];
				    	}
		?>
		<!--  Loads everything for members  -->
		<div class="col-xs-6 col-sm-3 col-centered" id="<?php echo $row["itemID"]?>">		
			<div class="thumbnail">
			    <img src="BEssential/images/<?php echo $row["itemImage"];?>" alt="<?php $row["itemName"]?>"; style="width:304px;height:228px;" data-img="<?php echo "BEssential/images/".$row["itemImage"];?>">
				<div class="caption">
					<h3><?php echo $row["itemName"]?></h3>
					<?php
					if($realprice == $row["itemPrice"]){
					?>
						<p><br/></p>
						<p><?php echo "RM ".$row["itemPrice"] ?></p>
					<?php
					}else{
					?>
						<p><del><?php echo "RM ".$row["itemPrice"] ?></del></p>
						<p><?php echo "RM ".$realprice?></p>
					<?php
					}
					?>
					<p>
						<a href="itemdetails.php<?php echo "?id=".$row["itemID"]?>"  target="_blank" class="btn btn-primary" role="button">Details</a>
						
						<a 	id="add-to-cart" 
							class="btn btn-default" 
							role="button"
							onclick="addtocartButton(this);"
							data-ID="<?php echo $row["itemID"]; ?>" 
							data-item-name="<?php echo $row["itemName"];?>" 
							data-item-price="<?php echo $realprice;?>" 
							data-item-imagename="<?php echo $row["itemImage"];?>"
							data-user = "<?php echo $_SESSION["login_user"];?>">Add to cart</a>
					</p>
				</div>
			</div>
		</div>
		<!-- Ends Here ======= Loads everything for members  -->
		<?php

				    }
				}else {
			     echo "0 results";
				}
				$conn->close();


            }

		?>
            

			
			     
		
		

	</div>

</div>

<!-- End of Row Items -->


</body>

<?php

include("BEssential/oftenuse/footer.php");

?>

<script>
	loadfromanywhereLocalStorage();
</script>