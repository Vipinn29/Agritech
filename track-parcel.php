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

        <div class="site-section bg-light" id="pricing-section">
        <div class="container">
         

        <div class="row text-left">
<?php
if(isset($_POST['search'])){
$searchdata=$_POST['searchdata'];
$ret=mysqli_query($con,"select tblcourier.id as cid, tblcourier.RefNumber,tblcourier.SenderName,tblcourier.SenderCity,tblcourier.SenderState,tblcourier.SenderPincode,tblcourier.SenderCountry,tblcourier.RecipientName,tblcourier.RecipientCity,tblcourier.RecipientState,tblcourier.RecipientPincode,tblcourier.RecipientCountry from  tblcourier where tblcourier.RefNumber='$searchdata'");
$num=mysqli_num_rows($ret);
if($num >0){
while ($row=mysqli_fetch_array($ret)) {

?><div class="col-lg-12">
<h4 align="center" style="font-weight: bold; color:black">Tracking Id - <?php echo $searchdata;?> Details:</h4>
<hr>
</div>
      <div class="col-lg-6 col-md-6 mb-4">
        <div class="card h-100">
          <div class="card-body">
            <h4 class="card-title" align="center" style="font-weight: bold; color:#16688d">Sender</h4>
            <hr />
<table border="1" width="100%" style="text-align: center;">
 
<tr>
<th style="font-weight: bold; color:black"> Name</th>
<td style="color:black"><?php  echo $row['SenderName'];?></td>
</tr> 
<tr>
<th style="font-weight: bold; color:black"> City</th>
<td style="color:black"><?php  echo $row['SenderCity'];?></td>
</tr> 
<tr>
<th style="font-weight: bold; color:black"> State</th>
<td style="color:black"><?php  echo $row['SenderState'];?></td>
</tr> 
<tr>
<th style="font-weight: bold; color:black">Pincode</th>
<td style="color:black"><?php  echo $row['SenderPincode'];?></td>
</tr> 
<tr>
<th style="font-weight: bold; color:black">Country</th>
<td style="color:black"><?php  echo $row['SenderCountry'];?></td>
</tr> 
</table>

          </div>
        </div>
      </div>

       <div class="col-lg-6 col-md-6 mb-4">
        <div class="card h-100">
          <div class="card-body">
            <h4 class="card-title" align="center" style="font-weight: bold; color:#16688d">Recipient</h4>
            <hr />
  <table border="1" width="100%" style="text-align: center;">
<tr>
<th style="font-weight: bold; color:black"> Name</th>
<td style="color:black"><?php  echo $row['RecipientName'];?></td>
</tr> 
<tr>
<th style="font-weight: bold; color:black"> City</th>
<td style="color:black"><?php  echo $row['RecipientCity'];?></td>
</tr> 
<tr>
<th style="font-weight: bold; color:black"> State</th>
<td style="color:black"><?php  echo $row['RecipientState'];?></td>
</tr> 
<tr>
<th style="font-weight: bold; color:black">Pincode</th>
<td style="color:black"><?php  echo $row['RecipientPincode'];?></td>
</tr> 
<tr>
<th style="font-weight: bold; color:black">Country</th>
<td style="color:black"><?php  echo $row['RecipientCountry'];?></td>
</tr> 
</table>
          </div>
        </div>
      </div>
      <?php

  $cid=$row['cid'];   
$ret=mysqli_query($con,"select remark,status,StatusDate from tblcouriertracking where  CourierId='$cid'");
$num=mysqli_num_rows($ret);
if($num>0){
?>
     <div class="col-lg-12 col-md-6 mb-4">
        <div class="card h-100">
          <div class="card-body">
            <h4 class="card-title" align="center" style="font-weight: bold; color:#16688d">Tracking History</h4>
            <hr />
<table border="1" width="100%" style="text-align: center;">
  <tr>
    <th style="font-weight: bold; color:black">Date / Time</th>
    <th style="font-weight: bold; color:black">Status </th>
    <th style="font-weight: bold; color:black">Remark</th>
  </tr>
 <?php while ($row=mysqli_fetch_array($ret)) { ?>
<tr>
<td style="color:black"><?php  echo $row['StatusDate'];?></td>
<td style="color:black"><?php  echo $row['status'];?></td>
<td style="color:black"><?php  echo $row['remark'];?></td>
</tr>  
<tr>
<?php }?>
</table>

          </div>
        </div>
      </div>

<?php
} else{ ?>
<h4 style="color:red" align="center">Not Shipped yet </h4>
   <?php } }} else {  ?>

<h4 align="center" style="color:red">Invalid Tracking / Reference Number </h4>
<?php }}?>
    <!-- /.row -->

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
