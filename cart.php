<?php

include("BEssential/oftenuse/header.php");

?>
<body>

<!-- beginning of Show items in the cart -->
<script>

  loadfromanywhereLocalStorage();

</script>

<div class="container"> 
<div class="row"> 
<div class="col-sm-12 col-md-10 col-md-offset-1"> 

<div id="whengotnothing">
<table class="table table-hover">

	<thead> 
		<tr> 
			<th>Product</th> 
			<th>Quantity</th> 
			<th class="text-center">Price</th> 
			<th class="text-center">Total</th> 
			<th> </th> 
		</tr> 
	</thead>

	<tbody id="shownothere"> 

 	</tbody>
 	<tbody>
		<tr> 
			<td>   </td> 
			<td>   </td> 
			<td><h5>Subtotal</h5></td> 

			<td><h5>RM</h5></td> 

			<td class="text-right"><h5><strong id="subtotal"></strong></h5></td> 

		</tr> 

		<tr> 
			<td>   </td> 
			<td>   </td> 
			<td><h5>Estimated shipping</h5></td>  

			<td><h5>RM</h5></td> 

			<td class="text-right"><h5><strong id="shipmment"></strong></h5></td>
		</tr>

		<tr>
			<td>   </td> 
			<td>   </td> 
			<td><h3>Total</h3></td> 

			<td><h3>RM</h3></td> 

			<td class="text-right" ><h3><strong id="totalofeverything"></strong></h3></td> 
		</tr> 

		<tr> 
			<td>   </td> 
			<td>   </td> 
			<td>   </td> 

			<td>
				<a href="items.php"><button type="button" class="btn btn-default"> <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping </button></a>
			</td>

			<td>

<?php

if( (!isset($_SESSION["login_user"])) && (empty($_SESSION["login_user"])) ){
?>

	<a href="givendata.php">
		<button type="button" class="btn btn-success"> Checkout
			<span class="glyphicon glyphicon-play"></span> 
		</button>
	</a>

<?php
}else{
?>

	<a href="checkout.php">
		<button type="button" class="btn btn-success"> Checkout
			<span class="glyphicon glyphicon-play"></span> 
		</button>
	</a>

<?php
}

?>

			</td> 
		</tr> 
		
	</tbody> 
</table>
</div> 

</div> 
</div> 
</div>

<!-- end of Show items in the cart -->

</body>

<?php

include("BEssential/oftenuse/footer.php");

?>


<script>

viewerCart();

</script>