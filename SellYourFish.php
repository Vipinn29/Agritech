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


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sell Your Fish</title>
</head>

    <div class="sell">
    <p>Are you a fish farmer looking for a reliable and profitable way to sell your fish? Look no further! We are here to provide you with a hassle-free and efficient platform to sell your fish directly to us. Our goal is to support local farmers and ensure you get the best value for your hard work.</p>
    <a href="https://forms.gle/qEpb4wvUh8BHyFiC9" target="_blank">
        Click Here to Sell Your Fish</a><br>
    <p>How to Get Started <br>
    Fill Out the Form: <a href="https://forms.gle/qEpb4wvUh8BHyFiC9" target="_blank">Click here</a> to access our Google Form.<br>
    Enter Your Details: Provide information about your farm, the type and quantity of fish you have, and your contact details.<br>
    Submit: Once you've completed the form, submit it, and our team will review your information.<br>
    Wait for Confirmation: We will contact you to confirm the details and arrange the logistics.<br>
    We are committed to building strong relationships with our farmers and ensuring that the process is as smooth and beneficial as possible. By choosing to sell your fish to us, you are choosing a partner who values your dedication and hard work.<br><br>

    If you have any questions or need further assistance, please feel free to contact us.</p>
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
