<form action="?hal=kelas-respon&mau=tambah" method="post" enctype="multipart/form-data">
    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Kelas</h1>
            
        </div>


        <!-- Content Row -->

        <div class="row">

            <!-- Area Chart -->

            <div class="col-md-9">
                <div class="card shadow mb-4">
                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                        <h6 class="m-0 font-weight-bold text-primary">Tambah Kelas</h6>
                    </div>


                    <div class="card-body">


                        <p>
                            <input class="form-control" type="text" name="nama" placeholder="Nama Kelas" required>
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
                            <input type="submit" value="DRAFT" class="btn btn-secondary" name="simpan">
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
                            <img src="../img/nofoto.png" alt="Test" width="150" height="150">
                            </p>

                            <input type="file" name="foto" class="btn btn-primary">
                        </center>

                    </div>
                </div>

            </div>


        </div>
        <!-- /.container-fluid -->
</form>