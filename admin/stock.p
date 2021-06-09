<?php

include('connection.php');
if(isset($_GET['id']))
{
        $sqlu = "UPDATE product SET in_stock = '1' WHERE id = '".$_GET['id']."'";
        $con->query($sqlu);
        header('Location:detail.php?message=Stock Shown Successfully');
          unset($_GET['suc']);

}
if(isset($_GET['id2']))
{
        $sqlu = "UPDATE product SET in_stock = '0' WHERE id = '".$_GET['id2']."'";
        $db->query($sqlu);
        header('Location:detail.php?message=Stock HIDDEN');
         unset($_GET['dan']);
}
?>
