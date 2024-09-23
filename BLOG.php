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
        .header {
            text-align: center;
            padding-top: 10px;
            color: black;
            margin: 0 auto;
            max-width: 900px;
        }
        .header h1 {          
            font-weight: bold;
        }
        .article {
            /* background: white; */
            padding: 20px;
            text-align: center; /* Center the content horizontally */
            font-size: 18px; /* Adjust the font size as needed */
            margin: 0 auto; /* Center the entire container horizontally */
            max-width: 900px; /* Set a maximum width for readability */
        }
        .article h2 {
            color: #16688d;
        }
        .article h3 {
            color: #333;
            margin-top: 15px;
            font-weight: bold;
        }
        .article ul {
            padding-left: 20px;
        }

        .secndary-nav {
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
        }

        .secndary-nav-menu li {
            margin: 0 15px;
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
            color: #000; /* Text color on hover */
            background-color: rgba(0, 0, 0, 0.05); /* Background color on hover */
        }

        .image-gallery {
            display: flex;
            justify-content: space-around;
            margin: 20px 0;
        }

        .gallery-image {
            width: 30%; /* Adjust as necessary */
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s;
        }

        .gallery-image:hover {
            transform: scale(1.05); /* Slight zoom effect on hover */
        }

    </style>

    <div class="page-contain">

        <!-- Main content -->
        <div id="main-content" class="main-content">

        <nav class="secndary-nav">
        <div class="container">
            <ul class="secndary-nav-menu">
                <li><a href="AboutUs.php">Our Services</a></li>
                <li><a href="FAQ.php">FAQs</a></li>
                <li><a href="BLOG.php">BLOG</a></li>
                
            </ul>
        </div>
        </nav>

        <header class="header">
    <h1>FISH FEEDS AND FEEDING</h1><hr>
</header>

<article class="article">
    <p>At Koytur Fish Farming Private Limited, we employ a range of feeding methods to provide our fish with optimal nutrition. Through careful monitoring, quality feed, and efficient practices, we aim to foster healthy growth and sustainable fish farming.</p>

    <div class="image-gallery">
        <img src="assets/BLOG/image1.jpeg" alt="Image 1" class="gallery-image">
        <img src="assets/BLOG/image2.jpeg" alt="Image 2" class="gallery-image">
        <img src="assets/BLOG/image3.jpeg" alt="Image 3" class="gallery-image">
    </div>

    <h2>Some FAQs</h2>

    <h3>1. How do we determine the appropriate feed and feeding frequency?</h3>
    <p>We consider factors such as fish species, size, age, and growth rate. We work closely with aquaculture nutritionists to develop a balanced and nutritious feed formula for each stage of growth. Feeding frequency depends on the species and their specific dietary needs.</p>

    <h3>2. What about the monitoring of feeding efficiency?</h3>
    <p>We regularly monitor the feeding efficiency by observing the fish’s behavior and growth. We ensure that the feed is consumed within a reasonable time frame and adjust the feeding rate if necessary. This helps us optimize feed utilization and minimize waste.</p>

    <h3>3. Use of growth boosters in feeding</h3>
    <p>We practice supplemental feeding, providing additional nutritional supplements or additives to enhance fish health and growth. This is particularly beneficial during critical growth stages or when specific nutritional requirements are needed, including Liv 52, vitamin C, Agrimin Forte, etc.</p>

    <h3>4. How do we maintain feed quality?</h3>
    <p>We take several measures to ensure feed quality. We source our feed from trusted suppliers known for their quality standards. We store the feed properly, protecting it from moisture, pests, and degradation. Regular quality checks are conducted to ensure its nutritional content.</p>

    <h3>5. Do we consider any environmental factors when determining feeding practices?</h3>
    <p>Absolutely! We consider factors such as water temperature, dissolved oxygen levels, and water quality. These factors influence fish metabolism and their feeding behavior. We adjust feeding practices accordingly to maintain optimal conditions.</p>

    <h3>6. How do we determine the appropriate feed and feeding frequency for our fish?</h3>
    <p>We work closely with aquaculture nutritionists and experts to develop a tailored feed formula for each fish species and growth stage. We consider factors such as species requirements, age, size, and nutritional needs. Feeding frequency is determined based on the specific fish species and their metabolic rates.</p>

    <h3>7. Do we monitor the feeding process and fish behavior?</h3>
    <p>Yes, continuous monitoring is crucial. We observe the feeding behavior of the fish, ensuring that the feed is consumed within an appropriate timeframe. Monitoring allows us to adjust feeding rates, detect any abnormalities, and ensure that the fish are receiving optimal nutrition.</p>

    <h2>Fish Feeding Methods at Koytur Fish Farming</h2>
    <p>We implement a combination of manual and automated feeding methods to cater to the diverse needs of our fish. Let’s explore a few of them:</p>

    <h3>Hand Feeding</h3>
    <p>This method involves directly feeding the fish by hand. Our skilled workers distribute the feed evenly across the ponds, closely monitoring the feeding behavior and ensuring that each fish receives an adequate amount.</p>

    <h3>Automatic Feeders</h3>
    <p>To ensure consistent and timely feed distribution, we utilize automatic feeders. These devices are strategically placed in the ponds and programmed to dispense the feed at scheduled intervals throughout the day. This helps maintain a regular feeding routine and optimizes feed utilization.</p>

    <h3>Floating Feeders</h3>
    <p>For fish species that predominantly consume floating or pelleted feed, we utilize floating feeders. These feeders are designed to float on the water’s surface, making it convenient for the fish to access the feed. It promotes efficient feeding and minimizes feed wastage.</p>

    <h3>Sinking Feeders</h3>
    <p>Certain fish species prefer feeding at the bottom of the ponds. To accommodate their feeding behavior, we employ sinking feeders. These feeders dispense sinking pellets or granules that sink to the bottom, allowing the fish to consume the feed comfortably.</p>
</article>


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