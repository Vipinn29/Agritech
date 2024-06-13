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

 <style>   body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}

.faq-container {
    max-width: 800px;
    margin: 50px auto;
    padding: 20px;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.faq-container h1 {
    text-align: center;
    margin-bottom: 20px;
}

.faq-item {
    margin-bottom: 15px;
    border-bottom: 1px solid #ddd;
    padding-bottom: 10px;
}

.faq-question {
    font-size: 18px;
    cursor: pointer;
    position: relative;
}

.faq-question::after {
    content: '+';
    position: absolute;
    right: 0;
    font-size: 24px;
}

.faq-answer {
    display: none;
    padding: 10px 0;
    font-size: 16px;
    line-height: 1.5;
}

.faq-item.active .faq-answer {
    display: block;
}

.faq-item.active .faq-question::after {
    content: '-';
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
