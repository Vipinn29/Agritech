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
.faq-container {
    max-width: 800px;
    margin: 50px auto;
    padding: 20px;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
}

.faq-container h1 {
    text-align: center;
    margin-bottom: 20px;
    font-size: 2em;
    color: #333;
}

.faq-item {
    margin-bottom: 15px;
    border-bottom: 1px solid #ddd;
    padding-bottom: 10px;
    transition: background-color 0.3s ease, padding-left 0.3s ease;
}

.faq-item:hover {
    background-color: #f9f9f9;
    padding-left: 15px;
}

.faq-question {
    font-size: 18px;
    cursor: pointer;
    position: relative;
    padding: 10px 0;
    transition: color 0.3s ease;
}

.faq-question::after {
    content: '+';
    position: absolute;
    right: 0;
    font-size: 24px;
    transition: transform 0.3s ease;
}

.faq-answer {
    display: none;
    padding: 10px 0;
    font-size: 16px;
    line-height: 1.5;
    color: #666;
    transition: max-height 0.3s ease, opacity 0.3s ease;
    max-height: 0;
    overflow: hidden;
    opacity: 0;
}

.faq-item.active .faq-answer {
    display: block;
    max-height: 500px; /* Adjust as needed */
    opacity: 1;
}

.faq-item.active .faq-question::after {
    content: '-';
    transform: rotate(180deg);
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
</style>

<script>
document.addEventListener("DOMContentLoaded", function() {
    var faqItems = document.querySelectorAll('.faq-item');

    faqItems.forEach(function(item) {
        item.addEventListener('click', function() {
            item.classList.toggle('active');
        });
    });
});
</script>


<div class="page-contain">

        <!-- Main content -->
        <div id="main-content" class="main-content">

        <nav class="secndary-nav">
        <div class="container">
            <ul class="secndary-nav-menu">
                <li><a href="AboutUs.php">Our Services</a></li>
                <li><a href="FAQ.php">FAQ's</a></li>
                <li><a href="#">Farming</a></li>
                
            </ul>
        </div>
        </nav>

        <div class="faq-container">
        <h1>Frequently Asked Questions</h1>
        <?php
        $faqs = [
            [
                "question" => "What is your return policy?",
                "answer" => "Our return policy lasts 30 days. If 30 days have gone by since your purchase, unfortunately, we can’t offer you a refund or exchange."
            ],
            [
                "question" => "How do I track my order?",
                "answer" => "You will receive an email with tracking information once your order has shipped."
            ],
            [
                "question" => "Can I change my order?",
                "answer" => "We start working on your order as soon as we get it, so we are unable to make changes after it is placed."
            ],
            // Add more FAQs as needed
        ];

        foreach ($faqs as $faq) {
            echo '<div class="faq-item">';
            echo '<div class="faq-question">' . $faq["question"] . '</div>';
            echo '<div class="faq-answer">' . $faq["answer"] . '</div>';
            echo '</div>';
        }
        ?>
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
