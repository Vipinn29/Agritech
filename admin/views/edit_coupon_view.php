<?php
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $coupon = $obj->edit_coupon($id);
    // display the coupon details in a form for editing
    ?>
    <form>
        <label>Coupon Code:</label>
        <input type="text" value="<?php echo $coupon['cupon_code'] ?>" />
        <br />
        <label>Coupon Description:</label>
        <input type="text" value="<?php echo $coupon['description'] ?>" />
        <br />
        <label>Coupon Discount:</label>
        <input type="text" value="<?php echo $coupon['discount'] ?>" />
        <br />
        <input type="submit" value="Save Changes" />
    </form>
    <?php
} else {
    echo "No coupon ID provided";
}
?>