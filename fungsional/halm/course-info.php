<?php
    include './fungsional/konfig/header.php';
?>

 <!-- <header class="masthead gambar-bg text-center text-white ">
    <div class="masthead-content">
      <div class="container">
        <h1 class="masthead-heading mb-0">Course</h1>
        <h2 class="masthead-subheading mb-0">Isinya Course</h2>
       
      </div>
    </div>
    <div class="bg-circle-1 bg-circle"></div>
    <div class="bg-circle-2 bg-circle"></div>
    <div class="bg-circle-3 bg-circle"></div>
    <div class="bg-circle-4 bg-circle"></div>
  </header>-->

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


          $kelas = @$_GET['k'];
                
          $perintah = $crud->eksekusiSQl("SELECT *FROM kelas WHERE id_kelas='$kelas'");
          $hitung   = $crud->hitungData($perintah);

          if ($hitung==0) 
          {
              pesanKosong();
          }
          else
          {
              

            // $tampilin = $crud->tampilData("user");

          
            foreach($perintah as $a)
            {
                $idkel = $a['id_kelas'];
                $nama  = $a['nama_kelas'];
                $foto  = $a['foto_kelas'];

                $desk  = $a['deskripsi'];

                $kondisi = $a['kondisi'];
                
                
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
                      <img src='$tujuan' width='60%' height='400'>
                       
                    ";
                }

                
                echo
                "
                  <center>
                    
                      $gambar
                   
                    
                      <h1 class='display-4'>$nama</h1>
                      <p>$desk</p>
                      
                    
                  </center>
                ";
                
               
            }
            
          
        }

      ?>

      <?php

        $perintah = $crud->eksekusiSQl("SELECT *FROM 
                                        kursus
                                        INNER JOIN kelas
                                        ON kelas.id_kelas = kursus.id_kelas
                                        WHERE kursus.id_kelas='$kelas'
                                        ORDER BY id_kursus DESC
                                        ");

        $hitung   = $crud->hitungData($perintah);

       

        if ($hitung==0) 
        {
            pesanKosong();
        }
        else
        {
            foreach($perintah as $a)
            {
                $nama = $a['nama_kursus'];
               // $link = $a['link_video'];
                
                $idk  = $a['id_kursus'];
                $namak= $a['nama_kelas'];

                $foto = $a['foto_kursus'];


               // $tamnel = youtubeGambar($link);


               
                    $tamnel ="./foto/kursus/$foto";
                    
                
                
//$pel = $isi->eksekusiSQl("SELECT *FROM kursus WHERE id_kelas='$idkel'");
  //              $hit = $isi->hitungData($pel);

                
                    $gambar = 
                    "  
                            <img class='card-img-top' src='$tamnel' width='100' height='165'>
                       
                    ";
                

              


                
                
                echo
                  "
                  <div class='card kartu'>
                      <a href='?hal=course-detail&k=$idk'>
                          $gambar
                          <div class='card-body'>
                              <h6 class='card-title'>$nama</h6>
                              
                          </div>
                      </a>
                  </div>
                  ";
                //$no++;
            }

            $nextKelas = $crud->eksekusiSQL("SELECT *FROM kelas WHERE id_kelas NOT IN ($kelas) ORDER BY nama_kelas ASC LIMIT 1");
            foreach ($nextKelas as $go) 
            {
              $idkelas = $go['id_kelas'];
              $nmkelas = $go['nama_kelas'];
            }

            echo
            "
              <p>
                <a class='btn btn-primary btn-lg' href='?hal=course-info&k=$idkelas'>Kelas Selanjutnya $nmkelas</a>
              </p>
            ";
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