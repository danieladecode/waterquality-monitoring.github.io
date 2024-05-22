<?php

$dbhost = 'localhost';
$dbusername = "root";
$dbpassword = "";
$dbname = "id22044461_simkua_iot";

$koneksi = mysqli_connect($dbhost, $dbusername, $dbpassword, $dbname);
if (!$koneksi) {
    die("Koneksi gagal: " . mysqli_connect_error());
}