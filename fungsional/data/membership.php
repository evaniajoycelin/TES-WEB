<a data-fancybox href="<?php echo $gambar; ?>" data-caption="<?php echo "$namauser"; ?>">
  <img src="<?php echo $gambar; ?>" width="100%" height="135" class="rounded-circle" alt="<?php echo "$namauser"; ?>">
  <center>
    <a data-fancybox data-src="#fotoan" href="javascript:;" style="padding: 2px; margin-top:8px" class="btn btn-danger btn-sm" ><?php echo $kataTombolFoto; ?></a>
  </center>
</a>

<br>
<div style="margin: 10px;">
  <ul class="nav flex-column">
   
    <li class="nav-item">
      <a class="nav-link active" href="?hal=akun-profile">Profile</a>
    </li>
    <li class="nav-item">
      <a class="nav-link active" href="?hal=akun-membership">Membership</a>
    </li>
    <li class="nav-item">
      <a class="nav-link active" href="?hal=akun-respon&mode=udahbaca">
        Transaksi
      </a>
    </li>

  </ul>
</div>


<!-- Fancybox -->
<div id="fotoan" style="display: none; width:500px; height:500px;">

  
  <form action="?hal=akun-respon&mode=upload&isi=<?php echo $foto; ?>" method="post" enctype="multipart/form-data">

  <center>
    <img id="gambarTampil" src="<?php echo $gambar; ?>" width="50%" height="200" alt="<?php echo "$namauser"; ?>">
    <p style="margin-top: 15px;">
      <font color="gray">Gambar tampil disini</font>
    </p>
    <input type="file" name="foto" id="gambarAmbil" onchange="return uploadFoto(this)" required />
    
    <p style="margin-top: 15px;">
    <button type="submit" class="btn btn-primary btn-lg">
      SIMPAN
    </button>
    </p>
  </center>

  </form>
  
  
</div>

 