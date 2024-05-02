<?php
    session_start();
    include "koneksi.php";
    $tg = date("Y:m:d");
    $sql = "INSERT INTO tbl_transaksi(tanggal) VALUES('$tg')";
    $query = mysqli_query($konek, $sql);
    $id_t = mysqli_insert_id($konek);
    foreach($_SESSION["cart"] as $cart => $val){
        $sql = "INSERT INTO tbl_detail(id_transaksi, id_produk,jumlah) VALUES(".$id_t.",".$cart.",".$val["jumlah"].")";
        $query = mysqli_query($konek, $sql);
    }
    unset($_SESSION["cart"]);
    header("location: cart.php");
?>