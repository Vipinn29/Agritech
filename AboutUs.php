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

    <style>
        .about{
            text-align: center; /* Center the content horizontally */
            font-size: 18px; /* Adjust the font size as needed */
            margin: 0 auto; /* Center the entire container horizontally */
            max-width: 800px; /* Set a maximum width for readability */
        }

        .about p {   
            padding: 10px;
            font-weight: bold;
            color: black;
        }
    </style>
    
    
    <!-- Page Contain -->
    <div class="page-contain">

        <!-- Main content -->
        <div id="main-content" class="main-content">

    
    <div class="about">

    <p>Welcome to Koytur Fish Farming, your trusted partner for premium live fish delivered directly from our farms.</p>

    At KoyturFishFarming, we take pride in our commitment to sustainable aquaculture and providing you with the freshest, highest quality fish for your culinary delight. With decades of expertise in fish farming, we've mastered the art of raising healthy, flavorful fish in a controlled environment.<br>

    When you choose KoyturFishFarming, you're choosing seafood that's as fresh as it gets. Our live fish are carefully harvested and packed in specialized pouches, preserving their natural taste and texture until they reach your doorstep.<br><br>

    Join us in our mission to provide businesses like yours with the freshest, highest quality seafood available. Experience the KoyturFishFarming difference and take your culinary offerings to the next level!<br>

    Partner with us for freshness, quality, and reliability.<br><br>

    <p>Koytur Fish Farming Private Limited<br></p>
    </div>  
        
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