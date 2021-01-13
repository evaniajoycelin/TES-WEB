<?php

    $idm = @$_GET['mau'];

    if ($idm=='employee') 
    {
        $pkt = "Self Employee";
        

    }
    else if($idm=='enterpreneur')
    {
        $pkt = "Enterpreneur";
        
    }
    else
    {
        $pkt = "Administrator";
    }

    $ingin= $idm;

?>
 <!-- Begin Page Content -->
 <div class="container-fluid teks12">

     <!-- Page Heading -->
     <div class="d-sm-flex align-items-center justify-content-between mb-4">
         <h1 class="h3 mb-0 text-gray-800">Data <?php echo $pkt; ?></h1>

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
                    <a class='btn btn-primary' href='?hal=member-tambah&ingin=<?php echo $ingin;?>'>Tambah</a>
                    <br><br>

                     <?php

                        if ($pkt!=="Administrator") 
                        {
                            $cariPaket = $isi->eksekusiSQl("SELECT *FROM paket_member WHERE nama_paket='$pkt'");

                            foreach ($cariPaket as $y) 
                            {
                                $idpaket = $y['id_paket'];
                                $nmPaket = $y['nama_paket'];

                            }

                            function tdan($w)
                            {
                                $t = "<td>$w</td>";
                                return $t;
                            }

                            $tabelan = tdan($nmPaket);
                            $direksi ="SELECT * FROM `user_status` INNER JOIN user ON user_status.id_user = user.id_user
                            WHERE user_status.id_paket='$idpaket' ORDER BY user.id_user DESC";
                            $tMember = "<th>Jenis Membership</th>";
                        }
                        else
                        {
                            $direksi = "SELECT *FROM user WHERE hak_akses='Administrator'";
                            $tMember = "";
                            $tabelan="";
                        }
                      

                        



                        $perintah = $isi->eksekusiSQl($direksi);
                
                        
                        $hitung   = $isi->hitungData($perintah);

                        if ($hitung==0) 
                        {
                            pesanKosong();
                        }
                        else
                        {
                          
                           
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
                                            $tMember
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                            ";

                            

                            $no=1;
                            foreach($perintah as $a)
                            {
                                $nama   = $a['nama_user'];
                                $alamat = $a['alamat'];
                                $email  = $a['email'];
                                $nohp   = $a['no_hp'];
                                $foto   = $a['foto'];
                                $hak    = $a['hak_akses'];

                                $ius    = $a['id_user'];

                                if ($foto=='Kosong') 
                                {
                                    $gambar = "<img class='rounded-circle' src='../img/nofoto.png' width='50' height='50'>";
                                } 
                                else 
                                {
                                    $tujuan = "../foto/user/$foto";
                                    $gambar = 
                                    "   <a data-fancybox='gallery' href='$tujuan' data-caption='$nama'>
                                            <img class='rounded-circle' src='$tujuan' width='50' height='50'>
                                        </a>
                                    ";
                                }


                                $tabelTd=$tabelan;

                                
                 
                                
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
                                            
                                            $tabelTd
                                            <td>
    

                                                <center>
                                                    <div class='btn-group' role='group'>
                                                        <button id='aksi' type='button' class='btn btn-secondary btn-sm dropdown-toggle' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                                                        Aksi
                                                        </button>
                                                        <div class='dropdown-menu bg-success' aria-labelledby='aksi'>
                                                            <a class='dropdown-item' href='#'>View</a>
                                                            <a class='dropdown-item' href='?hal=member-edit&id=$ius&mau=edit'>Edit</a>
                                                            <a class='dropdown-item' href='?hal=member-respon&id=$ius&mau=hapus'>Hapus</a>
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