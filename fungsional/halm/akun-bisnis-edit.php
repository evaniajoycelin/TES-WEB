<?php
include './fungsional/konfig/headerUdahLogin.php';
?>


<?php

    $idpreneur = @$_GET['idpe'];

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

                $perintah = $crud->eksekusiSQl("SELECT *FROM user_preneur 
                                                INNER JOIN user ON user.id_user=user_preneur.id_user
                                                WHERE user_preneur.id_userpreneur='$idpreneur'
                                              ");
                foreach ($perintah as $a) 
                {
                    //$idUneur = $a['id_userpreneur'];
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

                    //perihal omset
                    //< Rp 10 Juta
                    if ($omset=='< Rp 10 Juta') 
                    {
                        $tampilOmset =
                        "
                            <div style='margin-left: 30px; margin-top:10px;'>
                            <!--radio-->
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio1' value='< Rp 10 Juta' checked>
                                <label class='form-check-label' for='inlineRadio1'>
                                    < Rp 10 Juta</label> </div> <div class='form-check form-check-inline'>
                                        <input class='form-check-input' type='radio' name='omset' id='inlineRadio2' value='Rp 10 Juta - Rp 20 Juta'>
                                        <label class='form-check-label' for='inlineRadio2'>Rp 10 Juta - Rp 20 Juta</label>
                            </div>
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio3' value='500-1000 Orang'>
                                <label class='form-check-label' for='inlineRadio2'>Rp 25 Juta - Rp 50 Juta</label>
                            </div>
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio3' value='Rp 50 Juta - Rp 100 Juta'>
                                <label class='form-check-label' for='inlineRadio2'>Rp 50 Juta - Rp 100 Juta</label>
                            </div>

                            <!--radio-->
                        </div>

                        <div style='margin-left: 30px; margin-top:10px;'>
                            <!--radio-->
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio1' value='Rp 100 Juta - Rp 250 Juta'>
                                <label class='form-check-label' for='inlineRadio1'> Rp 100 Juta - Rp 250 Juta</label>
                            </div>

                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio1' value='Rp 250 Juta - Rp 1 Milyar'>
                                <label class='form-check-label' for='inlineRadio1'> Rp 250 Juta - Rp 1 Milyar</label>
                            </div>

                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio1' value='> Rp 1 Milyar'>
                                <label class='form-check-label' for='inlineRadio1'> > Rp 1 Milyar</label>
                            </div>
                            <!--radio-->
                        </div>
                        ";
                    }      
                    elseif ($omset=='Rp 10 Juta - Rp 20 Juta') 
                    {
                        $tampilOmset =
                        "
                            <div style='margin-left: 30px; margin-top:10px;'>
                            <!--radio-->
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio1' value='< Rp 10 Juta'>
                                <label class='form-check-label' for='inlineRadio1'>
                                    < Rp 10 Juta</label> </div> <div class='form-check form-check-inline'>
                                        <input class='form-check-input' type='radio' name='omset' id='inlineRadio2' value='Rp 10 Juta - Rp 20 Juta' checked>
                                        <label class='form-check-label' for='inlineRadio2'>Rp 10 Juta - Rp 20 Juta</label>
                            </div>
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio3' value='Rp 25 Juta - Rp 50 Juta'>
                                <label class='form-check-label' for='inlineRadio2'>Rp 25 Juta - Rp 50 Juta</label>
                            </div>
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio3' value='Rp 50 Juta - Rp 100 Juta'>
                                <label class='form-check-label' for='inlineRadio2'>Rp 50 Juta - Rp 100 Juta</label>
                            </div>

                            <!--radio-->
                        </div>

                        <div style='margin-left: 30px; margin-top:10px;'>
                            <!--radio-->
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio1' value='Rp 100 Juta - Rp 250 Juta'>
                                <label class='form-check-label' for='inlineRadio1'> Rp 100 Juta - Rp 250 Juta</label>
                            </div>

                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio1' value='Rp 250 Juta - Rp 1 Milyar'>
                                <label class='form-check-label' for='inlineRadio1'> Rp 250 Juta - Rp 1 Milyar</label>
                            </div>

                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio1' value='> Rp 1 Milyar'>
                                <label class='form-check-label' for='inlineRadio1'> > Rp 1 Milyar</label>
                            </div>
                            <!--radio-->
                        </div>
                        ";
                    }
                    elseif ($omset=='Rp 25 Juta - Rp 50 Juta') 
                    {
                        $tampilOmset =
                        "
                            <div style='margin-left: 30px; margin-top:10px;'>
                            <!--radio-->
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio1' value='< Rp 10 Juta'>
                                <label class='form-check-label' for='inlineRadio1'>
                                    < Rp 10 Juta</label> </div> <div class='form-check form-check-inline'>
                                        <input class='form-check-input' type='radio' name='omset' id='inlineRadio2' value='Rp 10 Juta - Rp 20 Juta'>
                                        <label class='form-check-label' for='inlineRadio2'>Rp 10 Juta - Rp 20 Juta</label>
                            </div>
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio3' value='Rp 25 Juta - Rp 50 Juta' checked>
                                <label class='form-check-label' for='inlineRadio2'>Rp 25 Juta - Rp 50 Juta</label>
                            </div>
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio3' value='Rp 50 Juta - Rp 100 Juta'>
                                <label class='form-check-label' for='inlineRadio2'>Rp 50 Juta - Rp 100 Juta</label>
                            </div>

                            <!--radio-->
                        </div>

                        <div style='margin-left: 30px; margin-top:10px;'>
                            <!--radio-->
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio1' value='Rp 100 Juta - Rp 250 Juta'>
                                <label class='form-check-label' for='inlineRadio1'> Rp 100 Juta - Rp 250 Juta</label>
                            </div>

                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio1' value='Rp 250 Juta - Rp 1 Milyar'>
                                <label class='form-check-label' for='inlineRadio1'> Rp 250 Juta - Rp 1 Milyar</label>
                            </div>

                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio1' value='> Rp 1 Milyar'>
                                <label class='form-check-label' for='inlineRadio1'> > Rp 1 Milyar</label>
                            </div>
                            <!--radio-->
                        </div>
                        ";
                    }
                    elseif ($omset=='Rp 50 Juta - Rp 100 Juta') 
                    {
                        $tampilOmset =
                        "
                            <div style='margin-left: 30px; margin-top:10px;'>
                            <!--radio-->
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio1' value='< Rp 10 Juta'>
                                <label class='form-check-label' for='inlineRadio1'>
                                    < Rp 10 Juta</label> </div> <div class='form-check form-check-inline'>
                                        <input class='form-check-input' type='radio' name='omset' id='inlineRadio2' value='Rp 10 Juta - Rp 20 Juta'>
                                        <label class='form-check-label' for='inlineRadio2'>Rp 10 Juta - Rp 20 Juta</label>
                            </div>
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio3' value='Rp 25 Juta - Rp 50 Juta'>
                                <label class='form-check-label' for='inlineRadio2'>Rp 25 Juta - Rp 50 Juta</label>
                            </div>
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio3' value='Rp 50 Juta - Rp 100 Juta' checked>
                                <label class='form-check-label' for='inlineRadio2'>Rp 50 Juta - Rp 100 Juta</label>
                            </div>

                            <!--radio-->
                        </div>

                        <div style='margin-left: 30px; margin-top:10px;'>
                            <!--radio-->
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio1' value='Rp 100 Juta - Rp 250 Juta'>
                                <label class='form-check-label' for='inlineRadio1'> Rp 100 Juta - Rp 250 Juta</label>
                            </div>

                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio1' value='Rp 250 Juta - Rp 1 Milyar'>
                                <label class='form-check-label' for='inlineRadio1'> Rp 250 Juta - Rp 1 Milyar</label>
                            </div>

                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio1' value='> Rp 1 Milyar'>
                                <label class='form-check-label' for='inlineRadio1'> > Rp 1 Milyar</label>
                            </div>
                            <!--radio-->
                        </div>
                        ";
                    }
                    elseif ($omset=='Rp 100 Juta - Rp 250 Juta') 
                    {
                        $tampilOmset =
                        "
                            <div style='margin-left: 30px; margin-top:10px;'>
                            <!--radio-->
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio1' value='< Rp 10 Juta'>
                                <label class='form-check-label' for='inlineRadio1'>
                                    < Rp 10 Juta</label> </div> <div class='form-check form-check-inline'>
                                        <input class='form-check-input' type='radio' name='omset' id='inlineRadio2' value='Rp 10 Juta - Rp 20 Juta'>
                                        <label class='form-check-label' for='inlineRadio2'>Rp 10 Juta - Rp 20 Juta</label>
                            </div>
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio3' value='Rp 25 Juta - Rp 50 Juta'>
                                <label class='form-check-label' for='inlineRadio2'>Rp 25 Juta - Rp 50 Juta</label>
                            </div>
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio3' value='Rp 50 Juta - Rp 100 Juta'>
                                <label class='form-check-label' for='inlineRadio2'>Rp 50 Juta - Rp 100 Juta</label>
                            </div>

                            <!--radio-->
                        </div>

                        <div style='margin-left: 30px; margin-top:10px;'>
                            <!--radio-->
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio1' value='Rp 100 Juta - Rp 250 Juta' checked>
                                <label class='form-check-label' for='inlineRadio1'> Rp 100 Juta - Rp 250 Juta</label>
                            </div>

                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio1' value='Rp 250 Juta - Rp 1 Milyar'>
                                <label class='form-check-label' for='inlineRadio1'> Rp 250 Juta - Rp 1 Milyar</label>
                            </div>

                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio1' value='> Rp 1 Milyar'>
                                <label class='form-check-label' for='inlineRadio1'> > Rp 1 Milyar</label>
                            </div>
                            <!--radio-->
                        </div>
                        ";
                    }
                    elseif ($omset=='Rp 250 Juta - Rp 1 Milyar') 
                    {
                        $tampilOmset =
                        "
                            <div style='margin-left: 30px; margin-top:10px;'>
                            <!--radio-->
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio1' value='< Rp 10 Juta'>
                                <label class='form-check-label' for='inlineRadio1'>
                                    < Rp 10 Juta</label> </div> <div class='form-check form-check-inline'>
                                        <input class='form-check-input' type='radio' name='omset' id='inlineRadio2' value='Rp 10 Juta - Rp 20 Juta'>
                                        <label class='form-check-label' for='inlineRadio2'>Rp 10 Juta - Rp 20 Juta</label>
                            </div>
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio3' value='Rp 25 Juta - Rp 50 Juta'>
                                <label class='form-check-label' for='inlineRadio2'>Rp 25 Juta - Rp 50 Juta</label>
                            </div>
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio3' value='Rp 50 Juta - Rp 100 Juta'>
                                <label class='form-check-label' for='inlineRadio2'>Rp 50 Juta - Rp 100 Juta</label>
                            </div>

                            <!--radio-->
                        </div>

                        <div style='margin-left: 30px; margin-top:10px;'>
                            <!--radio-->
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio1' value='Rp 100 Juta - Rp 250 Juta'>
                                <label class='form-check-label' for='inlineRadio1'> Rp 100 Juta - Rp 250 Juta</label>
                            </div>

                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio1' value='Rp 250 Juta - Rp 1 Milyar' checked>
                                <label class='form-check-label' for='inlineRadio1'> Rp 250 Juta - Rp 1 Milyar</label>
                            </div>

                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio1' value='> Rp 1 Milyar'>
                                <label class='form-check-label' for='inlineRadio1'> > Rp 1 Milyar</label>
                            </div>
                            <!--radio-->
                        </div>
                        ";
                    }
                    else
                    {
                        $tampilOmset =
                        "
                            <div style='margin-left: 30px; margin-top:10px;'>
                            <!--radio-->
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio1' value='< Rp 10 Juta'>
                                <label class='form-check-label' for='inlineRadio1'>
                                    < Rp 10 Juta</label> </div> <div class='form-check form-check-inline'>
                                        <input class='form-check-input' type='radio' name='omset' id='inlineRadio2' value='Rp 10 Juta - Rp 20 Juta'>
                                        <label class='form-check-label' for='inlineRadio2'>Rp 10 Juta - Rp 20 Juta</label>
                            </div>
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio3' value='Rp 25 Juta - Rp 50 Juta'>
                                <label class='form-check-label' for='inlineRadio2'>Rp 25 Juta - Rp 50 Juta</label>
                            </div>
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio3' value='Rp 50 Juta - Rp 100 Juta'>
                                <label class='form-check-label' for='inlineRadio2'>Rp 50 Juta - Rp 100 Juta</label>
                            </div>

                            <!--radio-->
                        </div>

                        <div style='margin-left: 30px; margin-top:10px;'>
                            <!--radio-->
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio1' value='Rp 100 Juta - Rp 250 Juta'>
                                <label class='form-check-label' for='inlineRadio1'> Rp 100 Juta - Rp 250 Juta</label>
                            </div>

                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio1' value='Rp 250 Juta - Rp 1 Milyar'>
                                <label class='form-check-label' for='inlineRadio1'> Rp 250 Juta - Rp 1 Milyar</label>
                            </div>

                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='omset' id='inlineRadio1' value='> Rp 1 Milyar' checked>
                                <label class='form-check-label' for='inlineRadio1'> > Rp 1 Milyar</label>
                            </div>
                            <!--radio-->
                        </div>
                        ";
                    }

                    if ($jumkar=='< 10 Orang') 
                    {
                        $banyakKar = 
                        "
                        <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='jumkar' id='karyawan' value='< 10 Orang' checked>
                                <label class='form-check-label' for='karyawan'>
                                    < 10 Orang</label> </div> <div class='form-check form-check-inline'>
                                        <input class='form-check-input' type='radio' name='jumkar' id='karyawan' value='10-50 Orang'>
                                        <label class='form-check-label' for='karyawan'>10-50 Orang</label>
                            </div>
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='jumkar' id='karyawan' value='50-100 Orang'>
                                <label class='form-check-label' for='karyawan'>50-100 Orang</label>
                            </div>
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='jumkar' id='karyawan' value='500-1000 Orang'>
                                <label class='form-check-label' for='karyawan'>500-1000 Orang</label>
                            </div>
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='jumkar' id='karyawan' value='>1000 Orang'>
                                <label class='form-check-label' for='karyawan'>>1000 Orang</label>
                        </div>
                        ";
                    }
                    elseif ($jumkar=='10-50 Orang') 
                    {
                        $banyakKar = 
                        "
                        <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='jumkar' id='karyawan' value='< 10 Orang' >
                                <label class='form-check-label' for='karyawan'>
                                    < 10 Orang</label> </div> <div class='form-check form-check-inline'>
                                        <input class='form-check-input' type='radio' name='jumkar' id='karyawan' value='10-50 Orang' checked>
                                        <label class='form-check-label' for='karyawan'>10-50 Orang</label>
                            </div>
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='jumkar' id='karyawan' value='50-100 Orang'>
                                <label class='form-check-label' for='karyawan'>50-100 Orang</label>
                            </div>
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='jumkar' id='karyawan' value='500-1000 Orang'>
                                <label class='form-check-label' for='karyawan'>500-1000 Orang</label>
                            </div>
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='jumkar' id='karyawan' value='>1000 Orang'>
                                <label class='form-check-label' for='karyawan'>>1000 Orang</label>
                        </div>
                        ";
                    }
                    elseif ($jumkar=='50-100 Orang') 
                    {
                        $banyakKar = 
                        "
                        <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='jumkar' id='karyawan' value='< 10 Orang' >
                                <label class='form-check-label' for='karyawan'>
                                    < 10 Orang</label> </div> <div class='form-check form-check-inline'>
                                        <input class='form-check-input' type='radio' name='jumkar' id='karyawan' value='10-50 Orang'>
                                        <label class='form-check-label' for='karyawan'>10-50 Orang</label>
                            </div>
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='jumkar' id='karyawan' value='50-100 Orang' checked>
                                <label class='form-check-label' for='karyawan'>50-100 Orang</label>
                            </div>
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='jumkar' id='karyawan' value='500-1000 Orang'>
                                <label class='form-check-label' for='karyawan'>500-1000 Orang</label>
                            </div>
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='jumkar' id='karyawan' value='>1000 Orang'>
                                <label class='form-check-label' for='karyawan'>>1000 Orang</label>
                        </div>
                        ";
                    }
                    elseif ($jumkar=='500-1000 Orang') 
                    {
                        $banyakKar = 
                        "
                        <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='jumkar' id='karyawan' value='< 10 Orang' >
                                <label class='form-check-label' for='karyawan'>
                                    < 10 Orang</label> </div> <div class='form-check form-check-inline'>
                                        <input class='form-check-input' type='radio' name='jumkar' id='karyawan' value='10-50 Orang'>
                                        <label class='form-check-label' for='karyawan'>10-50 Orang</label>
                            </div>
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='jumkar' id='karyawan' value='50-100 Orang'>
                                <label class='form-check-label' for='karyawan'>50-100 Orang</label>
                            </div>
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='jumkar' id='karyawan' value='500-1000 Orang' checked>
                                <label class='form-check-label' for='karyawan'>500-1000 Orang</label>
                            </div>
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='jumkar' id='karyawan' value='>1000 Orang'>
                                <label class='form-check-label' for='karyawan'>>1000 Orang</label>
                        </div>
                        ";
                    }
                    else
                    {
                        $banyakKar = 
                        "
                        <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='jumkar' id='karyawan' value='< 10 Orang' >
                                <label class='form-check-label' for='karyawan'>
                                    < 10 Orang</label> </div> <div class='form-check form-check-inline'>
                                        <input class='form-check-input' type='radio' name='jumkar' id='karyawan' value='10-50 Orang'>
                                        <label class='form-check-label' for='karyawan'>10-50 Orang</label>
                            </div>
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='jumkar' id='karyawan' value='50-100 Orang'>
                                <label class='form-check-label' for='karyawan'>50-100 Orang</label>
                            </div>
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='jumkar' id='karyawan' value='500-1000 Orang'>
                                <label class='form-check-label' for='karyawan'>500-1000 Orang</label>
                            </div>
                            <div class='form-check form-check-inline'>
                                <input class='form-check-input' type='radio' name='jumkar' id='karyawan' value='>1000 Orang' checked>
                                <label class='form-check-label' for='karyawan'>>1000 Orang</label>
                        </div>
                        ";
                    }
                }
            ?>
            </div>

            <div class="col-md-10">
                <h1 style="margin: 30px; margin-bottom:0px;"><?php echo "$namauser"; ?></h1>

                <hr>

                <form action="?hal=akun-respon&mode=preneur_edit" method="post">
                    <input type="hidden" name="idpe" value="<?php echo $idpreneur; ?>">

                    <table width="100%">
                        <tr>
                            <td width="35%">Nama Bisnis Anda <sup class="text-danger">
                                    <font size='3'>*</font>
                                </sup></td>
                            <td>:</td>
                            <td>
                                <input value="<?php echo $nama; ?>" class="form-control" type="text" name="nama" required>
                            </td>
                        </tr>
                        <tr>
                            <td width="35%">Tahun Berapa bisnis anda didirikan? <sup class="text-danger">
                                    <font size='3'>*</font>
                                </sup></td>
                            <td>:</td>
                            <td>
                                <input value="<?php echo $tahun; ?>"  class="form-control" type="number" name="tahun" required>
                            </td>
                        </tr>
                        <tr>
                            <td width="35%">Bergerak di bidang apa bisnis anda? <sup class="text-danger">
                                    <font size='3'>*</font>
                                </sup></td>
                            <td>:</td>
                            <td>
                                <input value="<?php echo $bidang; ?>" class="form-control" type="text" name="bidang" required>
                            </td>
                        </tr>
                        <tr>
                            <td width="35%">Akun Instagram Bisnis anda</td>
                            <td>:</td>
                            <td>
                                <input value="<?php echo $ig; ?>" class="form-control" type="text" name="ig">
                            </td>
                        </tr>
                        <tr>
                            <td width="35%">Page Facebook Bisnis anda</td>
                            <td>:</td>
                            <td>
                                <input value="<?php echo $fb; ?>" class="form-control" type="text" name="fb">
                            </td>
                        </tr>

                        <tr>
                            <td width="35%">Website Bisnis anda</td>
                            <td>:</td>
                            <td>
                                <input value="<?php echo $web; ?>" class="form-control" type="text" name="web">
                            </td>
                        </tr>

                        <tr>
                            <td colspan="3">

                                Omset Per Bulan : <br>
                                <?php
                                    echo $tampilOmset;
                                ?>
                       
                            </td>
                        </tr>

                        <tr>
                            <td colspan="3">

                                Jumlah Karyawan : <br>
                                <div style="margin-left: 30px; margin-top:10px;">
                                    <!--radio-->
                                    <?php
                                        echo $banyakKar;
                                    ?>
                                    <!--radio-->
                                </div>



                            </td>


                        </tr>

                        <tr>
                            <td colspan="3">
                                <div class="form-group">
                                    <label for="my-textarea">Jelaskan secara singkat produk/jasa/layanan Usaha anda:</label>
                                    <textarea id="my-textarea" class="form-control" name="deskripsi" rows="3" placeholder="Isi Disini..." required><?php echo $deskrip; ?></textarea>
                                </div>
                            </td>
                        </tr>


                    </table>

                    <button type="submit" class="btn btn-primary btn-lg">SIMPAN</button>
                </form>



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