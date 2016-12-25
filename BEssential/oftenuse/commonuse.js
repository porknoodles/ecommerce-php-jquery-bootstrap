var cart = [];

function addtocartButton(dat){ /*Function for add to cart button*/

	var id = dat.getAttribute("data-ID");
	var name = dat.getAttribute("data-item-name");
	var price = dat.getAttribute("data-item-price");
	var imagename = dat.getAttribute("data-item-imagename");

	addtoCart(id, name, price, imagename, 1);
	numberofitemsCart();


}/*Function for add to cart button*/

function itsthesame(){ /*display whatever in array to the html page*/

	var arrayCart = listCart();
	var outputStrings = "";

	for(var a in arrayCart){

		outputStrings += "<li>" + "Name : " + arrayCart[a].name + " Price : $" + arrayCart[a].price + " Quantity : " + arrayCart[a].quantity + "</li>";

	}

	outputLength = outputStrings.length;

	if(outputLength != 0){
		$("#showhere").html(outputStrings);
	}else{
		$("#showhere").html("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
	}

}/*display whatever in array to the html page*/

var Goodies = function(id, name, price, imagename, quantity){	

	this.id = id;
	this.name = name;
	this.price = price;
	this.imagename = imagename;
	this.quantity = quantity;

};

function addtoCart(id, name, price, imagename, quantity){	/* add goodies to the cart */

	if(cart != null){

		for(var checking in cart){

				if((cart[checking].name == name) && (cart[checking].id == id)){

					cart[checking].quantity+=quantity;

					saveitemsintheCart(cart);

					return;

				}

		}

		var goodies = new Goodies(id, name, price, imagename, quantity);

		cart.push(goodies);

		saveitemsintheCart(cart);

	}

}

function removefromCart(id, name){

	for(var removeChecking in cart){

		if((cart[removeChecking].name === name) && (cart[removeChecking].id === id)){

			cart[removeChecking].quantity -= 1;

			if(cart[removeChecking].quantity == 0){

				cart.splice(removeChecking, 1);

			}

			break;

		}

	}

	saveitemsintheCart(cart);

}

function clearCart(){

	cart = [];
	saveitemsintheCart(cart);

}

function itemsintheCart(){

	var totalitemsintheCart = 0;

	for(var countingCart in cart){

		totalitemsintheCart += cart[countingCart].quantity;

	}

	return totalitemsintheCart;
}

function totalbalanceCart(){

	var totalBalance = 0;

	for(var itemprice in cart){

		totalBalance = (cart[itemprice].quantity * cart[itemprice].price) + totalBalance;

	}

	return totalBalance.toFixed(2);
}

function listCart(){

	var cartCopy = [];

	for(var z in cart){

		var item = cart[z];
		var itemCopy={};

		for(var p in item){

			itemCopy[p] = item[p];

		}
		cartCopy.push(itemCopy);

	}

	return cartCopy;

}

function saveitemsintheCart(canbeCart){

	var justnormalCart = canbeCart;

	var users = document.getElementById("magics").getAttribute("data-fullname");

	if((users !== "nothing")){

		localStorage.setItem(users, JSON.stringify(justnormalCart));

	}else{

		localStorage.setItem("didnotlogin", JSON.stringify(justnormalCart));

	}

}

function loadfromanywhereLocalStorage(){

	var users = document.getElementById("magics").getAttribute("data-fullname");

	if(users != "nothing"){

		cart = JSON.parse(localStorage.getItem(users));
		if (cart == null) {
			cart = [];
        }

	}else{

		cart = JSON.parse(localStorage.getItem("didnotlogin"));
		if (cart == null) {
			cart = [];
        }

	}

	numberofitemsCart();

}

function numberofitemsCart(){

	var arrayCart = listCart();
	var outputLength = "";

	outputLength = arrayCart.length;

	if(outputLength != 0){
		$("#mycroft").html(outputLength);
	}else{
		$("#mycroft").html("");
	}

}

function viewerCart(){ /*display whatever in array to the html page*/

	var arrayCart = listCart();
	var outputString = "";

	var subtotal = totalbalanceCart();
	var shippingCost = parseFloat((subtotal * 12)/100);
	var totalofeverything = parseFloat(subtotal) + parseFloat(shippingCost);

	for(var a in arrayCart){

		var totalofeach = (arrayCart[a].quantity * arrayCart[a].price);

		outputString += "<tr>";
		outputString += "<td class='col-sm-8 col-md-6'>";

		outputString += "<div class='media'> ";
		outputString += "<a class='thumbnail pull-left' href='itemdetails.php?id=" + arrayCart[a].id + "'>";
		outputString += "<img class='media-object' src='BEssential/images/" + arrayCart[a].imagename + "' style='width: 72px; height: 72px;'> ";
		outputString += "</a> ";
		outputString += "<div class='media-body'> ";
		outputString += "<h4 class='media-heading'>";
		outputString += "<a href='itemdetails.php?id=" + arrayCart[a].id + "'>" + arrayCart[a].name + "</a>";
		outputString += "</h4> ";
		outputString += "<h5 class='media-heading'> by <a href='itemdetails.php?id=" + arrayCart[a].id + "'>" + arrayCart[a].name + "</a>";
		outputString += "</h5> <span>Status: </span><span class='text-success'><strong>In Stock</strong></span>";
		outputString += "</div> ";
		outputString += "</div> ";
		outputString += "</td>";

		outputString += "<td class='col-sm-1 col-md-1' style='text-align: center'>";
		outputString += "<input type='text' class='form-control' id='quantityofeachitem' value='" + arrayCart[a].quantity + "' onchange='quantityeachitem(this)' data-id='" + arrayCart[a].id + "' data-name='" + arrayCart[a].name + "'>";
		outputString += "</td>";

		outputString += "<td class='col-sm-1 col-md-1 text-center'><strong>"+"RM "+ arrayCart[a].price +"</strong></td>";

		outputString += "<td class='col-sm-1 col-md-1 text-center'><strong>"+"RM "+ totalofeach.toFixed(2) +"</strong></td>";

		outputString += "<td class='col-sm-1 col-md-1'>";
		outputString += "<button type='button' class='btn btn-danger' id='thisisremove' onclick='removegoodiefromCart(this);' data-id='" + arrayCart[a].id + "' data-name='" + arrayCart[a].name + "'>";
		outputString += "<span class='glyphicon glyphicon-remove'>";
		outputString += "</span> Remove </button>";
		outputString += "</td>";

		outputString += "</tr>";

	}

	outputLength = arrayCart.length;

	if(outputLength != 0){

		$("#shownothere").html(numberWithCommas(outputString));
		$("#subtotal").html(numberWithCommas(subtotal));
		$("#shipmment").html(numberWithCommas(shippingCost.toFixed(2)));
		$("#totalofeverything").html(numberWithCommas(totalofeverything.toFixed(2)));

	}else{

		$("#whengotnothing").html("<h1><big>You need to have item in your cart</big></h1>");

	}

}/*display whatever in array to the html page*/

function quantityeachitem(magic){

	var arrayCart = listCart();
	var id = magic.getAttribute("data-id");
	var name = magic.getAttribute("data-name");
	var quantity = magic.value;

	for(var addQuantity in arrayCart){

		if((arrayCart[addQuantity].name == name) && (arrayCart[addQuantity].id == id)){

			arrayCart[addQuantity].quantity = parseInt(quantity);

			saveitemsintheCart(arrayCart);
			loadfromanywhereLocalStorage();
			viewerCart();

			return;

		}

	}

	loadfromanywhereLocalStorage();
	viewerCart();
}

function numberWithCommas(x) {
  return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

function removegoodiefromCart(somestuff){

	var id = somestuff.getAttribute("data-id");
	var name = somestuff.getAttribute("data-name");

	for(var removeGoodie in cart){

		if((cart[removeGoodie].name == name) && (cart[removeGoodie].id == id)){

			cart.splice(removeGoodie, 1);

			break;

		}

	}

	var users = document.getElementById("magics").getAttribute("data-fullname");

	if((users !== "nothing")){

		localStorage.setItem(users, JSON.stringify(cart));

	}else{

		localStorage.setItem("didnotlogin", JSON.stringify(cart));

	}

	viewerCart();
	numberofitemsCart();

}