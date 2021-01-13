-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 13, 2021 at 05:41 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evenan`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id_event` int(11) NOT NULL,
  `nama_event` varchar(50) NOT NULL,
  `tanggal_post` date NOT NULL,
  `deskripsi` text NOT NULL,
  `foto_event` varchar(100) NOT NULL,
  `id_user` int(11) NOT NULL,
  `lokasi` text NOT NULL,
  `venue` varchar(50) NOT NULL,
  `waktu` datetime NOT NULL,
  `harga_event` double NOT NULL,
  `kuota` int(11) NOT NULL,
  `keterangan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id_event`, `nama_event`, `tanggal_post`, `deskripsi`, `foto_event`, `id_user`, `lokasi`, `venue`, `waktu`, `harga_event`, `kuota`, `keterangan`) VALUES
(12, 'Seminar TES Bersama Bisa', '2021-01-11', '<p>Alerts are available for any length of text, as well as an optional dismiss button. For proper styling, use one of the eight required contextual classes (e.g., .alert-success). For inline dismissal, use the alerts jQuery plugin.</p>\r\n', 'Event-20210111110230.jpg', 11, 'Jakarta', 'Jl. Cikutra', '2020-12-23 16:09:00', 100000, 20, 'POSTING'),
(13, '2021 Bisnis Meroket', '2021-01-11', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cum nihil veritatis error harum explicabo sint commodi magnam dolore minima temporibus, omnis maxime beatae maiores sit tenetur labore, numquam aliquam dolorum.</p>\r\n', 'Event-20210111014148.jpg', 11, 'Cikutra', 'Jl. Cikutra', '2021-01-29 15:30:00', 10000, 12, 'POSTING');

-- --------------------------------------------------------

--
-- Table structure for table `event_daftar`
--

CREATE TABLE `event_daftar` (
  `id_daftar` int(11) NOT NULL,
  `id_event` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_daftar`
--

INSERT INTO `event_daftar` (`id_daftar`, `id_event`, `id_user`, `keterangan`) VALUES
(3, 13, 31, 'diproses Operator');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id_info` int(11) NOT NULL,
  `jenis_info` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `tgl_info` date NOT NULL,
  `foto_info` varchar(100) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id_info`, `jenis_info`, `deskripsi`, `tgl_info`, `foto_info`, `id_user`) VALUES
(2, 'Term and Condition', '<p>Testingan aja bro....</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod aliquid, mollitia odio veniam sit iste esse assumenda amet aperiam exercitationem, ea animi blanditiis recusandae! Ratione voluptatum molestiae adipisci, beatae obcaecati.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod aliquid, mollitia odio veniam sit iste esse assumenda amet aperiam exercitationem, ea animi blanditiis recusandae! Ratione voluptatum molestiae adipisci, beatae obcaecati.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod aliquid, mollitia odio veniam sit iste esse assumenda amet aperiam exercitationem, ea animi blanditiis recusandae! Ratione voluptatum molestiae adipisci, beatae obcaecati.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod aliquid, mollitia odio veniam sit iste esse assumenda amet aperiam exercitationem, ea animi blanditiis recusandae! Ratione voluptatum molestiae adipisci, beatae obcaecati.</p>\r\n', '2020-12-10', 'Kosong', 11),
(3, 'Event', '<p>Event aja bro....</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod aliquid, mollitia odio veniam sit iste esse assumenda amet aperiam exercitationem, ea animi blanditiis recusandae! Ratione voluptatum molestiae adipisci, beatae obcaecati.</p>\r\n', '2020-12-10', 'Event-20201210021920.jpg', 11),
(4, 'Course', '<p>Ini Course.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod aliquid, mollitia odio veniam sit iste esse assumenda amet aperiam exercitationem, ea animi blanditiis recusandae! Ratione voluptatum molestiae adipisci, beatae obcaecati.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-12-10', 'Info-20201210090616.jpg', 11),
(5, 'Membership Info', '<p>Ini Info Membership</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod aliquid, mollitia odio veniam sit iste esse assumenda amet aperiam exercitationem, ea animi blanditiis recusandae! Ratione voluptatum molestiae adipisci, beatae obcaecati.</p>\r\n', '2020-12-10', 'Info-20201210091335.jpg', 11),
(6, 'Kontak Kami', '<h3><strong>Head Office</strong></h3>\r\n\r\n<p>Jl. Raya Mangga Besar</p>\r\n\r\n<p>(021) 6008999</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<h3><strong>Availability Time</strong></h3>\r\n\r\n<p>Senin - Jum&#39;at 09.00 WIB - 17.00 WIB</p>\r\n\r\n<p><sup>*</sup>&nbsp;except holiday</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-12-10', 'Kosong', 11),
(7, 'EliTES Membership', '<p>Lorem Ipsum&nbsp;adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf.</p>\r\n', '2021-01-11', 'Info-20210111063158.jpg', 11);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto_kelas` varchar(100) NOT NULL,
  `kondisi` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `deskripsi`, `foto_kelas`, `kondisi`) VALUES
(3, 'KELAS 1', '<p><strong>Keterangan:</strong></p>\r\n\r\n<p>akakjajja hahAK ahhakakhkhak ahkhAKha ahkahk.&nbsp;akakjajja hahAK ahhakakhkhak ahkhAKha ahkahk.&nbsp;akakjajja hahAK ahhakakhkhak ahkhAKha ahkahk.&nbsp;akakjajja hahAK ahhakakhkhak ahkhAKha ahkahk.&nbsp;akakjajja hahAK ahhakakhkhak ahkhAKha ahkahk.&nbsp;akakjajja hahAK ahhakakhkhak ahkhAKha ahkahk.</p>\r\n', 'Kelas-20201223052823.jpg', 'POSTING'),
(4, 'KELAS 2', '<p>asajskajs sakskajska sakjska.&nbsp;asajskajs sakskajska sakjska.&nbsp;asajskajs sakskajska sakjska.&nbsp;asajskajs sakskajska sakjska.&nbsp;asajskajs sakskajska sakjska.&nbsp;asajskajs sakskajska sakjska.&nbsp;asajskajs sakskajska sakjska.&nbsp;asajskajs sakskajska sakjska.&nbsp;asajskajs sakskajska sakjska.&nbsp;asajskajs sakskajska sakjska.</p>\r\n', 'Kelas-20201002052337.jpg', 'POSTING'),
(5, 'KELAS 3', '<p>sanskaksjka saksak.&nbsp;sanskaksjka saksak.&nbsp;&nbsp;sanskaksjka saksak.&nbsp;sanskaksjka saksak.&nbsp;sanskaksjka saksak.&nbsp;&nbsp;sanskaksjka saksak.&nbsp;sanskaksjka saksak.&nbsp;sanskaksjka saksak.&nbsp;&nbsp;sanskaksjka saksak.&nbsp;sanskaksjka saksak.&nbsp;sanskaksjka saksak.&nbsp;&nbsp;sanskaksjka saksak.&nbsp;sanskaksjka saksak.&nbsp;sanskaksjka saksak.&nbsp;&nbsp;sanskaksjka saksak.&nbsp;sanskaksjka saksak.&nbsp;sanskaksjka saksak.&nbsp;&nbsp;sanskaksjka saksak.&nbsp;</p>\r\n\r\n<p>sanskaksjka saksak.&nbsp;sanskaksjka saksak.&nbsp;&nbsp;sanskaksjka saksak.&nbsp;sanskaksjka saksak.&nbsp;sanskaksjka saksak.&nbsp;&nbsp;sanskaksjka saksak.&nbsp;</p>\r\n', 'Kelas-20201014014908.jpg', 'POSTING'),
(6, 'KELAS 4', '<p>sajsakjksa sakshjkajska skhjahska.&nbsp;sajsakjksa sakshjkajska skhjahska.&nbsp;sajsakjksa sakshjkajska skhjahska.&nbsp;sajsakjksa sakshjkajska skhjahska.sajsakjksa sakshjkajska skhjahska.&nbsp;sajsakjksa sakshjkajska skhjahska.sajsakjksa sakshjkajska skhjahska.&nbsp;sajsakjksa sakshjkajska skhjahska.sajsakjksa sakshjkajska skhjahska.&nbsp;sajsakjksa sakshjkajska skhjahska.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Kelas-20201024014924.jpg', 'POSTING'),
(7, 'KELAS 5', '<p>sajsakjksa sakshjkajska skhjahska.&nbsp;sajsakjksa sakshjkajska skhjahska.sajsakjksa sakshjkajska skhjahska.&nbsp;sajsakjksa sakshjkajska skhjahska.sajsakjksa sakshjkajska skhjahska.&nbsp;sajsakjksa sakshjkajska skhjahska.sajsakjksa sakshjkajska skhjahska.&nbsp;sajsakjksa sakshjkajska skhjahska.sajsakjksa sakshjkajska skhjahska.&nbsp;sajsakjksa sakshjkajska skhjahska.sajsakjksa sakshjkajska skhjahska.&nbsp;sajsakjksa sakshjkajska skhjahska.</p>\r\n', 'Kelas-20201024015017.jpg', 'POSTING');

-- --------------------------------------------------------

--
-- Table structure for table `kontak_kami`
--

CREATE TABLE `kontak_kami` (
  `id_kontak` int(11) NOT NULL,
  `nama_kontak` varchar(50) NOT NULL,
  `email` varchar(25) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kontak_kami`
--

INSERT INTO `kontak_kami` (`id_kontak`, `nama_kontak`, `email`, `deskripsi`) VALUES
(1, 'Willy', 'wilnus@gmail.com', 'Yeah'),
(2, 'Aristyo Budiman', 'aridto@gmail.com', 'Keren');

-- --------------------------------------------------------

--
-- Table structure for table `kursus`
--

CREATE TABLE `kursus` (
  `id_kursus` int(11) NOT NULL,
  `nama_kursus` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `link_video` varchar(50) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `foto_kursus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kursus`
--

INSERT INTO `kursus` (`id_kursus`, `nama_kursus`, `deskripsi`, `link_video`, `id_kelas`, `foto_kursus`) VALUES
(9, 'Tujuan Bisnis Keren', '<p>akakjajja hahAK ahhakakhkhak ahkhAKha ahkahk.&nbsp;akakjajja hahAK ahhakakhkhak ahkhAKha ahkahk.&nbsp;akakjajja hahAK ahhakakhkhak ahkhAKha ahkahk.&nbsp;akakjajja hahAK ahhakakhkhak ahkhAKha ahkahk.&nbsp;akakjajja hahAK ahhakakhkhak ahkhAKha ahkahk.&nbsp;akakjajja hahAK ahhakakhkhak ahkhAKha ahkahk.</p>\r\n', 'https://www.youtube.com/watch?v=Jeh5xWs3prI', 3, 'Kosong'),
(10, 'Motivasi Berbisnis', '<p>alsakhska sahksha skahksha sakhshka sakhskah hskahska sahkhska.&nbsp;alsakhska sahksha skahksha sakhshka sakhskah hskahska sahkhska.&nbsp;alsakhska sahksha skahksha sakhshka sakhskah hskahska sahkhska.&nbsp;alsakhska sahksha skahksha sakhshka sakhskah hskahska sahkhska.&nbsp;alsakhska sahksha skahksha sakhshka sakhskah hskahska sahkhska.</p>\r\n\r\n<p>alsakhska sahksha skahksha sakhshka sakhskah hskahska sahkhska.&nbsp;alsakhska sahksha skahksha sakhshka sakhskah hskahska sahkhska.&nbsp;alsakhska sahksha skahksha sakhshka sakhskah hskahska sahkhska.&nbsp;alsakhska sahksha skahksha sakhshka sakhskah hskahska sahkhska.&nbsp;alsakhska sahksha skahksha sakhshka sakhskah hskahska sahkhska.</p>\r\n\r\n<p>alsakhska sahksha skahksha sakhshka sakhskah hskahska sahkhska.&nbsp;alsakhska sahksha skahksha sakhshka sakhskah hskahska sahkhska.&nbsp;alsakhska sahksha skahksha sakhshka sakhskah hskahska sahkhska.&nbsp;alsakhska sahksha skahksha sakhshka sakhskah hskahska sahkhska.&nbsp;alsakhska sahksha skahksha sakhshka sakhskah hskahska sahkhska.</p>\r\n', 'https://www.youtube.com/watch?v=t4U3ZP8ekDo', 3, 'Kosong'),
(11, 'Tipe Pebisnis ', '<p><strong>Belajar Aja coy</strong></p>\r\n\r\n<p>asajskajs sakskajska sakjska.&nbsp;asajskajs sakskajska sakjska.&nbsp;asajskajs sakskajska sakjska.&nbsp;asajskajs sakskajska sakjska.&nbsp;asajskajs sakskajska sakjska.&nbsp;asajskajs sakskajska sakjska.&nbsp;asajskajs sakskajska sakjska.&nbsp;asajskajs sakskajska sakjska.&nbsp;asajskajs sakskajska sakjska.&nbsp;asajskajs sakskajska sakjska.</p>\r\n', 'https://www.youtube.com/watch?v=5zMNkUkRxSQ', 4, 'Kosong'),
(12, 'NOTE', '<p style=\"text-align:center\"><span style=\"font-size:36pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong><u>NOTE</u></strong></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:13.999999999999998pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">LEGENDA:</span></span></span></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:13.999999999999998pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>CAPS BOLD TEXT</strong></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:13.999999999999998pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">TOMBOL</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:13.999999999999998pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Normal text</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:13.999999999999998pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Keterangan jenis page / isi page / pop up message</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:17pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">Untuk content dan wireframe tolong dilihat </span></span></span><span style=\"font-size:17pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><u>kode slide</u></span></span></span><span style=\"font-size:17pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"> dan </span></span></span><span style=\"font-size:17pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><u>kode page</u></span></span></span><span style=\"font-size:17pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">&nbsp;</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:13.999999999999998pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>ALPHABET</strong></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:13.999999999999998pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>ANGKA</strong></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'https://www.youtube.com/watch?v=f7VQ8LNleQ0', 3, 'Kosong'),
(13, 'Overall Description', '<h2>2.1Perspektif Produk</h2>\r\n\r\n<p><span style=\"font-size:small\"><span style=\"font-size:medium\"><em>Vertical Parking</em></span><span style=\"font-size:medium\"> adalah product terbaru yang di buat oleh BPPT yang sistem parkirnya berbentuk arah </span><span style=\"font-size:medium\"><em>vertical</em></span><span style=\"font-size:medium\">. Untuk dapat menggunakan </span><span style=\"font-size:medium\"><em>Vertical Parking</em></span><span style=\"font-size:medium\"> ini </span><span style=\"font-size:medium\"><em>user</em></span><span style=\"font-size:medium\"> melakukan Reservasi melalui media aplikasi Android. Saat user mencapai titik temu dari </span><span style=\"font-size:medium\"><em>Vertical Parking</em></span><span style=\"font-size:medium\"> terdekat, user harus melakukan konfirmasi kepada operator untuk dapat menggunakan layanan </span><span style=\"font-size:medium\"><em>Vertical Parking</em></span><span style=\"font-size:medium\">. Berikut ini ditampilkan </span><span style=\"font-size:medium\"><em>product</em></span><span style=\"font-size:medium\"> perspective dari </span><span style=\"font-size:medium\">aplikasi Android dan Web Admin </span><span style=\"font-size:medium\"><em>Vertical Pariking</em></span><span style=\"font-size:medium\">.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a name=\"__RefHeading___Toc51781356\"></a> <span style=\"font-size:small\"><strong>Gambar 2‑1 Gambar Product Perspective</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><a name=\"__RefHeading___Toc53254382\"></a> 2.1.1Fungsionalitas Product</h3>\r\n\r\n<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Berikut adalah Modul dari Aplikasi Vertical Parking</span></span></p>\r\n\r\n<h4><a name=\"__RefHeading___Toc53254383\"></a> 2.1.1.1Modul Admin</h4>\r\n\r\n<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Modul ini berbentuk aplikasi website berfungsi sebagai media Admin untuk memonitoring, melayani keluhan dari operator maupun user dari Vertical Parking yang menggunakan fasilitas Vertical Parking.</span></span></p>\r\n\r\n<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Fungsionalitas dari Modul ini </span>adalah<span style=\"font-size:medium\">:</span></span></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Authentikasi : Berfungsi sebagai media keamanan untuk dapat menggunakan akses web sebagai Admin dengan fitur Registrasi, Login, dan Logout </span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Dashboard : Berfungsi sebagai media halaman utama ketika admin masuk pertama kali setelah melalui authentikas login ataupun register berisikan informasi umum yang dapat digunakan untuk memonitoring kegiatan yang ada pada vertical parking</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Slot &amp; Lokasi Parkir : Berfungsi untuk mengecek dan melihat seluruh pemakaian slot parkir dari lokasi parkir yang sudah tersedia, berguna juga untuk menambahkan lokasi baru vertical parking</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Log User dan Operator : Berfungsi untuk memberikan layanan hak akses pada user dan operator, juga sebagai authentikasi registrasi operator</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Setting User : Berfungsi untuk mengubah profile dari user admin</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Sales : Berfungsi untuk memontoring kegiatan pemasaran dari vertical parking</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Statistic : Berfungsi untuk melihat statistic dari vertical parkir yang nantinya akan di tampilkan dalam bentuk tulisan dan grafik</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Chat User dan Operator : Berfungsi sebagai halaman komunikasi pada user maupun operator apabila ada keluhan dari operator ataupun dari user</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Cek Saran dan Rating : Berfungsi untuk memonitoring saran dan penilaian dari user vertical parking</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Waiting list : Berfungsi untuk melihat waiting list pada slot parkir yang tersedia</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Atur Harga Parkir(Price List) : Berfungsi untuk mengatur harga parkir di setiap daerah yang sudah di sediakan Vertical Parking</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><a name=\"_Hlk53252022\"></a> <span style=\"font-size:small\"><span style=\"font-size:medium\">Notifikasi : Berfungsi sebagai media pengingat oleh admin</span></span></p>\r\n	</li>\r\n</ol>\r\n', 'https://www.youtube.com/watch?v=iiTo2z2HWg4', 3, 'Kosong'),
(14, 'Kursus Keren Banget Coy', '<p><a href=\"https://drive.google.com/file/d/14puc_9XUEWRrJWnxKkC3oVuf1dDSK9DA/view?usp=sharing\">Download File</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" dir=\"ltr\">\r\n	<tbody>\r\n		<tr>\r\n			<td>POSISI PROYEK</td>\r\n			<td colspan=\"5\" rowspan=\"1\">MINGGU 1</td>\r\n			<td colspan=\"5\" rowspan=\"1\">MINGGU 2</td>\r\n			<td colspan=\"5\" rowspan=\"1\">MINGGU 3</td>\r\n			<td colspan=\"5\" rowspan=\"1\">MINGGU 4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Instalasi SoMAchine &amp; SQL</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Proses Bisnis</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>User</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Log in</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Info Parkir</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Booking</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Check in</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Check Out</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Payment</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>History Transaksi</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Profil</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Log Out</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operator</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Log In</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Scan Barcode</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Slot Parkir</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Berita Harian</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Notifikasi</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'https://www.youtube.com/watch?v=0WEaZ_5StVM', 3, 'Kosong');
INSERT INTO `kursus` (`id_kursus`, `nama_kursus`, `deskripsi`, `link_video`, `id_kelas`, `foto_kursus`) VALUES
(15, 'Free User', '<p><img height=\"164\" src=\"file:///Users/macbook/Library/Application%20Support/LibreOffice/4/user/temp/lu30335gkkwx.tmp/lu30335gkkx4_tmp_15928302d01ede5.png\" width=\"545\" /></p>\r\n\r\n<p><span style=\"font-family:Arial,sans-serif\"><span style=\"font-size:48px\"><strong>SOFTWARE REQUIREMENT SPESIFICATION (SRS)</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:small\"><span style=\"font-family:Arial,sans-serif\"><span style=\"font-size:xx-large\">Aplikasi Vertical Parking </span></span></span></p>\r\n\r\n<p><span style=\"font-size:small\"><span style=\"font-family:Arial,sans-serif\"><span style=\"font-size:x-large\">Mobile App &amp; Web based</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-family:Arial,sans-serif\"><span style=\"font-size:x-large\">zapps.co.id</span></span></p>\r\n\r\n<p><span style=\"font-family:Arial,sans-serif\"><span style=\"font-size:x-large\">PT Dopay Aplikasi Indonesia</span></span></p>\r\n\r\n<p><span style=\"font-size:small\"><span style=\"font-family:Arial,sans-serif\"><span style=\"font-size:x-large\">October 2020</span></span></span></p>\r\n\r\n<p><span style=\"font-size:small\"><span style=\"font-family:Arial,sans-serif\"><span style=\"font-size:large\">V 2.0</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><a name=\"__RefHeading___Toc53254373\"></a> Daftar Isi</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:small\"><a href=\"#__RefHeading___Toc53254373\">Daftar Isi i</a></span></p>\r\n\r\n<p><span style=\"font-size:small\"><a href=\"#__RefHeading___Toc53254374\">Daftar Gambar ii</a></span></p>\r\n\r\n<p><span style=\"font-size:small\"><a href=\"#__RefHeading___Toc53254375\">1<span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"> </span></span>Pendahuluan 1</a></span></p>\r\n\r\n<p><span style=\"font-size:small\"><a href=\"#__RefHeading___Toc53254376\">1.1<span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"> </span></span>Tujuan 1</a></span></p>\r\n\r\n<p><span style=\"font-size:small\"><a href=\"#__RefHeading___Toc53254377\">1.2<span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"> </span></span>Lingkup Kerja 1</a></span></p>\r\n\r\n<p><span style=\"font-size:small\"><a href=\"#__RefHeading___Toc53254378\">1.3<span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"> </span></span>Definisi, Akronim dan Singkatan 1</a></span></p>\r\n\r\n<p><span style=\"font-size:small\"><a href=\"#__RefHeading___Toc53254379\">1.4<span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"> </span></span>Deskripsi Dokumen 2</a></span></p>\r\n\r\n<p><span style=\"font-size:small\"><a href=\"#__RefHeading___Toc53254380\">2<span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"> </span></span>Overall Description 4</a></span></p>\r\n\r\n<p><span style=\"font-size:small\"><a href=\"#__RefHeading___Toc53254381\">2.1<span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"> </span></span>Perspektif Produk 4</a></span></p>\r\n\r\n<p><span style=\"font-size:small\"><a href=\"#__RefHeading___Toc53254382\">2.1.1<span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"> </span></span>Fungsionalitas Product 4</a></span></p>\r\n\r\n<p><span style=\"font-size:small\"><a href=\"#__RefHeading___Toc53254383\">2.1.1.1<span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"> </span></span>Modul Admin 4</a></span></p>\r\n\r\n<p><span style=\"font-size:small\"><a href=\"#__RefHeading___Toc53254384\">2.1.1.2<span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"> </span></span>Modul User 5</a></span></p>\r\n\r\n<p><span style=\"font-size:small\"><a href=\"#__RefHeading___Toc53254385\">2.1.1.3<span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"> </span></span>Modul Operator 6</a></span></p>\r\n\r\n<p><span style=\"font-size:small\"><a href=\"#__RefHeading___Toc53254386\">2.1.2<span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"> </span></span>Hardware Interface 7</a></span></p>\r\n\r\n<p><span style=\"font-size:small\"><a href=\"#__RefHeading___Toc53254387\">2.1.3<span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"> </span></span>Software Interfaces 7</a></span></p>\r\n\r\n<p><span style=\"font-size:small\"><a href=\"#__RefHeading___Toc53254388\">2.2<span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"> </span></span>User Characteristics 7</a></span></p>\r\n\r\n<p><span style=\"font-size:small\"><a href=\"#__RefHeading___Toc53254389\">2.3<span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"> </span></span>Constraints 7</a></span></p>\r\n\r\n<p><span style=\"font-size:small\"><a href=\"#__RefHeading___Toc53254390\">3<span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"> </span></span>Deskripsi Rinci Kebutuhan 8</a></span></p>\r\n\r\n<p><span style=\"font-size:small\"><a href=\"#__RefHeading___Toc53254391\">3.1<span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"> </span></span>Struktur Tabel Basis Data Master 8</a></span></p>\r\n\r\n<p><span style=\"font-size:small\"><a href=\"#__RefHeading___Toc53254392\">3.2<span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"> </span></span>Penjelasan Proses Alur User 8</a></span></p>\r\n\r\n<p><span style=\"font-size:small\"><a href=\"#__RefHeading___Toc53254393\">3.2.1<span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"> </span></span>Proses Registrasi 9</a></span></p>\r\n\r\n<p><span style=\"font-size:small\"><a href=\"#__RefHeading___Toc53254394\">3.2.2<span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"> </span></span>Proses Login 10</a></span></p>\r\n\r\n<p><span style=\"font-size:small\"><a href=\"#__RefHeading___Toc53254395\">3.2.3<span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"> </span></span>Proses booking 11</a></span></p>\r\n\r\n<p><span style=\"font-size:small\"><a href=\"#__RefHeading___Toc53254396\">3.2.4<span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"> </span></span>Proses top up 12</a></span></p>\r\n\r\n<p><span style=\"font-size:small\"><a href=\"#__RefHeading___Toc53254397\">3.2.5<span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"> </span></span>Proses Checkout 13</a></span></p>\r\n\r\n<p><span style=\"font-size:small\"><a href=\"#__RefHeading___Toc53254398\">3.3<span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"> </span></span>Non Functions Requirements (<em>Software System Attributes</em>) 13</a></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><a name=\"__RefHeading___Toc53254374\"></a> <span style=\"font-size:large\">Daftar Gambar</span></h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:small\"><a href=\"#__RefHeading___Toc51781356\">Gambar 2‑1 Gambar Product Perspective 3</a></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><a name=\"__RefHeading___Toc53254375\"></a> 1Pendahuluan</h1>\r\n\r\n<h2><a name=\"__RefHeading___Toc53254376\"></a> 1.1Tujuan</h2>\r\n\r\n<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Tujuan dari dokumen ini adalah untuk menjelaskan secara rinci fitur</span><span style=\"font-size:medium\"><em>, interface, tools</em></span><span style=\"font-size:medium\">, dan fungsi aplikasi Android dan Web Admin </span><span style=\"font-size:medium\"><em>Vertical Pariking</em></span><span style=\"font-size:medium\"> yang akan dikembangkan. Dokumen ini ditujukan untuk </span><span style=\"font-size:medium\"><em>stakeholder </em></span><span style=\"font-size:medium\">dan pengembang aplikasi sehingga memiliki kesamaan pandangan dan dapat dijadikan sebagai acuan dalam pengembangan aplikasi Android dan Web Admin </span><span style=\"font-size:medium\"><em>Vertical Pariking</em></span><span style=\"font-size:medium\">.</span></span></p>\r\n\r\n<h2><a name=\"__RefHeading___Toc53254377\"></a> 1.2Lingkup Kerja</h2>\r\n\r\n<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Aplikasi </span><span style=\"font-size:medium\">Android dan Web Admin </span><span style=\"font-size:medium\"><em>Vertical Pariking</em></span><span style=\"font-size:medium\"> </span><span style=\"font-size:medium\">ini ditujukan untuk mendukung kegiatan operasional perangkat </span><span style=\"font-size:medium\"><em>Vertical Parking </em></span><span style=\"font-size:medium\"> yang telah dikembangkan oleh BPPT. Ada 3 (tiga) aplikasi software yang akan dikembangkan yakni Aplikasi Android untuk konsumen, Aplikasi Android untuk operator dan Web Admin untuk admin. Aplikasi Android versi konsumen, memungkinakn konsumen untuk melakukan pemesanan (</span><span style=\"font-size:medium\"><em>reservasi</em></span><span style=\"font-size:medium\">), cek lokasi terdekat dan slot parkir kosong, tanpa harus mendatangi lokasi </span><span style=\"font-size:medium\"><em>Vertical Parkir</em></span><span style=\"font-size:medium\">. Sedangkan Aplikasi Android (operator) memudahkan pihak operator untuk melakukan verifikasi kedatangan user. Untuk Aplikasi Web Admin, aplikasi ini memungkinkan admin untuk dapat melihat rangkuman kegiatan operasional (</span><span style=\"font-size:medium\"><em>sales, statistic, history</em></span><span style=\"font-size:medium\">,</span><span style=\"font-size:medium\"><em> comment, chatting</em></span><span style=\"font-size:medium\">) </span><span style=\"font-size:medium\"><em>Vertical Parking</em></span><span style=\"font-size:medium\"> secara </span><span style=\"font-size:medium\"><em>real time online </em></span><span style=\"font-size:medium\">serta melakukan pengaturan user (</span><span style=\"font-size:medium\"><em>ban/unbanned</em></span><span style=\"font-size:medium\">). Aplikasi Android dan Web admin </span><span style=\"font-size:medium\"><em>Vertical Parking </em></span><span style=\"font-size:medium\"> ini juga memungkinkan user dan operator/admin untuk melakukan </span><span style=\"font-size:medium\"><em>chatting</em></span><span style=\"font-size:medium\"> sehingga jika terjadi sesuatu hal yang kurang jelas atau ada hal yang perlu dikomunikasikan kepada konsumen dapat dilakukan melalui aplikasi/web admin.</span></span></p>\r\n\r\n<h2><a name=\"__RefHeading___Toc53254378\"></a> 1.3Definisi, Akronim dan Singkatan</h2>\r\n\r\n<ol>\r\n	<li value=\"1\">\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Android: Dikembangkan oleh Google, Operating yang popular saat ini dan paling banyak penggunanya.</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">CPU: Central Processing Unit (CPU). CPU adalah perangkat keras dalam komputer yang bertugas mengkalkulasi matematis. Semua eksekusi program dilakukan oleh CPU. Di dalam CPU terdapat komponen ALU (</span><span style=\"font-size:medium\"><em>arithmetic logic unit), cache </em></span><span style=\"font-size:medium\">dan</span><span style=\"font-size:medium\"><em> registers</em></span><span style=\"font-size:medium\">. </span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">GUI: </span><span style=\"font-size:medium\"><em>Graphical User Interface</em></span><span style=\"font-size:medium\">. Sebuah interface yang menampilkan hasil input melalui layar grafis. </span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Disk Storage: Pusat Penyimpan Data </span><span style=\"font-size:medium\"><em>Vertical Parking</em></span><span style=\"font-size:medium\">. </span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">HTML: Hypertext Markup Language. Pada dokumen ini diasumsikan menggunakan HTML version 5 yang dikembangkan oleh </span><span style=\"font-size:medium\"><em>World Wide Web Consortium</em></span><span style=\"font-size:medium\">.</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">IDE: Integrated Development Environment adalah alat yang digunakan programmer untuk menulis kode program. </span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Java: Java adalah Bahasa pemograman yang dikembangkan oleh James Gosling (Sun Microsystems). Java adalah Bahasa </span><span style=\"font-size:medium\"><em>general-purpose, concurrent, class-based, object-oriented</em></span><span style=\"font-size:medium\"> yang khusus di desain tanpa bergantung pada bahasa lain. </span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">OS: </span><span style=\"font-size:medium\"><em>Operating System</em></span><span style=\"font-size:medium\"> </span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">RAM: </span><span style=\"font-size:medium\"><em>Memory</em></span><span style=\"font-size:medium\"> yang di gunakan oleh CPU untuk menyimpan data sementara dalam menjalankan program aplikasi. </span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">SRS: </span><span style=\"font-size:medium\"><em>Software Requirements Specification</em></span><span style=\"font-size:medium\">. </span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Windows: Dikembangkan oleh Microsoft, </span><span style=\"font-size:medium\"><em>Operating System </em></span><span style=\"font-size:medium\">yang paling banyak digunakan untuk computer desktop.</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\"><strong>SRS</strong></span><span style=\"font-size:medium\"><em> </em></span><span style=\"font-size:medium\">(</span><span style=\"font-size:medium\"><em>Software Requirement Specification</em></span><span style=\"font-size:medium\">) : dokumen yang menggambarkan secara detail spesifikasi kebutuhan perangkat lunak dalam pengembangan aplikasi Smart Parking.</span></span></p>\r\n	</li>\r\n</ol>\r\n\r\n<h2><a name=\"__RefHeading___Toc53254379\"></a> 1.4Deskripsi Dokumen</h2>\r\n\r\n<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:medium\">Dokumen SRS ini dibagi menjadi tiga bagian utama. Bagian utama merupakan pendahuluan yang berisi penjelasan tentang dokumen SRS yang mencakup tujuan pembuatan dokumen ini, lingkup masalah yang diselesaikan oleh perangkat lunak yang dikembangkan, definisi,dan referensi. Bagian kedua merupakan deskripsi global perangkat lunak yang penjelasan secara umum mengenai perangkat lunak yang akan dikembangkan meliputi fungsi dari perangkat lunak, karakteristik pengguna, batasan, dan asumsi yang diambil dalam pengembangan perangkat lunak. Bagian ketiga adalah deskripsi rinci kebutuhan yang berisi uraian kebutuhan perangkat lunak secara lebih rinci.</span></span></span></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<h1><a name=\"__RefHeading___Toc53254380\"></a> 2Overall Description</h1>\r\n\r\n<h2><a name=\"__RefHeading___Toc53254381\"></a> 2.1Perspektif Produk</h2>\r\n\r\n<p><span style=\"font-size:small\"><span style=\"font-size:medium\"><em>Vertical Parking</em></span><span style=\"font-size:medium\"> adalah product terbaru yang di buat oleh BPPT yang sistem parkirnya berbentuk arah </span><span style=\"font-size:medium\"><em>vertical</em></span><span style=\"font-size:medium\">. Untuk dapat menggunakan </span><span style=\"font-size:medium\"><em>Vertical Parking</em></span><span style=\"font-size:medium\"> ini </span><span style=\"font-size:medium\"><em>user</em></span><span style=\"font-size:medium\"> melakukan Reservasi melalui media aplikasi Android. Saat user mencapai titik temu dari </span><span style=\"font-size:medium\"><em>Vertical Parking</em></span><span style=\"font-size:medium\"> terdekat, user harus melakukan konfirmasi kepada operator untuk dapat menggunakan layanan </span><span style=\"font-size:medium\"><em>Vertical Parking</em></span><span style=\"font-size:medium\">. Berikut ini ditampilkan </span><span style=\"font-size:medium\"><em>product</em></span><span style=\"font-size:medium\"> perspective dari </span><span style=\"font-size:medium\">aplikasi Android dan Web Admin </span><span style=\"font-size:medium\"><em>Vertical Pariking</em></span><span style=\"font-size:medium\">.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img height=\"381\" src=\"file:///Users/macbook/Library/Application%20Support/LibreOffice/4/user/temp/lu30335gkkwx.tmp/lu30335gkkx4_tmp_9894dca56ab4916a.jpg\" width=\"684\" /></p>\r\n\r\n<p><a name=\"__RefHeading___Toc51781356\"></a> <span style=\"font-size:small\"><strong>Gambar 2‑1 Gambar Product Perspective</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><a name=\"__RefHeading___Toc53254382\"></a> 2.1.1Fungsionalitas Product</h3>\r\n\r\n<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Berikut adalah Modul dari Aplikasi Vertical Parking</span></span></p>\r\n\r\n<h4><a name=\"__RefHeading___Toc53254383\"></a> 2.1.1.1Modul Admin</h4>\r\n\r\n<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Modul ini berbentuk aplikasi website berfungsi sebagai media Admin untuk memonitoring, melayani keluhan dari operator maupun user dari Vertical Parking yang menggunakan fasilitas Vertical Parking.</span></span></p>\r\n\r\n<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Fungsionalitas dari Modul ini </span>adalah<span style=\"font-size:medium\">:</span></span></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Authentikasi : Berfungsi sebagai media keamanan untuk dapat menggunakan akses web sebagai Admin dengan fitur Registrasi, Login, dan Logout </span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Dashboard : Berfungsi sebagai media halaman utama ketika admin masuk pertama kali setelah melalui authentikas login ataupun register berisikan informasi umum yang dapat digunakan untuk memonitoring kegiatan yang ada pada vertical parking</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Slot &amp; Lokasi Parkir : Berfungsi untuk mengecek dan melihat seluruh pemakaian slot parkir dari lokasi parkir yang sudah tersedia, berguna juga untuk menambahkan lokasi baru vertical parking</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Log User dan Operator : Berfungsi untuk memberikan layanan hak akses pada user dan operator, juga sebagai authentikasi registrasi operator</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Setting User : Berfungsi untuk mengubah profile dari user admin</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Sales : Berfungsi untuk memontoring kegiatan pemasaran dari vertical parking</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Statistic : Berfungsi untuk melihat statistic dari vertical parkir yang nantinya akan di tampilkan dalam bentuk tulisan dan grafik</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Chat User dan Operator : Berfungsi sebagai halaman komunikasi pada user maupun operator apabila ada keluhan dari operator ataupun dari user</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Cek Saran dan Rating : Berfungsi untuk memonitoring saran dan penilaian dari user vertical parking</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Waiting list : Berfungsi untuk melihat waiting list pada slot parkir yang tersedia</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Atur Harga Parkir(Price List) : Berfungsi untuk mengatur harga parkir di setiap daerah yang sudah di sediakan Vertical Parking</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><a name=\"_Hlk53252022\"></a> <span style=\"font-size:small\"><span style=\"font-size:medium\">Notifikasi : Berfungsi sebagai media pengingat oleh admin</span></span></p>\r\n	</li>\r\n</ol>\r\n\r\n<h4><a name=\"__RefHeading___Toc53254384\"></a> 2.1.1.2Modul User</h4>\r\n\r\n<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Modul ini berbentuk aplikasi android Berfungsi sebagai media User untuk booking/reservasi layanan Vertical Parking.</span></span></p>\r\n\r\n<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Fungsionalitas dari Modul ini adalah:</span></span></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Authentikasi : Berfungsi sebagai media keamanan untuk dapat menggunakan akses aplikasi dengan fitur Register, Login, dan Logout</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Reservasi Parkir : Berfungsi sebagai media booking user pada Vertical parking yang di inginkan </span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Chat Operator : Berfungsi sebagai media komunikasi user dengan operator</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Parkir Terdekat : Berfungsi untuk melihat layanan vertical parking terdekat dengan daerah user</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Information : Berfungsi untuk melihat informasi Operator yang melayani vertical parking</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">History Reservasi : Berfungsi untuk melihat History activitas dari reservasi parking yang pernah di gunakan oleh User</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Cek CCTV : Berfungsi untuk melihat kondisi mobil user melalui CCTV</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Generate QR Konfirmasi : Berfungsi untuk media konfirmasi layanan parkir user dengan operator</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">TOP UP : Berfungsi sebagai layanan media Top-Up E-wallet user</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">PAYMENT : Berfungsi sebagai layanan pembayaran Vertical Parking</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Durasi parkir : Berfungsi untuk melihat informasi durasi parkir dan harga parkir</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Rating &amp; Comment : Berfungsi untuk menilai layanan vertical parking</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Waiting list : Berfungsi sebagai tempat apabila slot parkir maka user akan di tempatkan di waiting list sesuai nomor urut</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><a name=\"_Hlk53252839\"></a> <span style=\"font-size:small\"><span style=\"font-size:medium\">Notifikasi : Berfungsi sebagai media pengingat oleh user</span></span></p>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4><a name=\"__RefHeading___Toc53254385\"></a> 2.1.1.3Modul Operator</h4>\r\n\r\n<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Modul ini berbentuk aplikasi android berfungsi sebagai media Operator untuk dapat menerima pesanan booking dari user yang akan menggunakan fasilitas Vertical Parking.</span></span></p>\r\n\r\n<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Fungsionalitas dari Modul ini adalah:</span></span></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Authentikasi : Berfungsi sebagai media keamanan untuk dapat menggunakan akses aplikasi dengan fitur Login, dan Logout, untuk registrasi operator dilakukan atas ijin admin</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Cek slot Parkir : Berfungsi untuk memindai slot parkir yang tersedia pada tempat vertical parking yang di layani oleh operator</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Information User : Berfungsi untuk melihat informasi user yang akan melakukan reservasi parking dari identitas nama sampai mobil</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Chat User : Berfungsi sebagai media komunikasi antara operator dan user</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Waiting list : Berfungsi untuk melihat user yang masuk ke dalam waiting list yang nanti akan menggunakan layanan Vertical Parking saat slot parkir penuh</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Berita Acara harian : Berfungsi sebagai laporan harian operator pada admin ketika ada laporan kegiatan yang harus di laporkan</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Profile : berfungsi untuk melihat identitas operator sendiri</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Scan QR : Berfungsi untuk mengkonfirmasi pesanan user dengan cara scan QR pada user yang sudah </span><span style=\"font-size:medium\"><em>mengenerate</em></span><span style=\"font-size:medium\"> QR code pada aplikasinya</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Notifikasi : Berfungsi sebagai media pengingat oleh admin</span></span></p>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><a name=\"__RefHeading___Toc53254386\"></a> 2.1.2Hardware Interface</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Android Phone atau Tablet</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:medium\">Browser</span></p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><a name=\"__RefHeading___Toc53254387\"></a> 2.1.3Software Interfaces</h3>\r\n\r\n<ol>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Os : windows 10</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Tools : Android Studio, Visual Studio Code</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Platform : Android SDK FrameWork, Laravel</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">IDE : Android Studio</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Android Emulator : SDK Version 2.6 or Higher</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Technologies Used: JDK, Kotlin XML, PHP, HTML, JavaScript</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Browser : Google Chrome</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:medium\">Database : SQL</span></p>\r\n	</li>\r\n</ol>\r\n\r\n<h2><a name=\"__RefHeading___Toc53254388\"></a> 2.2User Characteristics</h2>\r\n\r\n<p><span style=\"font-size:small\">Aplikasi Smart Parking ini terdiri dari 3 fungsi yaitu </span></p>\r\n\r\n<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Karakteristik dari pengguna aplikasi ini adalah:</span></span></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">User harus bisa mengoperasikan Android phones</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Operator harus bisa mengoperasikan Android phones</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Admin harus bisa menggunakan komputer dan tau cara menggunakan browser</span></span></p>\r\n	</li>\r\n</ol>\r\n\r\n<h2><a name=\"__RefHeading___Toc53254389\"></a> 2.3Constraints</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\">Jika user tidak bisa terkoneksi atau terhubung pada internet</span></span></p>\r\n	</li>\r\n</ul>\r\n\r\n<h1><a name=\"__RefHeading___Toc53254390\"></a> 3<span style=\"font-size:x-large\">Deskripsi Rinci Kebutuhan</span></h1>\r\n\r\n<h2><a name=\"__RefHeading___Toc53254391\"></a> 3.1Struktur Tabel Basis Data Master</h2>\r\n\r\n<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:medium\">Data master adalah basis data utama yang harus diisikan secara lengkap dan benar sebelum dapat menggunakan aplikasi Vertical Parking agar proses yang dijalankan dan output yang dihasilkan bisa sesuai dengan yang diharapkan.</span></span></span></p>\r\n\r\n<p><img height=\"559\" src=\"file:///Users/macbook/Library/Application%20Support/LibreOffice/4/user/temp/lu30335gkkwx.tmp/lu30335gkkx4_tmp_56e61dc8bffdb506.png\" width=\"811\" /></p>\r\n\r\n<h2><a name=\"__RefHeading___Toc53254392\"></a> 3.2Penjelasan Proses Alur User</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><a name=\"__RefHeading___Toc53254393\"></a> 3.2.1Proses Registrasi</h3>\r\n\r\n<table cellpadding=\"9\" cellspacing=\"0\" style=\"width:761px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"><strong>Alur Kerja</strong></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"><strong>Detil Proses</strong></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"><strong>User</strong></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"><strong>Input</strong></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"><strong>Output</strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan=\"6\">\r\n			<p><img height=\"652\" src=\"file:///Users/macbook/Library/Application%20Support/LibreOffice/4/user/temp/lu30335gkkwx.tmp/lu30335gkkx4_tmp_9559ecf9ef63ab7e.jpg\" width=\"120\" /></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">1. User Memilih Menu Registrasi</span></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">pengguna</span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Button event berlangsung</span></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Aplikasi akan menampilkan menu registrasi</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">2. User Mengisi Detail Registrasi</span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">pengguna</span></span></p>\r\n			</td>\r\n			<td>\r\n			<ol>\r\n				<li>\r\n				<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Username</span></span></p>\r\n				</li>\r\n				<li>\r\n				<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">No Telpon</span></span></p>\r\n				</li>\r\n				<li>\r\n				<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Email</span></span></p>\r\n				</li>\r\n				<li>\r\n				<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Password</span></span></p>\r\n				</li>\r\n			</ol>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Aplikasi merekam data registrasi pengguna.</span></span></span></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">3. User Menekan Button Submit</span></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">pengguna</span></span></p>\r\n			</td>\r\n			<td>\r\n			<ol>\r\n				<li>\r\n				<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Button event berlangsung</span></span></p>\r\n				</li>\r\n				<li>\r\n				<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Data registrasi pengguna</span></span></span></p>\r\n				</li>\r\n			</ol>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Aplikasi akan mengirimkan data registrasi pengguna ke server</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">4. User Menerima Sms Kode Verifikasi OTP</span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Pihak Pengelola Smart Parking</span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">No Telpon Pengguna yang telah di submit</span></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Sistem mengirimkan SMS berisi Kode OTP ke No Telpon Pengguna untuk verifikasi registrasi</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">5. User Memasukkan Kode OTP yang Diterima</span></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">pengguna</span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Kode OTP yang diterima</span></span></p>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>\r\n				<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Jika kode OTP benar maka pengguna dapat lanjut</span></span></p>\r\n				</li>\r\n				<li>\r\n				<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Jika kode OTP salah maka registrasi tidak bisa lanjut</span></span></span></p>\r\n				</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">5. User Melengkapi Data Diri </span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Pengguna </span></span></p>\r\n			</td>\r\n			<td>\r\n			<ol>\r\n				<li>\r\n				<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Nama lengkap</span></span></span></p>\r\n				</li>\r\n				<li>\r\n				<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Tempat dan Tanggal lahir</span></span></p>\r\n				</li>\r\n				<li>\r\n				<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Gender</span></span></span></p>\r\n				</li>\r\n				<li>\r\n				<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Alamat</span></span></p>\r\n				</li>\r\n				<li>\r\n				<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Provinsi</span></span></p>\r\n				</li>\r\n				<li>\r\n				<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Kota</span></span></p>\r\n				</li>\r\n			</ol>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>\r\n				<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Aplikasi merekam data diri pengguna dan mengirimkannya ke server</span></span></p>\r\n				</li>\r\n				<li>\r\n				<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Database menyimpan data diri pengguna</span></span></p>\r\n				</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>3.2.2Proses Login</h3>\r\n\r\n<table cellpadding=\"9\" cellspacing=\"0\" style=\"width:761px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"><strong>Alur Kerja</strong></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"><strong>Detil Proses</strong></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"><strong>User</strong></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"><strong>Input</strong></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"><strong>Output</strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan=\"3\">\r\n			<p><img height=\"686\" src=\"file:///Users/macbook/Library/Application%20Support/LibreOffice/4/user/temp/lu30335gkkwx.tmp/lu30335gkkx4_tmp_30c6c5015ed6664e.jpg\" width=\"172\" /></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">1. User Memilih Menu Login</span></span></span></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Pengguna </span></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Button event berlangsung</span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Aplikasi akan menampilkan menu login </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">2. User Menginputkan Username Dan Password</span></span></span></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Pengguna </span></span></p>\r\n			</td>\r\n			<td>\r\n			<ol>\r\n				<li>\r\n				<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Username/Email/No Telp</span></span></p>\r\n				</li>\r\n				<li>\r\n				<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Password</span></span></p>\r\n				</li>\r\n			</ol>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<ol>\r\n				<li>\r\n				<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Server akan melakukan verifikasi data login pengguna</span></span></p>\r\n				</li>\r\n				<li>\r\n				<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Jika data sesuai, pengguna dapa login, jika data salah, pengguna tidak bisa login</span></span></span></p>\r\n				</li>\r\n			</ol>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3>3.2.3Proses booking</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table cellpadding=\"9\" cellspacing=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><a name=\"_Hlk53253790\"></a> <span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"><strong>Alur Kerja</strong></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"><strong>Detil Proses</strong></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"><strong>User</strong></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"><strong>Input</strong></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"><strong>Output</strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan=\"7\">\r\n			<p><img height=\"622\" src=\"file:///Users/macbook/Library/Application%20Support/LibreOffice/4/user/temp/lu30335gkkwx.tmp/lu30335gkkx4_tmp_181e568d93a23bd8.jpg\" width=\"342\" /></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">1. User Mencari Lokasi Parkir Yang Tersedia</span></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Pengguna</span></span></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Kota Pengguna Saat Ini</span></span></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Aplikasi akan menampilkan pilihan Lokasi Parkir sesuai dengan Kota pengguna saat ini</span></span></span></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">2. User Memilih Lokasi Parkir Yang Tersedia</span></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Pengguna </span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Button event beralngsung</span></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Menampilkan ketersediaan slot berdasarkan lokasi yang dipilih</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">3.Memilih Slot Yang Tersedia</span></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Pengguna </span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Ketersediaan slot parkir di Lokasi parkir vertikal</span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Aplikasi akan menampilkan jumlah slot yang masih tersedia</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">4. User Memilih Waktu Masuk*</span></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">pengguna</span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Waktu </span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Slot parkir akan tersedia saat waktu yang sudah ditentukan pengguna</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">5. User Mengecek Detail Reservasi</span></span></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Pengguna </span></span></p>\r\n			</td>\r\n			<td>\r\n			<ol>\r\n				<li>\r\n				<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Lokasi parkir</span></span></p>\r\n				</li>\r\n				<li>\r\n				<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Waktu masuk </span></span></p>\r\n				</li>\r\n			</ol>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Informasi detail berupada rincian booking yang akan dilakukan user</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">6. User Memilih Metode Pembayaran</span></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">pengguna</span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Button event berlangsung</span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Aplikasi akan menampilkan halaman cara melakukan pembayaran sesuai dengan metode pembayaran yang dipilih</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">7. User Melakukan Pembayaran</span></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Pengguna</span></span></p>\r\n			</td>\r\n			<td>\r\n			<ol>\r\n				<li>\r\n				<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Jumlah yang harus dibayarkan</span></span></p>\r\n				</li>\r\n				<li>\r\n				<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Metode pembayaran pengguna</span></span></span></p>\r\n				</li>\r\n				<li>\r\n				<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Id pembayaran user</span></span></p>\r\n				</li>\r\n			</ol>\r\n			</td>\r\n			<td>\r\n			<ol>\r\n				<li>\r\n				<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Aplikasi melakukan verifikasi pembayaran</span></span></span></p>\r\n				</li>\r\n				<li>\r\n				<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Slot parkir terbooking</span></span></p>\r\n				</li>\r\n			</ol>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>3.2.4Proses top up</h3>\r\n\r\n<table cellpadding=\"9\" cellspacing=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><a name=\"_Hlk53253859\"></a> <span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"><strong>Alur Kerja</strong></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"><strong>Detil Proses</strong></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"><strong>User</strong></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"><strong>Input</strong></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"><strong>Output</strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan=\"3\">\r\n			<p><img height=\"543\" src=\"file:///Users/macbook/Library/Application%20Support/LibreOffice/4/user/temp/lu30335gkkwx.tmp/lu30335gkkx4_tmp_b6bd0690a84c8239.jpg\" width=\"140\" /></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">1.User Mengakses Menu Top Up</span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Pengguna</span></span></span></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Button event berlangsung</span></span></span></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Aplikasi akan menampilkan menu Top Up</span></span></span></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">2.Memilih Metode Top Up</span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Pengguna </span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Button event berlangsung</span></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Aplikasi akan menampilkan halaman yang menjelaskan mengenai cara Top Up denga metode tersebut</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">3. User Melakukan Top Up Saldo Sesuai Dengan Metode Pilihannya</span></span></span></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Pengguna </span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Id Top Up unik dari pengguna</span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Saldo akan bertambah setelah Top Up Berhasil dilakukan</span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>3.2.5Proses Checkout</h3>\r\n\r\n<table cellpadding=\"9\" cellspacing=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><a name=\"_Hlk53254148\"></a> <span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"><strong>Alur Kerja</strong></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"><strong>Detil Proses</strong></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"><strong>User</strong></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"><strong>Input</strong></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:small\"><strong>Output</strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan=\"3\">\r\n			<p><img height=\"585\" src=\"file:///Users/macbook/Library/Application%20Support/LibreOffice/4/user/temp/lu30335gkkwx.tmp/lu30335gkkx4_tmp_584234388d0322f5.jpg\" width=\"130\" /></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">1.User Men Scan QR Code Pada QR Code Scanner</span></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Pengguna</span></span></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">QR Code Unik Pengguna di Aplikasi </span></span></span></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Perhintungan durasi Parkir pengguna akan berhenti</span></span></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">2.User Meihat Detail Pembayaran</span></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Pengguna </span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Scan QR Code</span></span></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Aplikasi akan menampilkan halaman detail pembayaran yang harus dibayarkan pengguna</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">3. User Melakukan Pembayaran</span></span></span></p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Pengguna </span></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:small\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Id order unik pengguna </span></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:x-small\">Tagihan parkir lunas</span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>3.3Non Functions Requirements (<em>Software System Attributes</em>)</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\"><strong>Reliability:</strong></span><span style=\"font-size:medium\"> Aplikasi Android yang dikembangkan dapat dijalankan pada berbagai macam jenis dan merek Handphone Android.</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\"><strong>Availability</strong></span><span style=\"font-size:medium\">: Aplikasi Android dan Web yang dikembangkan dapat diakses selama 24 jam X 7 hari selama koneksi internet tersedia.</span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\"><strong>Security</strong></span><span style=\"font-size:medium\">: Untuk keamanan maka ada </span><span style=\"font-size:medium\"><em>username</em></span><span style=\"font-size:medium\"> dan </span><span style=\"font-size:medium\"><em>password </em></span><span style=\"font-size:medium\">yang berbeda untuk setiap user serta disediakan </span><span style=\"font-size:medium\"><em>leveling admin (admin </em></span><span style=\"font-size:medium\">dan</span><span style=\"font-size:medium\"><em> super admin).</em></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\"><strong>Maintainability:</strong></span><span style=\"font-size:medium\"> Perawatan (</span><span style=\"font-size:medium\"><em>Maintenance</em></span><span style=\"font-size:medium\">) adalah kegiatan yang dilakukan setelah pelaksanaan pengembangan </span><span style=\"font-size:medium\"><em>software </em></span><span style=\"font-size:medium\">selesai dilaksanakan. Seiring perubahan waktu dan kebutuhan dilapangan maka Aplikasi Android dan Web Admin yang dikembangkan dapat diberikan perawatan agar kehandalan </span><span style=\"font-size:medium\"><em>software </em></span><span style=\"font-size:medium\">tetap optimal. </span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:small\"><span style=\"font-size:medium\"><strong>Portability</strong></span><span style=\"font-size:medium\">: Kemampuan untuk dipindahkan pada lokasi yang berbeda. Dikarenakan Handphone bersifat portable maka memenuhi kriteria </span><span style=\"font-size:medium\"><em>portability </em></span><span style=\"font-size:medium\">(aplikasi tertanam dalam </span><span style=\"font-size:medium\"><em>Handphone)</em></span><span style=\"font-size:medium\">.</span></span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'https://www.youtube.com/watch?v=tZt6YQK73K8', 3, 'Kosong');
INSERT INTO `kursus` (`id_kursus`, `nama_kursus`, `deskripsi`, `link_video`, `id_kelas`, `foto_kursus`) VALUES
(20, 'Jangan Bertompererome', '<p>ksakshka sakshakhs sakshka sakhska.&nbsp;ksakshka sakshakhs sakshka sakhska.ksakshka sakshakhs sakshka sakhska.ksakshka sakshakhs sakshka sakhska.ksakshka sakshakhs sakshka sakhska.</p>\r\n', 'Kosong', 3, 'kursus-20210106020324.jpg'),
(21, 'Jangan ada kata \"Aduh\"', '<p>sasaasasas.</p>\r\n', 'Kosong', 3, 'kursus-20210112085655.jpg'),
(22, 'Selalu Semangat', '<p>knkaksakns sakskaskaksha askahsak.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/CLUs4IiEgbA\" width=\"560\"></iframe></p>\r\n\r\n<p>nskansknsasasaksa sjajska.</p>\r\n', 'Kosong', 3, 'kursus-20210113050709.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `paket_member`
--

CREATE TABLE `paket_member` (
  `id_paket` int(11) NOT NULL,
  `nama_paket` varchar(50) NOT NULL,
  `harga_member` double NOT NULL,
  `deskripsi_paket` text NOT NULL,
  `kondisi` varchar(10) NOT NULL,
  `jumlah_kelas` int(11) NOT NULL,
  `foto_paket` varchar(100) NOT NULL,
  `masa_berlaku` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paket_member`
--

INSERT INTO `paket_member` (`id_paket`, `nama_paket`, `harga_member`, `deskripsi_paket`, `kondisi`, `jumlah_kelas`, `foto_paket`, `masa_berlaku`) VALUES
(5, 'Free User', 0, '<p>lsalsjsaksjajs shakhsa sahkshakhsa sjasjagjsga .&nbsp;ajskajksjak sahskahhsa shahskahksa hskahksa sahkhskahsa sakhskaha hsakhkah.</p>\r\n', 'POSTING', 1, 'paket-20201219105108.jpg', 'Free'),
(6, 'Self Employee', 2000000, '<p>lsalsjsaksjajs shakhsa sahkshakhsa sjasjagjsga .&nbsp;ajskajksjak sahskahhsa shahskahksa hskahksa sahkhskahsa sakhskaha hsakhkah.</p>\r\n', 'POSTING', 3, 'paket-20201219105125.jpg', '1 Tahun'),
(7, 'Enterpreneur', 4000000, '<p>lsalsjsaksjajs shakhsa sahkshakhsa sjasjagjsga .&nbsp;ajskajksjak sahskahhsa shahskahksa hskahksa sahkhskahsa sakhskaha hsakhkah.</p>\r\n', 'POSTING', 6, 'paket-20201219105143.jpg', '1 Tahun');

-- --------------------------------------------------------

--
-- Table structure for table `sosmed`
--

CREATE TABLE `sosmed` (
  `id_sosmed` int(11) NOT NULL,
  `nama_sosmed` varchar(50) NOT NULL,
  `link_sosmed` varchar(50) NOT NULL,
  `logo_sosmed` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sosmed`
--

INSERT INTO `sosmed` (`id_sosmed`, `nama_sosmed`, `link_sosmed`, `logo_sosmed`) VALUES
(1, 'Website', 'https://te-society.com/', 'sosmed-20201219091258.jpg'),
(2, 'Facebook', 'https://www.facebook.com/thesociety/', 'sosmed-20201219084006.jpg'),
(3, 'Instagram', 'https://www.instagram.com/', 'sosmed-20201219084349.jpg'),
(4, 'Youtube', 'https://www.youtube.com/', 'sosmed-20201219084815.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `nama_transaksi` varchar(50) NOT NULL,
  `no_rek` varchar(50) NOT NULL,
  `nama_rekening` varchar(50) NOT NULL,
  `tgl_transaksi` datetime NOT NULL,
  `id_paket` int(11) DEFAULT NULL,
  `id_event` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `biaya_transaksi` double NOT NULL,
  `keterangan` varchar(25) NOT NULL,
  `baca_admin` varchar(20) NOT NULL,
  `baca_member` varchar(20) NOT NULL,
  `foto_struk` varchar(100) DEFAULT NULL,
  `tgl_berakhir` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `nama_transaksi`, `no_rek`, `nama_rekening`, `tgl_transaksi`, `id_paket`, `id_event`, `id_user`, `biaya_transaksi`, `keterangan`, `baca_admin`, `baca_member`, `foto_struk`, `tgl_berakhir`) VALUES
(43, 'Upgrade Membership ke-Self Employee', '1000', 'Danny Julian', '2023-12-20 12:10:17', 6, NULL, 31, 2000000, 'Expired', 'Belum dibaca', 'Sudah dibaca', 'Struk_paketMember-20201223071017.jpg', '2020-12-23'),
(45, 'Mengikuti Event 2021 Bisnis Meroket', '121212121', 'Danny Julian', '2012-01-21 03:24:29', NULL, 13, 31, 10000, 'Ok', 'Sudah dibaca', 'Sudah dibaca', 'Struk_event-20210112092429.jpg', '2021-01-12');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `hak_akses` varchar(15) NOT NULL,
  `status` varchar(15) NOT NULL,
  `setuju` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `alamat`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `email`, `password`, `foto`, `hak_akses`, `status`, `setuju`) VALUES
(11, 'Admin', 'Antapanai', '1990-07-29', '', '08989898989', 'evenan@mail.com', '123456', 'Kosong', 'Administrator', 'Aktif', ''),
(31, 'Danny Julian', 'Antapani', '1993-07-29', 'Laki-laki', '085822260147', 'julianpratamad@gmail.com', '123456', 'User-20201218082355.jpg', 'Member', 'Aktif', 'Ya'),
(39, 'Meri', 'Cikutra', '2000-10-10', 'Perempuan', '0898989899821', 'merici@gmail.com', '123456', 'user-20201222094756.jpg', 'Member', 'Aktif', 'Ya'),
(40, 'Mogi Wildan', 'Jln. Website', '2010-10-10', 'Laki-laki', '08989898989', 'mogwil@gmail.com', '123456', 'User-20201219030634.jpg', 'Member', 'Aktif', 'Ya'),
(41, 'Salsabila', 'Bojongkoneng', '2000-01-18', 'Laki-laki', '089898989812', 'salsa@gmail.com', '123456', 'User-20201219030926.jpg', 'Member', 'Aktif', 'Ya'),
(42, 'Heri Susanto', 'Kalbar', '1992-12-19', 'Laki-laki', '08898899899', 'herisan@gmail.com', '123456', 'User-20201219031146.jpg', 'Member', 'Aktif', 'Ya'),
(44, 'Juki', 'Antapani', '2000-12-12', 'Laki-laki', '08992121', 'jukini@gmail.com', '122', 'Kosong', 'Member', 'Aktif', 'Ya'),
(45, 'Melsa', 'sasaa', '1990-12-12', 'Laki-laki', '089898898', 'melsa@gmail.com', '12345', 'Kosong', 'Member', 'Aktif', 'Ya'),
(46, 'Joni Lengke', 'Cikutra', '1998-10-10', 'Laki-laki', '08988989898', 'jonileng@gmail.com', '111111', 'Kosong', 'Member', 'Aktif', 'Ya'),
(48, 'Uzumaki Naruto', 'Konoha', '1990-10-10', 'Laki-laki', '0898898989', 'uzumaki@gmail.com', '123456', 'Kosong', 'Member', 'Aktif', 'Ya'),
(51, 'Reza', 'Malangbong', '1991-01-12', 'Laki-laki', '997979779', 'rezabong@gmail.com', '123456', 'User-20201222105539.jpg', 'Administrator', 'Aktif', 'Ya'),
(52, 'Mita Mitaan', 'Cikutra', '1992-12-12', 'Laki-laki', '08989898998', 'mitaan@gmail.com', '123456', 'Kosong', 'Member', 'Aktif', 'Ya');

-- --------------------------------------------------------

--
-- Table structure for table `user_preneur`
--

CREATE TABLE `user_preneur` (
  `id_userpreneur` int(11) NOT NULL,
  `nama_bisnis` varchar(50) NOT NULL,
  `tahun_dirikan` year(4) NOT NULL,
  `bidang_usaha` varchar(50) NOT NULL,
  `akun_instagram` varchar(25) DEFAULT NULL,
  `page_facebook` varchar(50) DEFAULT NULL,
  `website_bisnis` varchar(25) DEFAULT NULL,
  `omset_bulanan` varchar(27) NOT NULL,
  `jumlah_karyawan` varchar(27) NOT NULL,
  `deskripsi_usaha` text NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_provinsi` varchar(50) NOT NULL,
  `alamat_bisnis` varchar(100) NOT NULL,
  `email_bisnis` varchar(50) NOT NULL,
  `telp_bisnis` varchar(15) NOT NULL,
  `foto_usaha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_preneur`
--

INSERT INTO `user_preneur` (`id_userpreneur`, `nama_bisnis`, `tahun_dirikan`, `bidang_usaha`, `akun_instagram`, `page_facebook`, `website_bisnis`, `omset_bulanan`, `jumlah_karyawan`, `deskripsi_usaha`, `id_user`, `nama_provinsi`, `alamat_bisnis`, `email_bisnis`, `telp_bisnis`, `foto_usaha`) VALUES
(6, 'DRINK LIFE', 2018, 'Minuman Herbal', 'jbjbbj', '', '', 'Rp 25 Juta - Rp 50 Juta', '50-100 Orang', 'Jual Minuman', 31, 'ACEH', '', '', '', 'Kosong');

-- --------------------------------------------------------

--
-- Table structure for table `user_status`
--

CREATE TABLE `user_status` (
  `id_userstats` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_paket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_status`
--

INSERT INTO `user_status` (`id_userstats`, `id_user`, `id_paket`) VALUES
(23, 31, 5),
(24, 39, 6),
(25, 40, 5),
(26, 41, 7),
(27, 42, 5),
(29, 44, 5),
(30, 45, 5),
(31, 46, 5),
(33, 48, 5),
(36, 52, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id_event`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `event_daftar`
--
ALTER TABLE `event_daftar`
  ADD PRIMARY KEY (`id_daftar`),
  ADD KEY `id_event` (`id_event`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id_info`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `kontak_kami`
--
ALTER TABLE `kontak_kami`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `kursus`
--
ALTER TABLE `kursus`
  ADD PRIMARY KEY (`id_kursus`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `paket_member`
--
ALTER TABLE `paket_member`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indexes for table `sosmed`
--
ALTER TABLE `sosmed`
  ADD PRIMARY KEY (`id_sosmed`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_paket` (`id_paket`),
  ADD KEY `id_event` (`id_event`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_user_2` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user_preneur`
--
ALTER TABLE `user_preneur`
  ADD PRIMARY KEY (`id_userpreneur`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `user_status`
--
ALTER TABLE `user_status`
  ADD PRIMARY KEY (`id_userstats`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_paket` (`id_paket`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `event_daftar`
--
ALTER TABLE `event_daftar`
  MODIFY `id_daftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kontak_kami`
--
ALTER TABLE `kontak_kami`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kursus`
--
ALTER TABLE `kursus`
  MODIFY `id_kursus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `paket_member`
--
ALTER TABLE `paket_member`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sosmed`
--
ALTER TABLE `sosmed`
  MODIFY `id_sosmed` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `user_preneur`
--
ALTER TABLE `user_preneur`
  MODIFY `id_userpreneur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_status`
--
ALTER TABLE `user_status`
  MODIFY `id_userstats` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `event_daftar`
--
ALTER TABLE `event_daftar`
  ADD CONSTRAINT `event_daftar_ibfk_1` FOREIGN KEY (`id_event`) REFERENCES `event` (`id_event`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `event_daftar_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `info`
--
ALTER TABLE `info`
  ADD CONSTRAINT `info_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kursus`
--
ALTER TABLE `kursus`
  ADD CONSTRAINT `kursus_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `event` FOREIGN KEY (`id_event`) REFERENCES `event` (`id_event`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `paket` FOREIGN KEY (`id_paket`) REFERENCES `paket_member` (`id_paket`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_preneur`
--
ALTER TABLE `user_preneur`
  ADD CONSTRAINT `user_preneur_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_status`
--
ALTER TABLE `user_status`
  ADD CONSTRAINT `paketan` FOREIGN KEY (`id_paket`) REFERENCES `paket_member` (`id_paket`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
