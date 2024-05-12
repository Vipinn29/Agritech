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

<body>
    <h2>Track Order</h2>
    <form method="post" action="">
        <label for="order_id">Order ID:</label><br>
        <input type="text" id="order_id" name="order_id"><br><br>
        <label for="customer_name">Your Name:</label><br>
        <input type="text" id="customer_name" name="customer_name"><br><br>
        <input type="submit" name="submit" value="Track Order">
    </form>
    <br>

    <?php
    // Check if the form is submitted
    if(isset($_POST['submit'])) {
        // Retrieve order ID and customer name from the form
        $order_id = $_POST['order_id'];
        $customer_name = $_POST['customer_name'];

        // Simulate checking for the order details in a hypothetical system
        // You can replace this with actual logic to retrieve order information from your system
        $order_found = false;
        $order_status = '';

        // Simulated order data
        $orders = array(
            array("id" => "123456", "name" => "John Doe", "status" => "Order received"),
            array("id" => "789012", "name" => "Jane Smith", "status" => "Order in transit"),
            array("id" => "345678", "name" => "Alice Johnson", "status" => "Order delivered")
        );

        // Check if the provided order ID and customer name match any order in the simulated data
        foreach($orders as $order) {
            if($order['id'] == $order_id && $order['name'] == $customer_name) {
                $order_found = true;
                $order_status = $order['status'];
                break;
            }
        }

        // Display order status if found, otherwise show a message
        if($order_found) {
            echo "<p>Order Status for Order ID $order_id, Name $customer_name: $order_status</p>";
        } else {
            echo "<p>No orders found matching Order ID $order_id and Name $customer_name</p>";
        }
    }
    ?>

</body>
</html>
