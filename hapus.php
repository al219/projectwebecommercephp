<?php
    session_start();
    include "koneksi.php";
    $id = $_GET["id"];
    unset($_SESSION["cart"][$id]);
    header("location:index.php");
?>