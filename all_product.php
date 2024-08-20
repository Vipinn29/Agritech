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
            .city-head {
              text-align: center;
              font-size: 24px;
              font-weight: bold;
              margin-bottom: 20px;
            }

            .category-selection {
              text-align: center;
              margin: 0 auto;
              background-color: #fff; /* Set background to white */
              padding: 15px 0;
              box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* Add a subtle shadow */
            }

            .secndary-nav-menu {
                list-style: none;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                flex-direction: row;
                flex-wrap: wrap;
            }

            .secndary-nav-menu li {
                margin: 0 15px ;
            }

            .secndary-nav-menu li a {
                color: #333; /* Link color */
                text-decoration: none;
                font-weight: 600;
                font-size: 17px;
                padding: 10px 15px;
                border-radius: 4px;
                position: relative; /* Position relative for pseudo-element */
                overflow: hidden; /* Hide overflow for smoother animation */
                transition: color 0.3s ease, background-color 0.3s ease; /* Smooth transition for color and background */
            }

            .secndary-nav-menu li a::before {
                content: '';
                position: absolute;
                bottom: 0;
                left: 0;
                width: 100%;
                height: 2px;
                background-color: #333; /* Default underline color */
                transition: transform 0.3s ease; /* Smooth transition for underline */
                transform: scaleX(0); /* Initial width of underline set to 0 */
                transform-origin: left; /* Expand from left to right */
            }

            .secndary-nav-menu li a:hover::before {
                transform: scaleX(1); /* Expand the underline */
            }

            .secndary-nav-menu li a:hover {
                color: #16688d; /* Text color on hover */
                background-color: rgba(0, 0, 0, 0.05); /* Background color on hover */
            }

            @media only screen and (max-width: 768px) {
             .secndary-nav-menu {
               flex-direction: column; /* Change flex direction to column on small screens */
             }
             .secndary-nav-menu li {
               margin: 10px 0; /* Add margin between list items on small screens */
             }
            }
    </style>

    <!-- Page Contain -->
    <div class="page-contain">

        <!-- Main content -->
        <div id="main-content" class="main-content">

            <!--Hero Section-->
          


            <!--Navigation section-->
           
            <!-- Category selection -->
            <H2 class="city-head">Please select your city</H2>
            <nav class="category-selection">
             <ul class="secndary-nav-menu">
             <?php foreach($cataDatas as $cataData){ ?>
                 <li>
                   <a href="catagory.php?status=catView&&id=<?php  echo $cataData['ctg_id'] ?>" data-title="<?php echo $cataData['ctg_name']?>"><?php echo $cataData['ctg_name']?> </a>
                 </li>
               <?php } ?>
             </ul>
            </nav>

            <!-- Product -->
            <!-- <div class="container">

                <div class="product-category grid-style">

                    <div class="row">
                        <ul class="products-list">

                            <?php
                            foreach ($pdt_datas as $pdt_data) {
                            ?>

                                <li class="product-item col-lg-3 col-md-3 col-sm-4 col-xs-6">
                                    <div class="contain-product layout-default">
                                        <div class="product-thumb">
                                            <a href="single_product.php?status=singleproduct&&id=<?php echo $pdt_data['price_id'] ?>" class="link-to-product">
                                                <img src="admin/uploads/products/<?php echo $pdt_data['pdt_img'] ?>" alt="dd" width="270" height="270" class="product-thumnail">
                                            </a>
                                        </div>
                                        <div class="info">
                                        <b class="categories"> <?php echo $pdt_data['ctg_name'] ?> </b>
                                            
                                            <h4 class="product-title"><a href="single_product.php?status=singleproduct&&id=<?php echo $pdt_data['price_id'] ?>" class="pr-name"><?php echo $pdt_data['pdt_name'] ?></a></h4>
                                            <div class="price">
                                                <ins><span class="price-amount"><span class="currencySymbol">Rs. </span><?php echo $pdt_data['pdt_price'] ?></span></ins>

                                            </div>
                                            <div class="shipping-info">
                                                <p class="shipping-day">Same Day Shipping</p>
                                                <p class="for-today">Pree Pickup Today</p>
                                            </div>
                                            <div class="slide-down-box">
                                                <p class="message">All products are carefully selected to ensure fish safety.</p>
                                               
                                            </div>
                                        </div>
                                    </div>
                                </li>

                            <?php } ?>


                        </ul>
                    </div>
 
                    

                    <div class="biolife-panigations-block">
                        <ul class="panigation-contain">
                            <li><span class="current-page">1</span></li>
                            <li><a href="#" class="link-page">2</a></li>
                            <li><a href="#" class="link-page">3</a></li>
                            <li><span class="sep">....</span></li>
                            <li><a href="#" class="link-page">20</a></li>
                            <li><a href="#" class="link-page next"><i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>

                </div>





            </div> -->
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