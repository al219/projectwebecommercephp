<?php
     $no = $_GET['no'];
    
    session_start();
    if (isset($no)) {
        unset($_SESSION['cart'][$no - 1]);
        $_SESSION['cart'] = array_values($_SESSION['cart']);
        header("Location: cart.php");
        die();
    }
    $_SESSION['cart'] = [];
    header("Location: cart.php");
?>