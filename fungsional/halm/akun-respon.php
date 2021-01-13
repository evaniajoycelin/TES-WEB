<script src='./vendor/swal/swal.js'></script>
<?php

    $mau = $_GET['mode'];

    if ($mau=='edit') 
    {
        $nama   = $_POST['nama'];
        $alamat = $_POST['alamat'];
        $nohp   = $_POST['nohp'];
        $email  = $_POST['email'];
        $pass   = $_POST['password'];

        $namafoto= $_FILES['foto']['name'];
        $lokfoto = $_FILES['foto']['tmp_name'];


        if (empty($foto)) 
        {
            $link = "nama_user = '$nama', alamat = '$alamat', 
                 no_hp='$nohp', email='$email', password='$pass'";
        }
        else
        {
            $nmaFoto = uploadFoto($namafoto, $lokfoto);

            //$tujuan  = "./foto/$foto";

            //move_uploaded_file($lokfoto, $tujuan);

            $target = "./foto/$foto";

            unlink($target);

            
            //move_uploaded_file($lokfoto, '../foto/'.$foto);
            $link = "nama_user = '$nama', alamat = '$alamat', 
                 no_hp='$nohp', email='$email', password='$pass', foto='$nmaFoto'";
        }

        $tabel= "user";
        

        $ubah = $crud->ubahData($tabel, $link, "id_user", $userId);
        $cek  = $crud->cekQuery($ubah);

        if ($cek==1) 
        {
            //echo "$lokfoto kkk";
            pindahHalaman("akun&mode=data");
        } 
        else 
        {
            pesanALert("Tidak bisa diubah");
            pindahHalaman("akun&mode=data");
        }
        
    }
    elseif($mau=='ubah')
    {
        $ini = @$_GET['ini'];
        if ($ini=='alamat') 
        {
            $alamat = $_POST['alamat'];
            $link = "alamat='$alamat'";
            $ubah = $crud->ubahData("user", $link, "id_user", $userId);
        }
        elseif ($ini=='nohp') 
        {
            $nohp = $_POST['nohp'];
            $link = "no_hp='$nohp'";
            $ubah = $crud->ubahData("user", $link, "id_user", $userId);
        }
        elseif ($ini=='email') 
        {
            $email = $_POST['email'];
            $link = "email='$email'";
            $ubah = $crud->ubahData("user", $link, "id_user", $userId);
        }
        
        $cek  = $crud->cekQuery($ubah);

        if ($cek==1) 
        {
            //echo "$lokfoto kkk";
            pesanALert("Data telah diubah");
            pindahHalaman("akun-profile");
        } 
        else 
        {
            pesanALert("Tidak bisa diubah");
            pindahHalaman("akun-profile");
        }
    }
    elseif ($mau=='upload') 
    {
        //==
        $isi = $_GET['isi'];

        $namafoto= $_FILES['foto']['name'];
        $lokfoto = $_FILES['foto']['tmp_name'];


        /*if (empty($foto)) 
        {
            $link = "nama_user = '$nama', alamat = '$alamat', 
                 no_hp='$nohp', email='$email', password='$pass'";
        }
        else
        {*/
            $nmaFoto = uploadFoto("User", $lokfoto);

            //$tujuan  = "./foto/$foto";

            //move_uploaded_file($lokfoto, $tujuan);

            $target = "./foto/user/$isi";

            unlink($target);

            
            //move_uploaded_file($lokfoto, '../foto/'.$foto);
            $link = "foto='$nmaFoto'";
        //}

        $tabel= "user";
        

        $ubah = $crud->ubahData($tabel, $link, "id_user", $userId);
        $cek  = $crud->cekQuery($ubah);

        if ($cek==1) 
        {
            //echo "$lokfoto kkk";
            pindahHalaman("akun-profile");
        } 
        else 
        {
            pesanALert("Tidak bisa diubah");
            pindahHalaman("akun-profile");
        }
        //==
    }
    elseif ($mau=="preneur") 
    {
        //$m = @$_GET['mau'];
        //$i = @$_POST['k'];

        $nama   = $_POST['nama'];
        $tahun  = $_POST['tahun'];
        $bidang = $_POST['bidang'];
        $ig     = @$_POST['ig'];
        $fb     = @$_POST['fb'];
        $web    = @$_POST['web'];
        $omset  = $_POST['omset'];
        $jumkar  = $_POST['jumkar'];
        $deskripsi = $_POST['deskripsi'];

        

        $isi  = "NULL,'$nama', '$tahun', '$bidang', '$ig', '$fb', '$web', '$omset', '$jumkar', '$deskripsi', '$userId'";

        $perintah = $crud->tambahData("user_preneur", $isi);
        $eksekusi = $crud->cekQuery($perintah);

        if ($eksekusi==1) 
        {
           /* echo
            "
                <script>
                    alert('Mohon lanjutkan ke pembayaran');
                    window.location='?hal=konfirmasi-pembayaran&k=$i&mau=paket';
                </script>
            ";
            */
            echo
            "
            <script>
                //var lokasi = window.location='index.php';
                swal('Data Usaha Tersimpan!', 'Anda bisa melihat di menu Profile!', 'success')
                    .then((value)=> {
                        window.location='?hal=akun-profile';
                    })
            </script>
            ";
        } 
        else 
        {
            echo
            "
                <script>
                    alert('Gagal');
                    window.location='?hal=akun-membership';
                </script>
            ";
        }
        
    }
    elseif ($mau=="preneur_edit") 
    {
        //$m = @$_GET['mau'];
        //$i = @$_POST['k'];

        $idpe   = $_POST['idpe'];

        $nama   = $_POST['nama'];
        $tahun  = $_POST['tahun'];
        $bidang = $_POST['bidang'];
        $ig     = @$_POST['ig'];
        $fb     = @$_POST['fb'];
        $web    = @$_POST['web'];
        $omset  = $_POST['omset'];
        $jumkar  = $_POST['jumkar'];
        $deskripsi = $_POST['deskripsi'];

        $provinsi  = $_POST['provinsi'];
        $alamat    = $_POST['alamat'];
        $email    = $_POST['email'];
        $notelp    = $_POST['notelp'];

        
        

        $isi  = "
        
            `nama_bisnis`='$nama',
            `tahun_dirikan`='$tahun',
            `bidang_usaha`='$bidang',
            `akun_instagram`='$ig',
            `page_facebook`='$fb',
            `website_bisnis`='$web',
            `omset_bulanan`='$omset',
            `jumlah_karyawan`='$jumkar',
            `deskripsi_usaha`='$deskripsi'
        
        ";

        $perintah = $crud->ubahData("user_preneur", $isi, "id_userpreneur", $idpe);
        $eksekusi = $crud->cekQuery($perintah);

        if ($eksekusi==1) 
        {
           /* echo
            "
                <script>
                    alert('Mohon lanjutkan ke pembayaran');
                    window.location='?hal=konfirmasi-pembayaran&k=$i&mau=paket';
                </script>
            ";
            */
            echo
            "
            <script>
                //var lokasi = window.location='index.php';
                swal('Data Usaha Telah diubah!', 'Anda bisa melihat di menu Profile!', 'success')
                    .then((value)=> {
                        window.location='?hal=akun-profile';
                    })
            </script>
            ";
        } 
        else 
        {
            echo
            "
                <script>
                    alert('Gagal');
                    window.location='?hal=akun-profile';
                </script>
            ";
        }
        
    }
    elseif ($mau=='udahbaca') 
    {
        $ubahan = "baca_member='Sudah dibaca'";

        $idt = @$_GET['idT'];

        $ubahNotif = $crud->ubahData("transaksi", $ubahan, "id_transaksi", $idt);

        $cek = $crud->cekQuery($ubahNotif);

        if ($cek==1) 
        {
            echo
            "
               
                <script>
                //var lokasi = window.location='index.php';
                swal('Sudah diubah!', 'Ditandai sebagai sudah dibaca...!', 'success')
                    .then((value)=> {
                        window.location='?hal=akun-transaksi'
                    })
                </script>
                    
               
            ";
        } 
        else 
        {
            echo
            "
                <script>
                    alert('Gagal');
                    window.history.back();
                </script>
            ";
        }
        
    }
    elseif ($mau=='dibaca') 
    {
       

        $ubahNotif = $crud->eksekusiSQL("UPDATE transaksi SET baca_member='Sudah dibaca'
                    WHERE id_user='$userId'");

        $cek = $crud->cekQuery($ubahNotif);

        if ($cek==1) 
        {
           /* echo
            "
               
                <script>
                //var lokasi = window.location='index.php';
                swal('Sudah diubah!', 'Ditandai sebagai sudah dibaca...!', 'success')
                    .then((value)=> {
                        window.location='?hal=akun-transaksi'
                    })
                </script>
                    
               
            ";*/
            pindahHalaman("akun-transaksi");
        } 
        else 
        {
            echo
            "
                <script>
                    alert('Gagal');
                    window.history.back();
                </script>
            ";
        }
        
    }

?>