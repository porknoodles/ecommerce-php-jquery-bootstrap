<?php

include("BEssential/oftenuse/header.php");

?>

<!-- custom CSS -->
<style type='text/css'>
        #carousel-custom {
            margin: 20px auto;
            width: 400px;
        }
        #carousel-custom .carousel-indicators {
            margin: 10px 0 0;
            overflow: auto;
            position: static;
            text-align: left;
            white-space: nowrap;
            width: 100%;
        }
        #carousel-custom .carousel-indicators li {
            background-color: transparent;
            -webkit-border-radius: 0;
            border-radius: 0;
            display: inline-block;
            height: auto;
            margin: 0 !important;
            width: auto;
        }
        #carousel-custom .carousel-indicators li img {
            display: block;
        }
        #carousel-custom .carousel-outer {
            position: relative;
        }
    </style>
<!-- end of custom CSS -->

<body>
 
 <!-- Slideshow -->

<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <?php

    $sql = "SELECT itemID, itemName, itemDescription, itemPrice, itemImage, discount
            FROM goodiegood
            WHERE discount > 50 ";

    $result = $conn->query($sql);

    $numberofROWS = $result->num_rows;

    for ($x = 0; $x < $numberofROWS; $x++) {

      echo '<li data-target="#carousel-example-generic" data-slide-to="$x"></li>';
    } 
  ?>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">

  <div class="item active">
      <img src="BEssential/images/First.png" style="width:304px;height:228px;" alt="Personal Particulars" class="img-thumbnail center-block">
  </div>


<?php 
      if ($result->num_rows > 0) {
           // output data of each row
          while($row = $result->fetch_assoc()) {

?>
    <div class="item">
      <img src="BEssential/images/<?php echo $row["itemImage"];?>" style="width:304px;height:228px;" alt="Personal Particulars" class="img-thumbnail center-block">
    </div>
<?php

        }
      } else {
           echo "0 results";
      }
      $conn->close();

?>

  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

 <!-- End of Slideshow -->
</body>

<?php

include("BEssential/oftenuse/footer.php");


?>