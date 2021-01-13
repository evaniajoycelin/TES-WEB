 <!-- Begin Page Content -->
 <div class="container-fluid">

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


                     <?php

                        $perintah = $isi->eksekusiSQl("SELECT *FROM user_preneur 
                                                        INNER JOIN user ON user.id_user=user_preneur.id_user
                                                        ORDER BY user_preneur.id_userpreneur DESC");
                        $hitung   = $isi->hitungData($perintah);

                        if ($hitung == 0) {
                            pesanKosong();
                        } else {
                            echo
                                "
                           <div class='table-responsive'>
                                <table class='table table-bordered' id='dataTable' width='100%' cellspacing='0'>
                                    <thead class='thead-dark'>
                                        <tr>
                                            <th>No.</th>
                                            <th>Nama Bisnis</th>
                                            <th>Tahun Mulai</th>
                                            <th>Bidang</th>
                                            <th>Pemilik</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                            ";



                            $no = 1;
                            foreach ($perintah as $a) {
                                $nama   = $a['nama_bisnis'];
                                $tahun  = $a['tahun_dirikan'];
                                $bidang = $a['bidang_usaha'];
                                //$email  = $a['email'];
                                $user   = $a['nama_user'];
                                $foto   = $a['foto'];
                                $hak    = $a['hak_akses'];

                                $ius    = $a['id_user'];
                                $idUneur = $a['id_userpreneur'];

                                
                                //$email  = $a['email'];
                                $user   = $a['nama_user'];
                                //$foto   = $a['foto'];
                                $hak    = $a['hak_akses'];

                                $ius    = $a['id_user'];

                                $ig     = $a['akun_instagram'];
                                $fb     = $a['page_facebook'];

                                $web    = $a['website_bisnis'];
                                $omset  = $a['omset_bulanan'];
                                $jumkar = $a['jumlah_karyawan'];
                                $deskrip = $a['deskripsi_usaha'];

                                if ($foto == 'Kosong') {
                                    $gambar = "<img class='rounded-circle' src='../img/nofoto.png' width='50' height='50'>";
                                } else {
                                    $tujuan = "../foto/user/$foto";
                                    $gambar =
                                        "   <a data-fancybox='gallery' href='$tujuan' data-caption='$nama'>
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
                                                $nama
                                            </td>
                                            <td>$tahun</td>
                                            <td>$bidang</td>
                                            <td>$gambar $user</td>
                                            
                                            
                                            <td>
    

                                                <center>
                                                    <div class='btn-group' role='group'>
                                                        <button id='aksi' type='button' class='btn btn-secondary btn-sm dropdown-toggle' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                                                        Aksi
                                                        </button>
                                                        <div class='dropdown-menu' aria-labelledby='aksi'>
                                                            <a class='dropdown-item bg-success text-white' data-fancybox data-src='#bisnis$idUneur'>View</a>
                                                            <a class='dropdown-item bg-danger text-white' href='?hal=member-respon&id=$ius&mau=banned'>Hapus</a>
                                                        </div>
                                                    </div>
                                                </center>
                                            </td>
                                        </tr>
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

 <div id="bisnis<?php echo $idUneur; ?>" style="font-size: 16px; width:700px; display:none; color:black;">

     <div class="row">
         <!--<div class="col-md">
            <center>
                <img src="<?php echo $gambarS; ?>" width="100%" height="500" alt="<?php echo $namatrans; ?>">
            </center>
        </div>-->

         <div class="col-md">
             <h3><?php echo $nama; ?></h3>
             <h4>Rincian:</h4>

             <p>Bergerak di Bidang <?php echo $bidang; ?></p>
             <p>Berdiri sejak <?php echo $tahun; ?></p>
             <?php

                if ($ig == NULL) {
                    $ig = "-";
                }
                if ($fb == NULL) {
                    $fb = "-";
                }
                if ($web == NULL) {
                    $web = "-";
                }


                echo
                    "
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

                ?>


         </div>
     </div>
 </div>