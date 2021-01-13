<?php

    if (!empty($userId)) 
    {
        $notifTransaksi = $crud->eksekusiSQL("SELECT *FROM transaksi WHERE 
        id_user='$userId' AND baca_member='Belum dibaca' ORDER BY id_transaksi DESC");

        $hitungTransaksi = $crud->hitungData($notifTransaksi);


        if ($hitungTransaksi>0) 
        {
            $pesanTransaksi = "Transaksi sudah diproses";
            $angkaTransaksi = $hitungTransaksi;
            $linkTrans = "?hal=akun-respon&mode=dibaca";
        }
        else
        {
            $pesanTransaksi = "Belum ada Transaksi";
            $angkaTransaksi ="";
            $linkTrans = "#";
        }

       
    }

?>