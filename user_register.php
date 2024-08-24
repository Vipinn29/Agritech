<?php
session_start();
include_once("admin/class/adminback.php");
$obj = new adminback();

$cata_info = $obj->p_display_catagory();
$cataDatas = array();
while ($data = mysqli_fetch_assoc($cata_info)) {
    $cataDatas[] = $data;
}

if (isset($_POST['user_register_btn'])) {
    $reg_msg =  $obj->user_register($_POST);
}

if(isset($_SESSION['user_id'])){
    $userId = $_SESSION['user_id'];
    if($userId){
        header('location:userprofile.php');
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


            <div class="container">

                <h2 class="text-center">Register as user</h2>

                <h4>
                    <?php if (isset($reg_msg)) {
                            echo $reg_msg;
                        } ?>
             </h4>


                <div class="row">
                    

                    <!--Form Sign In-->
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="signin-container">
                            <form action="" name="frm-register" method="POST">

                      
                                <!-- <p class="form-row">
                                    <label for="username">Username</span></label>
                                    <input type="text" name="username" class="txt-input form-control" required>
                                </p> -->

                                <p class="form-row">
                                    <label for="user_firstname">First Name<span class="requite">*</span></label>
                                    <input type="text" name="user_firstname" class="txt-input form-control" required>
                                </p>


                                <p class="form-row">
                                    <label for="user_lastname">Last Name</label>
                                    <input type="text" name="user_lastname" class="txt-input form-control">
                                </p>
                                
                                <p class="form-row">
                                    <label for="user_mobile">Mobile No.<span class="requite">*</span> </label>
                                    <input type="tel" id="fid-pass" name="user_mobile"class="form-control" required>
                                </p>
                                
                                <p class="form-row">
                                    <label for="user_email">Email </label>
                                    <input type="email" name="user_email" class="form-control" >
                                </p>

                                <p class="form-row">
                                    <label for="user_password">Password <span class="requite">*</span> </label>
                                    <input type="password" id="fid-pass" name="user_password" class="form-control" required>
                                </p>

                                <p class="form-row">
                                    <label for="user_address">Address <span class="requite">*</span> </label>
                                    <div class="address-dropdown">
                                        <input type="text" id="user_address" name="user_address" class="form-control" readonly required>
                                        <ul class="address-options">
                                            <li>Agartala</li>
                                            <li>Aizwal</li>
                                            <li>Dibrugarh</li>
                                            <li>Dimapur</li>
                                            <li>Guwahati</li>
                                            <li>Patna</li>
                                            <li>Shilong</li>
                                            <li>Silchar</li>
                                            <!-- Add more options here -->
                                            <li id="other-option">Other</li>
                                        </ul>
                                        <input type="text" id="custom_address" name="user_address" class="form-control" placeholder="Enter your address">
                                    </div>
                                </p>

                                <input type="hidden" name="user_roles" value="5">
                                <p class=" wrap-btn ">

                                    <input type="submit" value="Sign Up" name="user_register_btn" class="btn btn-block btn-success">

                                </p>

                            </form>
                        </div>
                    </div>

                    <!--Go to Register form-->
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="register-in-container">
                            <div class="intro">
                                <h4 class="box-title">Already Registerd?</h4>
                                <p class="sub-title">Log in to access your account</p>
                                <ul class="lis">
                                    <li>Check out faster</li>
                                    <li>Save multiple shipping anddesses</li>
                                    <li>Access your order history</li>
                                    <li>Track new orders</li>
                                    <li>Save items to your Wishlist</li>
                                </ul>
                                <a href="user_login.php" class="btn btn-bold">Log in to your account</a>
                            </div>
                        </div>
                    </div>

                </div>

            </div>






        </div>
    </div>

<style>
        .address-dropdown {
            position: relative;
            width: 100%;
        }

        .address-dropdown input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .address-options {
            position: absolute;
            top: 100%;
            left: 0;
            background-color: #fff;
            border: 1px solid #ccc;
            padding: 10px;
            display: none;
            width: 100%;
            max-height: 200px;
            overflow-y: auto;
        }

        .address-options li {
            padding: 10px;
            border-bottom: 1px solid #ccc;
            cursor: pointer;
        }

        .address-options li:hover {
            background-color: #f0f0f0;
        }

        .address-dropdown::after {
            content: "";
            position: absolute;
            top: 50%;
            right: 10px;
            transform: translateY(-50%);
            border-style: solid;
            border-width: 5px 5px 0 5px;
            border-color: #ccc transparent transparent transparent;
        }

        .address-dropdown:hover::after {
            border-color: #333 transparent transparent transparent;
        }

        #custom_address {
          display: none;
        }

        @media only screen and (max-width: 768px) {
            .address-dropdown {
                position: relative;
                z-index: 1; /* add this to ensure dropdown is on top of other elements */
            }
            .address-options {
                position: absolute;
                top: 100%;
                left: 0;
                background-color: #fff;
                border: 1px solid #ccc;
                padding: 10px;
                display: none;
                width: 100%;
                max-height: 200px;
                overflow-y: auto;
                z-index: 2; /* add this to ensure dropdown options are on top of other elements */
            }
        }
</style>

<script>
        const addressDropdown = document.querySelector('.address-dropdown');
        const addressInput = document.querySelector('#user_address');
        const addressOptions = document.querySelector('.address-options');
        const customAddressInput = document.querySelector('#custom_address');
        const otherOption = document.querySelector('#other-option');

        // Show dropdown on click
        addressDropdown.addEventListener('click', () => {
          addressOptions.style.display = 'block';
        });

        // hide dropdown after selection
        document.addEventListener('click', (e) => {
            if (e.target.tagName === 'LI') {
                addressInput.value = e.target.textContent;
                addressOptions.style.display = 'none'; 
            }
        });

        // Hide dropdown on click outside
        document.addEventListener('click', (e) => {
          if (!addressDropdown.contains(e.target)) {
            addressOptions.style.display = 'none';
          }
        });

        // Select address option
        addressOptions.addEventListener('click', (e) => {
          if (e.target.tagName === 'LI') {
            if (e.target.id === 'other-option') {
              customAddressInput.disabled = false; // enable custom address input if "Other" option is selected
              customAddressInput.style.display = 'block'; // show custom address input field
            } else {
              addressInput.value = e.target.textContent;
              customAddressInput.disabled = true; // disable custom address input if any other option is selected
              customAddressInput.style.display = 'none'; // hide custom address input field
            }          
          }
        });

        // Update address input value on custom address input
        customAddressInput.addEventListener('input', (e) => {
          addressInput.value = e.target.value;
          addressOptions.style.display = 'none'; // hide dropdown when typing in custom address input field
        });

        // Validate address input on form submit
        document.querySelector('form[name="frm-register"]').addEventListener('submit', (e) => {
          if (addressInput.value === 'Other') {
            e.preventDefault();
            alert('Please enter your address');
          }
          if (!customAddressInput.value && addressInput.value === '') {
           e.preventDefault();
           alert('Please select your address');
          }
        });

        const mobileInput = document.querySelector('input[name="user_mobile"]');
        const form = document.querySelector('form[name="frm-register"]');

        form.addEventListener('submit', (e) => {
          const mobileNumber = mobileInput.value;
          const mobileRegex = /^\d{10}$/; // matches exactly 10 digits
        
          if (!mobileRegex.test(mobileNumber)) {
            e.preventDefault();
            alert('Please enter a valid 10-digit Mobile number');
          }
        });
</script>

    <br>
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