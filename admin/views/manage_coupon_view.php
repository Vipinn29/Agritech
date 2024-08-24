<?php 
    $show_coupon = $obj->show_coupon();
    
    if(isset($_GET['prostatus'])){
        $id = $_GET['id'];
        if($_GET['prostatus']=="delete"){
         $del_msg = $obj->delete_coupon($id);
     }
    }
?>

<h2>Manage Coupon</h2>

<table class="table table-bordered table-striped">
    <thead>
        <tr>
            <th>Coupon Id</th>
            <th>Coupon Code</th>
            <th>Coupon Description</th>
            <th>Coupon Discount</th>
            <th>Action</th>
        </tr>
    </thead>

    <tbody>
    <h4>
        <?php 
        if(isset($del_msg)){
            echo "{$del_msg}";
        }
        ?>
    </h4>

            <?php 
               while($result = mysqli_fetch_assoc($show_coupon) ){
            ?>
        <tr>
            <td> <?php echo $result['cupon_id'] ?></td>
            <td> <?php echo $result['cupon_code'] ?></td>
            <td> <?php echo $result['description'] ?></td>
            <td> <?php echo $result['discount'] ?></td>
            <td>
                <button class="btn btn-secondary" ><a href="?prostatus=delete&&id=<?php echo $result['cupon_id'] ?>">Delete</a> </button> 
                <!-- <a href=".php?prostatus=edit&&id=<?php echo $result['cupon_id'] ?>">Edit</a>  -->
                <br>  
            </td>
           
        </tr>

        <?php }?>
    </tbody>
</table>