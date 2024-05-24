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

        <?php
        include_once("includes/header_bottom.php");
        ?>

    </header>
    
    <!-- Page Contain -->
    <div class="page-contain">

        <!-- Main content -->
        <div id="main-content" class="main-content">

    <p>Welcome to KoyturFishFarming, your trusted partner for premium live fish delivered directly from our farms. <br><br>

    At KoyturFishFarming, we take pride in our commitment to sustainable aquaculture and providing you with the freshest, highest quality fish for your culinary delight. With decades of expertise in fish farming, we've mastered the art of raising healthy, flavorful fish in a controlled environment.<br>

    When you partner with KoyturFishFarming, you gain access to a diverse selection of premium fish species, meticulously bred and raised to perfection. Whether you're a restaurant, catering service, seafood market, or food distributor, we have the right fish to elevate your offerings and satisfy your customers' discerning palates.<br>

    When you choose KoyturFishFarming, you're choosing seafood that's as fresh as it gets. Our live fish are carefully harvested and packed in specialized pouches, preserving their natural taste and texture until they reach your doorstep.<br>

    We understand the unique needs of businesses in the food industry, which is why we're dedicated to providing you with unparalleled service and support. From flexible ordering options to reliable, on-time delivery, we're here to ensure that your experience with KoyturFishFarming is seamless and stress-free.<br>

    Join us in our mission to provide businesses like yours with the freshest, highest quality seafood available. Experience the KoyturFishFarming difference and take your culinary offerings to the next level!<br>

    Partner with us for freshness, quality, and reliability.<br><br>

    Koytur Fish Farming Private Limited: Your trusted seafood supplier.<br></p>
        </div>
    </div>

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