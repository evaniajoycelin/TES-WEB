<?php
include './fungsional/konfig/headerUdahLogin.php';
?>
<!--
  <header class="masthead gambar-bgUser" style="margin-top:0px;">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <h1>Selamat Datang</h1>
          <p>
            Lorem ipsum dolor sit amet consectetur, adipisicing elit. Facere repellendus excepturi, placeat molestias molestiae rem iusto odio magni at sapiente voluptatum dolorum illum, optio qui minus aliquam repudiandae earum autem!
          </p>
        </div>

        <div class="col-md-6">
          <img src="./img/laptop.png" alt="Yeah" width="100%">
        </div>
      </div>
    </div>
  </header>
-->

<?php

/*$tgl = date('Y-m-d');

    $tglPost = "2020-02-10";

    $berlaku = date('Y-m-d',strtotime('+30 days', strtotime($tglPost)));

    $tglExp = date("Y-m-d", $berlaku);

    $tgl1    = "2018-12-16"; // menentukan tanggal awal
    $tgl2    = date('Y-m-d', strtotime('+ 1 years', strtotime($tgl1))); // penjumlahan tanggal sebanyak 7 hari
   // echo $tgl2; // cetak tanggal

   if ($tgl==$tgl2) 
   {
     $pesan = "Habis";
   }
   

    echo
    "
      <div style='margin-top:100px;'>
        $tgl <br>
        $tglPost <br>
        $berlaku <br>
        $tglExp <br>
        $tgl2 $pesan
      </div>
    ";
   */
$statuser = $crud->eksekusiSQl("SELECT *FROM user_status
                                                    INNER JOIN paket_member
                                                      ON user_status.id_paket = paket_member.id_paket
                                                    WHERE id_user='$userId'");

foreach ($statuser as $e) {
  $jumlahKelas = $e['jumlah_kelas'];
  $namaPaket   = $e['nama_paket'];
}

?>

<section class="lapak-putih" style="margin-top: 0;">

  <div class="container lapak-putih" style="padding: 20px; margin-top:100px;">

    <div class="row">
      <div class="col-md-2">

        <?php
        include './fungsional/data/membership.php';
        ?>
      </div>

      <div class="col-md-10">
        <h1 style="margin: 30px; margin-bottom:0px;"><?php echo "$namauser"; ?></h1>

        <hr>

        <div style="margin: 30px;">
          <?php

          echo
            "
                     
                      <table>
                        <tr style='padding:15px;'>
                          <td width='24%'>Nama Lengkap</td>
                          <td>:</td>
                          <td style='padding-left:15px;' width='75%'>$namauser</td>
                        </tr>
                        <tr style='padding:15px;'>
                          <td width='24%'>Tanggal Lahir</td>
                          <td>:</td>
                          <td style='padding-left:15px;' width='75%'>$lahir</td>
                        </tr>
                        <tr style='padding:15px;'>
                          <td width='24%'>Jenis Kelamin</td>
                          <td>:</td>
                          <td style='padding-left:15px;' width='75%'>$jekel</td>
                        </tr>
                        <tr style='padding:15px;'>
                          <td width='24%'>Alamat</td>
                          <td>:</td>
                          <td style='padding-left:15px;' width='75%'>
                            $alamat <a data-toggle='modal' data-target='#editAlamat' class='badge badge-warning' href='#'>Edit</a>
                          </td>
                        </tr>
                        
                        <tr style='padding:15px;'>
                          <td width='24%'>No. Handphone</td>
                          <td>:</td>
                          <td style='padding-left:15px;' width='75%'>
                            $nohp <a data-toggle='modal' data-target='#editNohp' class='badge badge-warning' href='#'>Edit</a>
                          </td>
                        </tr>
                        <tr style='padding:15px;'>
                          <td width='24%'>E-Mail</td>
                          <td>:</td>
                          <td style='padding-left:15px;' width='75%'>
                            $email <a data-toggle='modal' data-target='#editEmail' class='badge badge-warning' href='#'>Edit</a>
                          </td>
                        </tr>

                       

                      </table>
                    ";


          echo
            "
                    <hr>
                      
                      <table>
                        <tr style='padding:15px; padding-top:15px;'>
                          <td width='24%'><h4>Membership :</h4></td>
            
                          <td style='padding-left:15px;' width='75%'>
                            <h4><font color='darkorange'>$namaPaket</font></h4> 
                            <a class='badge badge-success' href='?hal=akun-membership'>Upgrade</a>
                          </td>
                        </tr>
                      </table>

                      <br>
                    
                     
                    ";

          $perintah = $crud->eksekusiSQl("SELECT *FROM user_preneur 
                    INNER JOIN user ON user.id_user=user_preneur.id_user
                    WHERE user.id_user='$iduser'
                    ORDER BY user_preneur.id_userpreneur DESC");
          $hitung   = $crud->hitungData($perintah);

          if ($hitung == 0) {
            //pesanKosong();
            include 'akun-preneur.php';
          } else {
            echo
              "
                           <div class='table-responsive'>
                                <table class='table' id='dataTable' width='100%' cellspacing='0'>
                                    <thead class='bg-warning'>
                                        <tr>
                                            <th>No.</th>
                                            <th>Nama Bisnis</th>
                                            <th>Tahun Mulai</th>
                                            <th>Bidang</th>
                                           
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                            ";



            $no = 1;
            foreach ($perintah as $a) {
              $idUneur = $a['id_userpreneur'];
              $nama   = $a['nama_bisnis'];
              $tahun  = $a['tahun_dirikan'];
              $bidang = $a['bidang_usaha'];
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


              $prov = $a['nama_provinsi'];



              //$jumset = formatRupiah($omset);


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
                                            
                                            
                                            
                                            <td>
    

                                                <center>
                                                    <div class='btn-group' role='group'>
                                                        <button id='aksi' type='button' class='btn btn-secondary btn-sm dropdown-toggle' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                                                        Aksi
                                                        </button>
                                                        <div class='dropdown-menu' aria-labelledby='aksi'>
                                                            <a class='dropdown-item bg-success text-white' data-fancybox data-src='#bisnis$idUneur' href='javascript:;'>View</a>
                                                            <a class='dropdown-item bg-danger text-white' href='?hal=akun-bisnis-edit&idpe=$idUneur'>Edit</a>
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

  <div id="bisnis<?php echo $idUneur; ?>" style="font-size: 16px; width:700px; display:none;">

    <div class="row">
      <!--<div class="col-md">
            <center>
                <img src="<?php echo $gambarS; ?>" width="100%" height="500" alt="<?php echo $namatrans; ?>">
            </center>
        </div>-->

      <div class="col-md">
        <h3><?php echo $nama; ?></h3>
        <br>
        <h5>Profil Bisnis:</h5>

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
                  Omset Bulanan : $omset
                </p>

                <p>
                  Jumlah Karyawan : $jumkar
                </p>

                <hr>

                <h5>Kontak Bisnis:</h5>
                
                <p>
                  Alamat Bisnis: ...
                </p>

                <p>
                  Provinsi : $prov
                </p>

                <p>
                  No. Telp: ...
                </p>

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

                <br>
                <h5>Deskripsi Usaha:</h5>

                <p>
                  $deskrip
                </p>

              ";

        ?>


      </div>
    </div>
  </div>



</section>

<!-- Modal -->
<div class="modal fade" id="editUp" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit Profil</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

        <form method="post" action="?hal=akun-respon&mode=edit" enctype="multipart/form-data">
          <p>
            <input value="<?php echo $namauser; ?>" class="form-control" type="text" name="nama" placeholder="Nama Lengkap" required>
          </p>
          <p>
            <textarea id="my-textarea" class="form-control" name="alamat" placeholder="Alamat" rows="3"><?php echo $alamat; ?></textarea>
          </p>
          <p>
            <input value="<?php echo $nohp; ?>" class="form-control" type="number" name="nohp" placeholder="No. Handphone" required>
          </p>
          <p>
            <input value="<?php echo $email; ?>" class="form-control" type="email" name="email" placeholder="E-Mail" required>
          </p>
          <p>
            <input value="<?php echo $passw; ?>" class="form-control" type="password" name="password" placeholder="Password" required>
          </p>
          <p>
            <input class="form-control" type="file" name="foto" placeholder="Password">
          </p>
          
          <p>
            <input type="submit" value="SIMPAN" class="btn btn-primary">
          </p>
        </form>

      </div>

    </div>
  </div>
</div>

<!-- Modal alamat-->
<div class="modal fade" id="editAlamat" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit Alamat</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

        <form method="post" action="?hal=akun-respon&mode=ubah&id=<?php echo $iduser; ?>&ini=alamat" enctype="multipart/form-data">

          <div class="form-group">
            <label for="my-textarea">Alamat</label>
            <textarea id="my-textarea" class="form-control" name="alamat" rows="3" required><?php echo $alamat; ?></textarea>
          </div>

          <p>
            <input type="submit" value="SIMPAN" class="btn btn-primary">
          </p>
        </form>

      </div>

    </div>
  </div>
</div>

<!-- Modal no. hp-->
<div class="modal fade" id="editNohp" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit No. Handphone</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

        <form method="post" action="?hal=akun-respon&mode=ubah&id=<?php echo $iduser; ?>&ini=nohp" enctype="multipart/form-data">

          <p>
            <input value="<?php echo $nohp; ?>" class="form-control" type="number" name="nohp" placeholder="Masukkan No. Handphone" required>
          </p>

          <p>
            <input type="submit" value="SIMPAN" class="btn btn-primary">
          </p>
        </form>

      </div>

    </div>
  </div>
</div>

<!-- Modal E-mail-->
<div class="modal fade" id="editEmail" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit E-Mail</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

        <form method="post" action="?hal=akun-respon&mode=ubah&id=<?php echo $iduser; ?>&ini=email" enctype="multipart/form-data">

          <p>
            <input value="<?php echo $email; ?>" class="form-control" type="email" name="email" placeholder="E-Mail" required>
          </p>

          <p>
            <input type="submit" value="SIMPAN" class="btn btn-primary">
          </p>
        </form>

      </div>

    </div>
  </div>
</div>



<?php
include './fungsional/konfig/footer.php';
?>