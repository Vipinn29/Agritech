<?php

session_start();
include_once("admin/class/adminback.php");
$obj = new adminback();

$cata_info = $obj->p_display_catagory();
$cataDatas = array();
while ($data = mysqli_fetch_assoc($cata_info)) {
    $cataDatas[] = $data;
}




$pdt_info = $obj->view_all_product();

$pdt_datas = array();
        
while($pdt_ftecth = mysqli_fetch_assoc($pdt_info)){
            $pdt_datas[] = $pdt_ftecth;
}

?>

<?php
include_once("includes/head.php");
?>

<body class="biolife-body">
    <!-- Preloader -->

    <?php
    include_once("includes/preloader.php");
    ?>

    <!-- HEADER -->
    <header id="header" class="header-area style-01 layout-03">

        <?php
        include_once("includes/header_top.php");
        ?>

        <?php
        include_once("includes/header_middle.php");
        ?>

        <!-- <?php
        include_once("includes/header_bottom.php");
        ?> -->

    </header>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sell Your Fish</title>
</head>
<body>
    <h2 class="track">Sell Your Fish</h2>
    <form class="track" action="adminback.php" method="post">
        <label for="fish_name">Your Name / Company Name</label><br>
        <input type="text" id="you_name" name="your_name"><br>
        <label for="fish_name">Fish Name:</label><br>
        <input type="text" id="fish_name" name="fish_name"><br>
        
        <label for="quantity">Quantity:</label><br>
        <input type="number" id="quantity" name="quantity"><br>
        
        <label for="price_per_unit">Price per Unit:</label><br>
        <input type="text" id="price_per_unit" name="price_per_unit"><br>
       
        <label for="contact_details">Your Contact No.</label><br>
        <input type="text" id="contact" name="contact_details"><br><br>


        <input type="submit" value="Submit">
    </form>

    <!-- FOOTER -->
    <?php
    include_once("includes/footer.php");
    ?>

    <!--Footer For Mobile-->
    <?php
    include_once("includes/mobile_footer.php");
    ?>

    <?php
    include_once("includes/mobile_global.php")
    ?>


    <!-- Scroll Top Button -->
    <a class="btn-scroll-top"><i class="biolife-icon icon-left-arrow"></i></a>

    <?php
    include_once("includes/script.php")
    ?>

</body>
</html>
