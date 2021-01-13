 <!-- Begin Page Content -->
 <div class="container-fluid teks12">

     <!-- Page Heading -->
     <div class="d-sm-flex align-items-center justify-content-between mb-4">
         <h1 class="h3 mb-0 text-gray-800">Data Member</h1>

     </div>


     <!-- Content Row -->

     <div class="row">

         <!-- Area Chart -->
         <div class="col-xl-12">

             <div class="card shadow mb-4">
                 <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                     <h6 class="m-0 font-weight-bold text-primary">Data Semua Member</h6>
                 </div>

                 <div class="card-body">
                     <a class='btn btn-primary' href='?hal=member-tambah'>Tambah</a>
                     <br><br>

                     <?php

                        $idm = @$_GET['idm'];

                        if (empty($idm)) {
                            $perintah = $isi->eksekusiSQl("SELECT *FROM user 

                                
                            
                                WHERE hak_akses='Member'  ORDER BY id_user DESC");
                        } else {

                            $perintah = $isi->eksekusiSQl("SELECT *FROM user WHERE hak_akses='Member' AND id_user='$idm'  ORDER BY id_user DESC");
                        }


                        $hitung   = $isi->hitungData($perintah);

                        if ($hitung == 0) {
                            pesanKosong();
                        } else {
                            echo
                                "
                           <div class='table-responsive'>
                                <table class='table table-bordered table-hover' id='dataTable' width='100%' cellspacing='0'>
                                    <thead class='thead-dark'>
                                        <tr>
                                            <th>No.</th>
                                            <th>Nama User</th>
                                            <th>Alamat</th>
                                            <th>E-Mail</th>
                                            <th>No. Handphone</th>
                                            <th>Jenis Membership</th>
                                            <th>Nama Bisnis</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                            ";



                            $no = 1;
                            foreach ($perintah as $a) {
                                $nama   = $a['nama_user'];
                                $alamat = $a['alamat'];
                                $email  = $a['email'];
                                $nohp   = $a['no_hp'];
                                $foto   = $a['foto'];
                                $hak    = $a['hak_akses'];

                                //$bisnis = $a['nama_bisnis'];

                                $ius    = $a['id_user'];

                                $statusEr = $isi->eksekusiSQl("SELECT *FROM user_status 
                                                            INNER JOIN user ON user_status.id_user = user.id_user
                                                            INNER JOIN paket_member ON user_status.id_paket = paket_member.id_paket 
                                                            WHERE user.id_user='$ius'");
                                foreach ($statusEr as $o) {
                                    $namaPaket = $o['nama_paket'];
                                }

                                $userPreneur = $isi->eksekusiSQL("SELECT *FROM user_preneur WHERE id_user='$ius'");

                                $jumPreneur = $isi->hitungData($userPreneur);

                                if ($jumPreneur==0) 
                                {
                                    $usaha = "Belum ada";
                                    $isiUsaha = "<h3>Info Usaha belum diinput</h3>";
                                } 
                                else 
                                {
                                    foreach ($userPreneur as $z) {
                                        $usaha = $z['nama_bisnis'];
                                        //$nama   = $a['nama_bisnis'];
                                        $tahun  = $z['tahun_dirikan'];
                                        $bidang = $z['bidang_usaha'];
                                        //$email  = $z['email'];
                                        //$user   = $z['nama_user'];
                                        //$foto   = $z['foto'];
                                       // $hak    = $z['hak_akses'];
    
                                        //$ius    = $z['id_user'];
                                        //$idUneur = $z['id_userpreneur'];
    
                                        
                                        //$email  = $z['email'];
                                        //$user   = $z['nama_user'];
                                        //$foto   = $z['foto'];
                                        //$hak    = $z['hak_akses'];
    
                                        $ius    = $z['id_user'];
    
                                        $ig     = $z['akun_instagram'];
                                        $fb     = $z['page_facebook'];
    
                                        $web    = $z['website_bisnis'];
                                        $omset  = $z['omset_bulanan'];
                                        $jumkar = $z['jumlah_karyawan'];
                                        $deskrip = $z['deskripsi_usaha'];
    
                                        if ($ig == NULL) {
                                            $ig = "-";
                                        }
                                        if ($fb == NULL) {
                                            $fb = "-";
                                        }
                                        if ($web == NULL) {
                                            $web = "-";
                                        }
    
    
                                        
                                            $isiUsaha=
                                            "
                                            <h3>$usaha</h3>
                                            <h4>Rincian:</h4>
    
                                            <p>$bidang</p>
                                            <p>$tahun</p>
                                            
                                                <p>
                                                    Akun Instagram: $ig
                                                </p>
                                                <p>
                                                    Page Facebook : $fb
                                                </p>
                                                <p>
                                                    Website : $web
                                                </p>
    
                                                <hr>
    
                                                <p>
                                                Omset Bulanan : $omset
                                                </p>
    
                                                <p>
                                                Jumlah Karyawan : $jumkar
                                                </p>
    
                                                <h5>Deskripsi Usaha:</h5>
    
                                                <p>
                                                $deskrip
                                                </p>
                                            ";
                                        
    
                                    }   
                                }
                                

                                if ($foto == 'Kosong') {
                                    $gambar = "<img class='rounded-circle' src='../img/nofoto.png' width='50' height='50'>";
                                    $tujuan = "../img/nofoto.png";
                                } else {
                                    $tujuan = "../foto/user/$foto";
                                    $gambar =
                                        "   <a data-fancybox href='$tujuan' data-caption='$nama'>
                                            <img class='rounded-circle' src='$tujuan' width='50' height='50'>
                                        </a>
                                    ";
                                }

                                


                                echo
                                    "
                                    <tbody>
                                        <tr>
                                            <td align='center'>$no</td>
                                            <td>
                                                <center>
                                                    $gambar 
                                                    <br> <br>
                                                    <p>$nama</p>
                                                </center>
                                            </td>
                                            <td>$alamat</td>
                                            <td>$email</td>
                                            <td>$nohp</td>
                                            
                                            <td>$namaPaket</td>
                                            <td>$usaha</td>
                                            <td>
    

                                                <center>
                                                    <div class='btn-group' role='group'>
                                                        <button id='aksi' type='button' class='btn btn-secondary btn-sm dropdown-toggle' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                                                        Aksi
                                                        </button>
                                                        <div class='dropdown-menu bg-success' aria-labelledby='aksi'>
                                                            <a data-fancybox class='dropdown-item' data-src='#member$ius' href='javascript:;'>View</a>
                                                            <a class='dropdown-item' href='?hal=member-edit&id=$ius&mau=edit'>Edit</a>
                                                            <a class='dropdown-item' href='?hal=member-respon&id=$ius&mau=hapus'>Hapus</a>
                                                        </div>
                                                    </div>
                                                </center>
                                            </td>
                                        </tr>

                                    
                                        <div class='container' style='display: none; font-size:14px; width:800px;' id='member$ius'>
                                            <div class='row'>
                                                <div class='col-md'>
                                                    <center>
                                                        <img src='$tujuan' width='100%' height='270'>
                                                    </center>
                                                </div>
                                                <div class='col-md'>
                                                    <h1 class='h3 mb-0 text-gray-800'>Data Member</h1>
                                                    <br>
                                                    <dl>
                                                        <dd><b>Nama Member</b> : $nama</dd>
                                                        <dd><b>Alamat Tinggal</b> : $alamat</dd>
                                                        <dd><b>E-mail</b> : $email</dd>
                                                        <dd><b>No. Handphone</b> : $nohp</dd>
                                                        <dd><b>Status Membership</b> : $namaPaket</dd>
                                                        <dd>
                                                            <a class='btn btn-warning' href='?hal=member-edit&id=$ius&mau=edit'>Edit Profil Member</a>
                                                            <a class='btn btn-danger' href='?hal=member-respon&id=$ius&mau=hapus'>Hapus Member</a>
                                                        </dd>
                                                    </dl>
                        
                                                    
                                                </div>
                                            </div>

                                            <hr>

                                            $isiUsaha

         
                                        </div>
                                    
                                        
                                ";
                                $no++;

                                
                            }



                            echo
                                "
                                    </tbody>
                                </table>
                            </div>

                            
                           ";
                        }

                        ?>
                 </div>
             </div>



         </div>


     </div>


 </div>
 <!-- /.container-fluid -->
 
