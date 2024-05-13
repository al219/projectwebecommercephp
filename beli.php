<?php
    require "koneksi.php";

    session_start();
    $nama = $_POST['nama'];
    $alamat = $_POST['alamat'];

    $cart = serialize($_SESSION['cart']);

    $query = mysqli_query($con, "INSERT INTO transaksi (tanggal, nama, alamat, cart) VALUES (CURRENT_DATE, '$nama', '$alamat', '$cart')");

    if (mysqli_errno($con)) {
        echo mysqli_error($con);
        die();
    }
    header("location:payment.php");
?>