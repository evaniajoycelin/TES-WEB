<?php

    $id = $_GET['ide'];
    
    $y = $isi->eksekusiSQL("SELECT kursus.nama_kursus, kursus.link_video, 
                                kursus.id_kelas, kelas.id_kelas, kelas.nama_kelas,
                                kursus.deskripsi
                            FROM kursus
                            INNER JOIN kelas ON 
                                kelas.id_kelas=kursus.id_kelas
                            WHERE kursus.id_kursus='$id'");

    foreach($y as $a)
    {
        $nama = $a['nama_kursus'];
        $link = $a['link_video'];
        
        $idk  = $a['id_kelas'];

        $namak= $a['nama_kelas'];

        $desk = $a['deskripsi'];


        $tamnel = youtubeGambar($link);
    }

?>
<form action="?hal=kursus-respon&mau=edit" method="post" enctype="multipart/form-data">
    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Kursus</h1>

        </div>


        <!-- Content Row -->

        <div class="row">

            <!-- Area Chart -->

            <div class="col-md-9">
                <div class="card shadow mb-4">
                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                        <h6 class="m-0 font-weight-bold text-primary">Edit Kursus</h6>
                    </div>


                    <div class="card-body">

                         <input type="hidden" name="id" value="<?php echo $id;?>">

                        <p>
                            <input value="<?php echo $nama; ?>" class="form-control" type="text" name="nama" placeholder="Nama Kursus" required>
                        </p>

                        <p>
                            <input id="link" value="<?php echo $link; ?>" class="form-control" type="text" name="link" placeholder="Link Video Youtube" required>
                        </p>

                        <p>
                            <select name="idkelas" class="form-control" required>
                                
                                <?php

                                    echo
                                    "
                                        <option value='$idk' selected>$namak</option>
                                    ";
                
                                    $perintah = $isi->eksekusiSQl("SELECT *FROM kelas");
                                            
                                

                                        // $tampilin = $isi->tampilData("user");

                                 
                                    foreach($perintah as $a)
                                    {
                                        $idkel  = $a['id_kelas'];
                                        $namakel = $a['nama_kelas'];
                                    
                                        
                                        echo
                                        "
                                            <option value='$idkel'>$namakel</option>
                                        ";
                                    
                                    }
                                        
                                        

                                    
                                    

                                ?>
                            </select>
                        </p>

                        <p>
                            <textarea name="deskripsi" class="ckeditor"><?php echo $desk; ?></textarea>
                        </p>



                    </div>
                </div>
            </div>

            <div class="col-md-3">

                <div class="card shadow mb-4">
                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                        <h6 class="m-0 font-weight-bold text-primary">Opsi Simpan</h6>
                       
                    </div>


                    <div class="card-body">

                        <center>
                            <input type="submit" value="POSTING" class="btn btn-primary" name="simpan">
                            <input type="submit" value="DRAFT" class="btn btn-secondary">
                        </center>

                    </div>
                </div>

                <div class="card shadow mb-4">
                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                        <h6 class="m-0 font-weight-bold text-primary">Gambar Event</h6>
                       
                    </div>


                    <div class="card-body">

                        <center>
                            <p>
                                <img src="<?php echo $tamnel;?>" width="90%" height="160">
                            </p>

                            <input type="file" name="foto" class="btn btn-primary">
                        </center>

                    </div>
                </div>

            </div>


        </div>
        <!-- /.container-fluid -->
</form>