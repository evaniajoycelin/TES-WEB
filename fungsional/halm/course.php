<?php
    include './fungsional/konfig/header.php';
    $kursus = $crud->eksekusiSQl("SELECT *FROM info 
                                        
    WHERE jenis_info='Course'
    ");
    foreach ($kursus as $ev) {

    $foto  = $ev['foto_info'];
    $tujuanHeader = "./foto/$foto";
    $jenis = $ev['jenis_info'];
    $desk = $ev['deskripsi'];


    }

    echo
    "
      <style>
        .gambar-bg
        {
          background-image:url('$tujuanHeader');
        }
      </style>
    ";
?>

  <header class="masthead gambar-bg text-center text-white ">
    <div class="masthead-content">
      <div class="container">
        <h1 class="masthead-heading mb-0"><?php echo $jenis;?></h1>
        <h5><?php echo $desk;?></h5>
       
      </div>
    </div>
    <div class="bg-circle-1 bg-circle"></div>
    <div class="bg-circle-2 bg-circle"></div>
    <div class="bg-circle-3 bg-circle"></div>
    <div class="bg-circle-4 bg-circle"></div>
  </header>

  <section>
    <div class="container" style="padding: 70px;">
       

        <!--
        <div class="card kartu" style="width: 18rem; display:inline-block;">
            <a href="#">
                <img class="card-img-top" src="img/kopi.jpg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                </div>
            </a>
        </div>
        -->
        <?php

          $statuser = $crud->eksekusiSQl("SELECT *FROM user_status
                                            INNER JOIN paket_member
                                              ON user_status.id_paket = paket_member.id_paket
                                           WHERE id_user='$userId'");

          foreach ($statuser as $e) 
          {
            $jumlahKelas = $e['jumlah_kelas'];
            $namaPaket   = $e['nama_paket'];
            //$carPak = $crud->eksekusiSQL("SELECT *FROM paket_membership WHERE nama_paket='$namaPaket'");
          }

          echo
          "
            <h1>$namaPaket</h1>
            <h4>Jumlah Kelas : $jumlahKelas Kelas</h4>
            
          ";
         
                
          $perintah = $crud->eksekusiSQl("SELECT *FROM kelas LIMIT $jumlahKelas");
          $hitung   = $crud->hitungData($perintah);

          if ($hitung==0) 
          {
              pesanKosong();
          }
          else
          {
              

            // $tampilin = $crud->tampilData("user");

            $no=1;
            foreach($perintah as $a)
            {
                $idkel = $a['id_kelas'];
                $nama  = $a['nama_kelas'];
                $foto  = $a['foto_kelas'];

                $desk  = $a['deskripsi'];
                $pesan = $a['pesan'];

                $kondisi = $a['kondisi'];

                if ($pesan==NULL) 
                {
                  $pesanF = $desk;
                } 
                else 
                {
                  $pesanF = $pesan;
                }
                
                
                
                $pel = $crud->eksekusiSQl("SELECT *FROM kursus WHERE id_kelas='$idkel'");
                $hit = $crud->hitungData($pel);

                if ($foto=="Kosong") 
                {
                    $gambar = "<img src='img/nofoto.png' width='35' height='35'>";
                } 
                else 
                {
                    $tujuan = "foto/$foto";
                    $gambar = 
                    "   
                      <img src='$tujuan' width='100%' height='320'>
                       
                    ";
                }

                if ($kondisi=='DRAFT') 
                {
                    $warna ="gainsboro";
                }
                else
                {
                    $warna = "white";
                }


                if($hit>0)
                {
                    $kursus = "<a href='?hal=kursus-kelas&idk=$idkel'>$hit Pelajaran</a>";
                }
                else
                {
                    $kursus = "Belum ada";
                }

                if($no%2==0) 
                {
                  $floating1="order-lg-1";
                  $floating2="order-lg-2";
                } 
                else 
                {
                  $floating1="";
                  $floating2="";
                }
                

                echo
                "
                  <section style='margin-top:35px;'>
                    <div class='container'>
                        <div class='row align-items-center'>
                          <div class='col-md $floating2'>
                            $gambar
                          </div>
                          <div class='col-md $floating1'>
                            <h1 class='display-4'>$nama</h1>
                            <p>$pesanF</p>
                            <a href='?hal=course-info&k=$idkel' class='btn btn-primary'>
                              Pelajari
                            </a>
                          </div>
                      </div>
                    </div>
                  </section>
                ";
                $no++;
               
            }
            
          
        }

      ?>
    </div> 

  </section>


  <!-- Footer -->
  <footer class="py-5 bg-black">
    <div class="container">
      <p class="m-0 text-center text-white small">Copyright &copy; Your Website 2020</p>
    </div>
    <!-- /.container -->
  </footer>