<?php

    $mau = @$_GET['mau'];
    
    if ($mau=='tambah') 
    {
        $nama = addslashes($_POST['nama']);
        $link =  addslashes($_POST['link']);
        $desk =  $_POST['deskripsi'];
        $idkel= $_POST['idkelas'];


        $fotonm = @$_FILES['foto']['name'];
        $lokasi = @$_FILES['foto']['tmp_name'];

        if (!empty($link)) 
        {
            $isian     = "NULL, '$nama', '$desk', '$link', '$idkel', 'Kosong'";
        } 
        else  
        {
            
            $newe = uploadKursus("kursus", $lokasi);

            $isian     = "NULL, '$nama', '$desk', 'Kosong', '$idkel', '$newe'";
        }
        

        
 
        

        $perintah = $isi->tambahData("kursus", $isian);
        $eksekusi = $isi->cekQuery($perintah);

        if ($eksekusi==1) 
        {
           pesanALert("Data tersimpan");
           pindahHal('?hal=kursus-data');
        } 
        else 
        {
            pesanALert("Gagal tersimpan");
            //pindahHal('?hal=event-tambah');
        }
        
    }
    elseif ($mau=="hapus") 
    {
        $ide = @$_GET['ide'];
        $foto= @$_GET['ft'];

        $tujuan = "../foto/kursus/$foto";

        $perintah = $isi->hapusData("kursus", "id_kursus", "$ide");

        $eksekusi = $isi->cekQuery($perintah);

        if ($eksekusi==1) 
        {
           unlink($tujuan);
           pesanALert("Data terhapus");
           pindahHal('?hal=kursus-data');
        } 
        else 
        {
            pesanALert("Gagal terhapus");
            //pindahHal('?hal=event-tambah');
        }
    }
    else
    {
        $id   = $_POST['id'];
        $nama = addslashes($_POST['nama']);
        $link =  addslashes($_POST['link']);
        $desk = $_POST['deskripsi'];
        $idkel= $_POST['idkelas'];

       // $idUser = $userIdnya;

        //$tgl    = date('Y-m-d');

        //$fotonm = $_FILES['foto']['name'];
        //$lokasi = $_FILES['foto']['tmp_name'];

        /*if (!empty($fotonm)) 
        {
            $k= $_GET['k'];
            $l= base64_encode($k);

            $tujuan = "../foto/$l";
            $newe = uploadFoto($fotonm, $lokasi);

            //$isian     = "NULL, '$nama', '$tgl', '$desk', '$newe', '$idUser'";
            $isian     = "nama_event='$nama', deskripsi='$desk', foto_event='$newe'";
        } 
        else 
        {
            //$isian     = "NULL, '$nama', '$tgl', '$desk', 'Kosong', '$idUser'";
            $isian = "nama_event='$nama', deskripsi='$desk'";
        }*/
        
        $isian = "nama_kursus='$nama', deskripsi='$desk', link_video='$link', id_kelas='$idkel'";

        $perintah = $isi->ubahData("kursus", $isian, "id_kursus", $id);
        $eksekusi = $isi->cekQuery($perintah);

        if ($eksekusi==1) 
        {
           pesanALert("Data sudah diubah");
           pindahHal('?hal=kursus-data');
        } 
        else 
        {
            pesanALert("Gagal tersimpan $idkel");
            //pindahHal('?hal=event-tambah');
        }
    }



?>