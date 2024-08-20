<?php
session_start();

if (isset($_POST['action']) && $_POST['action'] == 'update_quantity') {
    $index = $_POST['index'];
    $quantity = $_POST['quantity'];

    // Update the quantity in the session
    $_SESSION['cart'][$index]['quantity'] = $quantity;

    // Recalculate the subtotal for this product
    $_SESSION['cart'][$index]['total'] = $_SESSION['cart'][$index]['pdt_price'] * $quantity;

    // Optionally, you could update the subtotal and total here as well
    $_SESSION['subtotal'] = 0;
    foreach ($_SESSION['cart'] as $item) {
        $_SESSION['subtotal'] += $item['total'];
    }

    echo json_encode(['status' => 'success']);
}
?>
