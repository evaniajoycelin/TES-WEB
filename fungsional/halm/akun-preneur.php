<form action="?hal=akun-respon&mode=preneur" method="post">
    <!--<input type="hidden" name="k" value="<?php echo $i; ?>">-->

    <h2>Akun Bisnis Anda</h2>

    <table width="100%">
        <tr>
            <td width="35%">Nama Bisnis Anda <sup class="text-danger">
                    <font size='3'>*</font>
                </sup></td>
            <td>:</td>
            <td>
                <input class="form-control" type="text" name="nama" required>
            </td>
        </tr>
        <tr>
            <td width="35%">Tahun Berapa bisnis anda didirikan? <sup class="text-danger">
                    <font size='3'>*</font>
                </sup></td>
            <td>:</td>
            <td>
                <input class="form-control" type="number" name="tahun" required>
            </td>
        </tr>
        <tr>
            <td width="35%">Bergerak di bidang apa bisnis anda? <sup class="text-danger">
                    <font size='3'>*</font>
                </sup></td>
            <td>:</td>
            <td>


                <select class="form-control" name="bidang" required>
                    <option value="">PILIH BIDANG</option>
                    <option value="Produk">Produk</option>
                    <option value="Jasa">Jasa</option>
                    <option value="Produk & Jasa">Produk & Jasa</option>
                </select>
                </div>
            </td>
        </tr>
        <tr>
            <td width="35%">Akun Instagram Bisnis anda</td>
            <td>:</td>
            <td>
                <input class="form-control" type="text" name="ig">
            </td>
        </tr>
        <tr>
            <td width="35%">Page Facebook Bisnis anda</td>
            <td>:</td>
            <td>
                <input class="form-control" type="text" name="fb">
            </td>
        </tr>

        <tr>
            <td width="35%">Website Bisnis anda</td>
            <td>:</td>
            <td>
                <input class="form-control" type="text" name="web">
            </td>
        </tr>

        <tr>
            <td width="35%">Provinsi</td>
            <td>:</td>
            <td>
                <div class="form-group">

                    <select id="selectProvinsi" class="form-control" name="provinsi" required>
                        <option value="">PILIH PROVINSI</option>
                        <span id="tampilProvinsi"></span>
                    </select>
                </div>
            </td>
        </tr>

        <tr>
            <td width="35%">Alamat Bisnis<sup class="text-danger">
                    <font size='3'>*</font>
                </sup></td>
            <td>:</td>
            <td>
                <input class="form-control" type="text" name="alamat">
            </td>
        </tr>

        <tr>
            <td width="35%">E-mail Bisnis<sup class="text-danger">
                    <font size='3'>*</font>
                </sup></td>
            <td>:</td>
            <td>
                <input class="form-control" type="email" name="email">
            </td>
        </tr>

        <tr>
            <td width="35%">No.Telp Bisnis<sup class="text-danger">
                    <font size='3'>*</font>
                </sup></td>
            <td>:</td>
            <td>
                <input class="form-control" type="text" name="notelp">
            </td>
        </tr>

        <tr>
            <td colspan="3">

                Omset Per Bulan : <br>
                <div style="margin-left: 30px; margin-top:10px;">
                    <!--radio-->
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="omset" id="inlineRadio1" value="< Rp 10 Juta">
                        <label class="form-check-label" for="inlineRadio1">
                            < Rp 10 Juta</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="omset" id="inlineRadio2" value="Rp 10 Juta - Rp 20 Juta">
                        <label class="form-check-label" for="inlineRadio2">Rp 10 Juta - Rp 20 Juta</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="omset" id="inlineRadio3" value="Rp 25 Juta - Rp 50 Juta">
                        <label class="form-check-label" for="inlineRadio2">Rp 25 Juta - Rp 50 Juta</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="omset" id="inlineRadio3" value="Rp 50 Juta - Rp 100 Juta">
                        <label class="form-check-label" for="inlineRadio2">Rp 50 Juta - Rp 100 Juta</label>
                    </div>

                    <!--radio-->
                </div>

                <div style="margin-left: 30px; margin-top:10px;">
                    <!--radio-->
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="omset" id="inlineRadio1" value="Rp 100 Juta - Rp 250 Juta">
                        <label class="form-check-label" for="inlineRadio1"> Rp 100 Juta - Rp 250 Juta</label>
                    </div>

                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="omset" id="inlineRadio1" value="Rp 250 Juta - Rp 1 Milyar">
                        <label class="form-check-label" for="inlineRadio1"> Rp 250 Juta - Rp 1 Milyar</label>
                    </div>

                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="omset" id="inlineRadio1" value="> Rp 1 Milyar">
                        <label class="form-check-label" for="inlineRadio1"> > Rp 1 Milyar</label>
                    </div>
                    <!--radio-->
                </div>

            </td>
        </tr>

        <tr>
            <td colspan="3">

                Jumlah Karyawan : <br>
                <div style="margin-left: 30px; margin-top:10px;">
                    <!--radio-->
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="jumkar" id="karyawan" value="< 10 Orang">
                        <label class="form-check-label" for="karyawan">
                            < 10 Orang</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="jumkar" id="karyawan" value="10-50 Orang">
                        <label class="form-check-label" for="karyawan">10-50 Orang</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="jumkar" id="karyawan" value="50-100 Orang">
                        <label class="form-check-label" for="karyawan">50-100 Orang</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="jumkar" id="karyawan" value="500-1000 Orang">
                        <label class="form-check-label" for="karyawan">500-1000 Orang</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="jumkar" id="karyawan" value=">1000 Orang">
                        <label class="form-check-label" for="karyawan">>1000 Orang</label>
                    </div>

                    <!--radio-->
                </div>



            </td>


        </tr>

        <tr>
            <td colspan="3">
                <div class="form-group">
                    <label for="my-textarea">Jelaskan secara singkat produk/jasa/layanan Usaha anda:</label>
                    <textarea id="my-textarea" class="form-control" name="deskripsi" rows="3" placeholder="Isi Disini..." required></textarea>
                </div>
            </td>
        </tr>

        <tr>
            <td colspan="3">
                <p>Foto Usaha Anda:</p>
                <div class="row">
                    <div class="col-4">
                        <img id="gambarUsaha" src="img/nofoto.png" width="100%" height="200">
                        <p style="margin-top: 15px;">
                            <font color="gray">Gambar tampil disini</font>
                        </p>
                        <input type="file" name="foto" id="gambarAmbUsaha" onchange="return uploadUsaha(this)" required />

                        <br>
                    </div>

                </div>


            </td>
        </tr>





    </table>

    <button type="submit" class="btn btn-primary btn-lg">SIMPAN</button>
</form>