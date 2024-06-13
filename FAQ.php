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
 body {
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
                "question" => "What is the procedure of contract farming ?",
                "answer" => "*1= न्यूनतम खरीदी 20 हजार प्लस(एयर पंप, मछली बच्चा, प्रोबायोटिक, मेडिसिन, लाइनर, तारपोलिन आदि।) 
                2 = न्यू सेटअप लगवाना(बायोफ्लाॅक, पोंड लाइनर,RAS)
                3 = कम्पनी का एडवर्टिस्मेंट फ्लेक्सी लगवाना
                फ्लेक्सी साइज 2.5×03 feet जिसमे लिखा होगा फ्री कंसल्टेंसी, बाय Koytur fish farming Pvt limited
                Youtube - https://youtu.be/nE1w8_SohQc"
            ],
            [
                "question" => "camera Montering charges?",
                "answer" => "शुल्क 5 हजार/माह*

                08 कैमरा ,
                01 हैक्टेयर का तालाब ,
                02 पोंड लाइनर,
                25 टैंक तक का बायोफ्लॉक,
                05 केज कल्चर,"
            ],
            [
                "question" => "camera Montering charges?",
                "answer" => "शुल्क 5 हजार/माह*

                08 कैमरा ,
                01 हैक्टेयर का तालाब ,
                02 पोंड लाइनर,
                25 टैंक तक का बायोफ्लॉक,
                05 केज कल्चर,"
            ],
            [
                "question" => "premium consultancy charges or services ?",
                "answer" => "टेक्निकल स्टॉफ कम्पनी भेजेगी (with charges)

                सुपरवाइजर विजिट जीरो 
                मैनेजर विजिट चार्जेस जीरो 
                कैमेरा मॉनिटरिंग चार्जेस जीरो 
                एक्सपर्ट विजिट चार्जेस जीरो 
                👉 हार्वेस्ट के बाद प्रति किलोग्राम 10/ का सर्विस चार्ज
                Remark - किसान का वर्किंग कैपिटल नुकसान होने की स्थिति में कंसल्टेंसी चार्जेस फ्री
                Rs - 10"
            ],
            [
                "question" => "Online training zoom app or Google meet?",
                "answer"=> "Online classes ke bad aap kumhari farms me 01 year फ्री विजिट कर ऑफलाइन सिख सकते हैं
                Rs -599"
            ],
           [ 
                    "question"=>"how to visit offline site ? ",
                    "answer"=> "Morning 10 से दोपहर 03 बजे तक,365 days
                    Search Google map koytur fish farming kumhari chhattisgarh --Koytur fish farming kumhari
                    088004 46453
                    https://maps.app.goo.gl/2NnU3AHJnEtbK4Nc9"
                ],
            
            [
                "question"=>"Pondliner (small Setup) How much fish will be reared in 01 lakh liter tank and how much will it cost?
                ",
                "answer"=> "03 लाख लीटर,
                #टैंक साइज 52 फिट ×52×04 feet
               
               #लाइनर प्राइस 60 हजार
               
               #एयर पंप 22, हज़ार
               
               #सीड स्टॉक 3000 से 4000 पीस
               Rs - 200000"
            ],
            [
                "question"=>"Pondlinear (medium setup) The 150×50 size pond liner that you see in the video will cost how much it will cost and how much fish farming will be done.
                ?",
                "answer"=> "8.5 लाख लीटर,
                #टैंक साइज 50फिट ×150×05feet
               
               #पोंड लाइनर शीट 1.40 लाख 
               
               #एयर पंप 02 एचपी के 02 सेट 
               
               #सीड स्टॉक 8000 से 10,000 पीस
               Rs -4,50,000
               Remark - All set-up cost with, आउटलेट, इनलेट, एंटी बर्डनेट, एयरेशन सिस्टम "
            ],
            [
                "question"=>"Pondliner (small Setup) How much will 0.2 lakh liter pond liner tank cost and how much fish will be cultivated?
                ",
                "answer"=> "02 लाख लीटर,
                टैंक साइज 45 फिट ×45×04 feet
                लाइनर प्राइस 50 हजार
                एयर पंप 22, हज़ार
                सीड स्टॉक 1500 से 2000 पीस
                Rs -1,50,000"
            ],
            [
                "question"=>"Pondliner (small Setup) How much will be the cost of 03 lakh liter size pond liner tank and how much fish will be cultivated?
                ",
                "answer"=> "03 लाख लीटर,
               टैंक साइज 52 फिट ×52×04 feet
               लाइनर प्राइस 60 हजार
               एयर पंप 22, हज़ार
               सीड स्टॉक 3000 से 4000 पीस
               Rs -2,00,000"
            ],
            [
                "question"=>"Subsidy Setup Tank size, cost, stocking density??",
                "answer"=> "12 लाख लीटर,
                 टैंक साइज 100फिट ×110 ×05feet
                 pondliner sheet 1.80 लाख 
                 एयर पंप 02 एचपी के 04 सेट 
                सीड स्टॉक 10,000 से 15000 पीस
                Rs - 7,50,000"
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question"=>"",
                "answer"=> ""
            ],
            [
                "question" => "" ,
                "answer"=> ""
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
