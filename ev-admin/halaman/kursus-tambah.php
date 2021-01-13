<form action="?hal=kursus-respon&mau=tambah" method="post" enctype="multipart/form-data">
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
                        <h6 class="m-0 font-weight-bold text-primary">Tambah Kursus</h6>
                    </div>


                    <div class="card-body">


                        <p>
                            <input class="form-control" type="text" name="nama" placeholder="Nama Kursus" required> 
                        </p>

                        <p>
                            <input class="form-control" type="text" name="link" placeholder="Link Video Youtube">
                        </p>

                        <p>
                            <select name="idkelas" class="form-control" required>
                                <option value="">Pilih Kelas</option>
                                <?php

                                $perintah = $isi->eksekusiSQl("SELECT *FROM kelas");



                                // $tampilin = $isi->tampilData("user");


                                foreach ($perintah as $a) {
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
                            <textarea name="deskripsi" class="ckeditor"></textarea>
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
                                <img id="gambarTampil" src="../img/nofoto.png" alt="Test" width="150" height="150">
                            </p>


                            <div class="custom-file">
                                <input id="gambarAmbil" type="file" name="foto" class="custom-file-input" id="customFile">
                                <label class="custom-file-label" for="customFile">Upload</label>
                            </div>
                        </center>

                    </div>
                </div>

            </div>


        </div>
        <!-- /.container-fluid -->
</form>