<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark navbar-danny fixed-top">
    <div class="container">
        <a class="navbar-brand" href="index.php">
            <img src="./img/LogoPutih.png" alt="" width="200">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
                    <a class="nav-link" href="?hal=event">Event</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="?hal=course">Course</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="?hal=cooming-soon">Forum</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="?hal=cooming-soon">Community</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="?hal=akun-profile">
                    <img title="<?php echo $namauser; ?>" src="<?php echo $gambar; ?>" style="margin-left: 5px;" width="30" height="30" class="rounded-circle">
                    </a>
                </li>
                
                <li class="nav-item active dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        
                        <i class="fa fa-bell" aria-hidden="true"></i>
                        <sup class="badge badge-danger"><?php echo $angkaTransaksi; ?></sup>

                    </a>
                    <div style="background-color: black;" class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <font color="white">
                        <a class="dropdown-item text-light" href="<?php echo $linkTrans; ?>"><?php echo $pesanTransaksi;  ?></a>
                        </font>
                    </div>
                </li>

                <li class="nav-item active">
                    <a class="nav-link" href="?hal=logout">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>


<div class="pesan">
    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis quasi laboriosam quam sit quis excepturi, aliquam doloremque repudiandae sunt ipsam consectetur ipsa! Veritatis, deserunt culpa repellendus qui veniam nihil numquam!</p>
</div>

