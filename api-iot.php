<?php
    include 'koneksi.php';

    date_default_timezone_set('Asia/Jakarta');
    $d = date("Y-m-d");
    $t = date("H:i:s");

    if(!empty(($_POST['ph']) && ($_POST['tds']) && ($_POST['suhu']) && ($_POST['turbidity'])))
    {
        $ph = $_POST['ph'];
        $tds = $_POST['tds'];
        $suhu = $_POST['suhu'];
        $turbidity = $_POST['turbidity'];
        
        // $ph = 7.5;
        // $tds = 500;
        // $suhu = 29;
        // $turbidity = 110;

            $sql = "INSERT INTO data_iot (tgl,jam,ph,tds,suhu,turbidity) VALUES ('".$d."','".$t."','".$ph."','".$tds."','".$suhu."','".$turbidity."')";

        if ($koneksi->query($sql) === TRUE) {
            echo "data tersimpan";
        } else {
            echo "Error: " . $sql . "<br>" . $koneksi->error;
        }
    } else {
        echo "Data gagal disimpan";
    }

    $koneksi->close();
?>