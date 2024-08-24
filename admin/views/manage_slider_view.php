<?php

// include_once("admin/class/adminback.php");


$obj = new adminback();

if (!isset($_SESSION['admin_id'])) {
    header('location:admin_login.php');
    exit;
}

$users = $obj->get_all_users();

include_once("includes/head.php");
?>

<body class="biolife-body">
    <!-- Preloader -->
    <!-- <?php include_once("includes/preloader.php"); ?> -->

    <!-- HEADER -->
    <!-- <header id="header" class="header-area style-01 layout-03">
        <?php include_once("includes/header_top.php"); ?>
        <?php include_once("includes/header_middle.php"); ?>
        <?php include_once("includes/header_bottom.php"); ?>
    </header> -->

    <!-- Page Contain -->
    <div class="page-contain">
        <!-- Main content -->
        <div id="main-content" class="main-content">
            <div class="container">
                <h2 class="text-center">Registered Users</h2>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th>Mobile</th>
                            <th>Address</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($users as $user) { ?>
                            <tr>
                                <td><?php echo $user['user_id']; ?></td>
                                <td><?php echo $user['user_firstname']; ?></td>
                                <td><?php echo $user['user_lastname']; ?></td>
                                <td><?php echo $user['user_email']; ?></td>
                                <td><?php echo $user['user_mobile']; ?></td>
                                <td><?php echo $user['user_address']; ?></td>
                                <td>
                                    <!-- <a href="admin_edit_user.php?user_id=<?php echo $user['user_id']; ?>" class="btn btn-primary">Edit</a> -->
                                    <a href="admin_delete_user.php?user_id=<?php echo $user['user_id']; ?>" class="btn btn-danger">Delete</a>
                                </td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- FOOTER -->
    <!-- <?php include_once("includes/footer.php"); ?> -->

    <!--Footer For Mobile-->
    <!-- <?php include_once("includes/mobile_footer.php"); ?> -->

    <!-- Scroll Top Button -->
    <a class="btn-scroll-top"><i class="biolife-icon icon-left-arrow"></i></a>

    <?php include_once("includes/script.php"); ?>
</body>
</html>