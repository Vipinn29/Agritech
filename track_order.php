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

include('CMS/includes/dbconnection.php');
// session_start();
error_reporting(0);
    if(isset($_POST['submit']))
  {

$name=$_POST['name'];
    $phone=$_POST['phone'];
    $email=$_POST['email'];
    $message=$_POST['message'];
 $query=mysqli_query($con,"insert into tblcontact(Name,MobileNumber,Email,Message) value('$name','$phone','$email','$message')");

    if ($query) {
    echo "<script>alert('Your message was sent successfully!.');</script>";
echo "<script>window.location.href ='index.php'</script>";
  }
  else
    {
       echo '<script>alert("Something Went Wrong. Please try again")</script>';
    }

  
}

?>
<style>
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
    color: #16688d; /* Text color on hover */
    background-color: rgba(0, 0, 0, 0.05); /* Background color on hover */
}
</style>

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

        <nav class="secndary-nav">
        <div class="container">
            <ul class="secndary-nav-menu">
                <li><a href="track_order.php">Track</a></li>
                <li><a href="CMS/staff/index.php">Employee</a></li>
                <li><a href="CMS/admin/index.php">Admin</a></li>
                
            </ul>
        </div>
        </nav>

        <div class="track">       
        <h2>Track Your Order <img src="assets/new/track.png" alt="track-img" width="50px"></h2><hr>
                <p class="mb-5">Choose Your Quality Delivery of Your Cargo</p><br>
                <form action="track-parcel.php" name="search" method="post">
                  <div class="form-group d-flex">
                    <label>Tracking/reference number:</label><br>
                    <input type="text" class="form-control" name="searchdata" placeholder="Enter your tracking number"><br>
                    <input type="submit" name="search" class="btn btn-primary text-white px-4" value="Track Now">
                  </div>
                </form>
              </div>
            </div>
          </div>
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
