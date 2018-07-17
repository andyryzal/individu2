-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 12 Jul 2018 pada 00.03
-- Versi Server: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

DROP TABLE IF EXISTS `berita`;
CREATE TABLE IF NOT EXISTS `berita` (
  `id_berita` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_kategori_berita` int(11) NOT NULL,
  `slug_berita` varchar(255) NOT NULL,
  `nama_berita` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `jenis_berita` varchar(20) NOT NULL,
  `status_berita` varchar(20) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_berita`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id_berita`, `id_user`, `id_kategori_berita`, `slug_berita`, `nama_berita`, `keterangan`, `jenis_berita`, `status_berita`, `gambar`, `tanggal_post`, `tanggal`) VALUES
(6, 5, 1, 'umkm-center-dongkrak-pertumbuhan-ekonomi-masyarakat', 'UMKM Center Dongkrak Pertumbuhan Ekonomi Masyarakat', '<div class=\"thumb-wrap\"><strong>JEPARA &ndash;</strong>&nbsp;dikenal sebagai kota ukir, dan memang demikianlah adanya. Namun di dalam pertumbuhannya, Jepara tidak lagi dihuni oleh satu cluster perekonomian saja. Bukti mengatakan bahwa di Jepara banyak bermunculan cluster-cluster lain berbentuk Usaha Mikro Kecil &amp; Menengah (UMKM) yang ikut bertahan di tengah gejolak ekonomi dan mengangkat perekonomian Jepara. Dalam Musyawarah Perencanaan Pembangunan Pemerintah Kabupaten (MUSREMBANGKAB) Jepara (22 Maret 2016),</div>\r\n<div class=\"post-content-wrap\">\r\n<p>Bupati Jepara, KH. Ahmad Marzuki, menyebutkan kondisi pertumbuhan ekonomi Kabupaten Jepara tahun 2011 s/d 2014 bergerak secara fluktuatif di angka 5,44%, 5,84%, 5,25% dan 5,64%. Sementara, di Jawa Tengah untuk kurun waktu tahun 2011 s/d 2015 sebesar 5,30%, 5,34%, 5,14%, 5,42%, dan 5,4%. Dan cukup disayangkan, dari statistik (BPS, 2012) diketahui bahwa 98% UMKM didominasi oleh pelaku usaha yang berorientasi bertahan hidup (survival), dan belum pada orientasi untuk tumbuh dan berkembang (entrepreneurial).</p>\r\n<p>Oleh karena itu, untuk meningkatkan pertumbuhan ekonomi Kabupaten Jepara, sekaligus meningkatkan perkembangan UMKM yang berdaya saing tinggi, maka pada hari Kamis 24 Maret 2016, bertempat di Gd. Jepara Trade &amp; Tourism Center Desa Rengging Kecamatan Pecangaan Jepara, KADIN Jepara meresmikan program &ldquo;UMKM Center (UMKM-C) .</p>\r\n<p>&rdquo; Peresmian tersebut adalah upaya KADIN Kabupaten Jepara dalam memenuhi amanat Undang-Undang Nomor 1 tahun 1987 tentang Kamar Dagang dan Industri yang mewajibkan KADIN sebagai wadah pelaku Usaha dalam membantu pemerintah untuk meningkatkan perekonomian masyarakat, &rdquo; Ungkap Ketua Kadin Jepara Abdul Kohar pada Kamis (24/3) .</p>\r\n<p>Prinsip kerja &ldquo;UMKM Center KADIN Kabupaten Jepara &rdquo; dibentuk dalam 3 (tiga) model kegiatan: Pertama, Pendirian klinik usaha; Kedua, Forum edukatif UMKM Jepara; Ketiga, Pembiayaan Mikro.</p>\r\n<p>&rdquo; Ditambah lagi ada 6 kegiatan pokok UMKM Center ini terdiri dari: Informasi Bisnis, Pelatihan dan Konsultasi, Fasilitas Permodalan, Pusat Promosi, Galeri Pameran (Expo), dan Kontes Kreatif. &rdquo; terangnya .</p>\r\n<p>Untuk menjaga keberlangsungan program, Abdul Kohar menambahkan , KADIN Kabupaten Jepara membangun kemitraan dengan beberapa dinas instansi di pemerintahan Kabupaten Jepara .</p>\r\n<p>&rdquo; Diantarnya Dinas Industri dan Perdagangan, Dinas UMKM, Koperasi, dan Pengelola Pasar , Kantor Pelayanan Pajak&nbsp; Pratama Jepara, PT. Telkom Indonesia, dan PT. Pos Indonesia,&rdquo; jelas Kohar . .</p>\r\n</div>', 'Berita', 'Publish', 'IMG-20160324-WA0002.jpg', '2018-06-23 11:38:33', '2018-06-23 11:40:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_berita`
--

DROP TABLE IF EXISTS `kategori_berita`;
CREATE TABLE IF NOT EXISTS `kategori_berita` (
  `id_kategori_berita` int(11) NOT NULL AUTO_INCREMENT,
  `slug_kategori_berita` varchar(255) NOT NULL,
  `nama_kategori_berita` varchar(255) NOT NULL,
  `keterangan` text,
  `urutan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_kategori_berita`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_berita`
--

INSERT INTO `kategori_berita` (`id_kategori_berita`, `slug_kategori_berita`, `nama_kategori_berita`, `keterangan`, `urutan`) VALUES
(1, 'ekonomi', 'Ekonomi', 'Ekonomi', 1),
(2, 'bisnis-ukm', 'Bisnis UKM', 'Bisnis UKM', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_produk`
--

DROP TABLE IF EXISTS `kategori_produk`;
CREATE TABLE IF NOT EXISTS `kategori_produk` (
  `id_kategori_produk` int(11) NOT NULL AUTO_INCREMENT,
  `slug_kategori_produk` varchar(255) NOT NULL,
  `nama_kategori_produk` varchar(255) NOT NULL,
  `keterangan` text,
  `urutan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_kategori_produk`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_produk`
--

INSERT INTO `kategori_produk` (`id_kategori_produk`, `slug_kategori_produk`, `nama_kategori_produk`, `keterangan`, `urutan`) VALUES
(6, 'furniture-trembesi', 'Furniture Trembesi', 'Koleksi Produk Furniture Kayu Trembesi Suar Terlengkap\r\nBerikut adalah koleksi produk mebel jepara shop dari bahan kayu solid trembesi atau dikenal juga dengan kayu suar. Kebanyakan produk yang kami tampilkan disini merupakan foto asli dari hasil produksi kami.\r\n\r\nBahan meja kayu solid trembesi bisa dikombinasi dengan model kaki dari bahan besi atau stainless.\r\nHasil produk trembesi kami merupakan terlaris karena kualitas yang kami berikan dan tentunya dengan harga yang bersaing karena kami langsung dari perajin spesialis trembesi suar', 1),
(7, 'furniture-industrial', 'FURNITURE INDUSTRIAL', 'FURNITURE INDUSTRIAL JEPARA\r\nFurniture industrial merupakan produk mebel yang saat ini banyak dicari oleh banyak kalangan untuk mengisi perabot rumah yang berkesan vintage dan exotic. Mebel Jepara Shop juga berkomitmen untuk melayani customer dengan keinginan mengisi rumah dengan desin industrial', 2),
(8, 'meja-kantor', 'Meja Kantor', 'Meja Kantor Ini Digunakan Didalam Kantor Sebagai Furniture Penting Didalam Melakukan Berbagai Pekerjaan Didalam Kantor Agar Lebih Mudah Dan Dapat Lebih Cepat Baik Dalam Proses Pengerjaan ataupun Untuk Hal Lain Nya.', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfigurasi`
--

DROP TABLE IF EXISTS `konfigurasi`;
CREATE TABLE IF NOT EXISTS `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT,
  `home_setting` varchar(20) NOT NULL,
  `namaweb` varchar(200) NOT NULL,
  `tagline` varchar(200) DEFAULT NULL,
  `tentang` varchar(500) DEFAULT NULL,
  `gambar` text,
  `video` varchar(50) DEFAULT NULL,
  `yacht` text NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alamat` varchar(400) DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `keywords` varchar(400) DEFAULT NULL,
  `metatext` text,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `google_map` text,
  `judul_1` varchar(200) DEFAULT NULL,
  `pesan_1` varchar(200) DEFAULT NULL,
  `judul_2` varchar(200) DEFAULT NULL,
  `pesan_2` varchar(200) DEFAULT NULL,
  `judul_3` varchar(200) DEFAULT NULL,
  `pesan_3` varchar(200) DEFAULT NULL,
  `judul_4` varchar(200) DEFAULT NULL,
  `pesan_4` varchar(200) DEFAULT NULL,
  `judul_5` varchar(200) DEFAULT NULL,
  `pesan_5` varchar(200) NOT NULL,
  `judul_6` varchar(200) DEFAULT NULL,
  `pesan_6` varchar(200) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_konfigurasi`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `home_setting`, `namaweb`, `tagline`, `tentang`, `gambar`, `video`, `yacht`, `website`, `email`, `alamat`, `telepon`, `hp`, `fax`, `logo`, `icon`, `keywords`, `metatext`, `facebook`, `twitter`, `instagram`, `google_map`, `judul_1`, `pesan_1`, `judul_2`, `pesan_2`, `judul_3`, `pesan_3`, `judul_4`, `pesan_4`, `judul_5`, `pesan_5`, `judul_6`, `pesan_6`, `id_user`, `tanggal`) VALUES
(1, 'Image', 'ANDY ART GALLERY', 'Elegant Furniture & Natural Art Design', 'Perusahaan Mebel Dan Design Gallery', 'Seven_Seas_Upper_Deck1.jpg', 'fsH_KhUWfho', '<p>Through the adoption of a proactive stance, the astute manager can adopt a position at the vanguard. In order to build a shared view of what can be improved, to experience a profound paradigm shift, that will indubitably lay the firm foundations for any leading company. Exploitation of core competencies as an essential enabler, exploiting the productive lifecycle by moving executive focus from lag financial indicators to more actionable lead indicators.</p>\r\n<p>An investment program where cash flows exactly match shareholders\' preferred time patterns of consumption defensive reasoning, the doom loop and doom zoom highly motivated participants contributing to a valued-added outcome. In order to build a shared view of what can be improved, in a collaborative, forward-thinking venture brought together through the merging of like minds. Combined with optimal use of human resources, from binary cause and effect to complex patterns, working through a top-down, bottom-up approach. Maximization of shareholder wealth through separation of ownership from management measure the process, not the people. While those at the coal face don\'t have sufficient view of the overall goals.</p>\r\n<p>Whenever single-loop learning strategies go wrong, to focus on improvement, not cost, in order to build a shared view of what can be improved. An important ingredient of business process reengineering that will indubitably lay the firm foundations for any leading company the new golden rule gives enormous power to those individuals and units. Whenever single-loop learning strategies go wrong, building a dynamic relationship between the main players. Organizations capable of double-loop learning, through the adoption of a proactive stance, the astute manager can adopt a position at the vanguard.</p>\r\n<p>To ensure that non-operating cash outflows are assessed. An important ingredient of business process reengineering big is no longer impregnable to experience a profound paradigm shift. The new golden rule gives enormous power to those individuals and units, while those at the coal face don\'t have sufficient view of the overall goals. Taking full cognizance of organizational learning parameters and principles, working through a top-down, bottom-up approach, an investment program where cash flows exactly match shareholders\' preferred time patterns of consumption. Big is no longer impregnable in a collaborative, forward-thinking venture brought together through the merging of like minds.</p>\r\n<p>Through the adoption of a proactive stance, the astute manager can adopt a position at the vanguard. The three cs - customers, competition and change - have created a new world for business motivating participants and capturing their expectations, organizations capable of double-loop learning. To focus on improvement, not cost, exploiting the productive lifecycle taking full cognizance of organizational learning parameters and principles. Presentation of the process flow should culminate in idea generation, the balanced scorecard, like the executive dashboard, is an essential tool quantitative analysis of all the key ratios has a vital role to play in this.</p>\r\n<p> </p>', 'http://andyartgallery.com', 'admin@andyartgallery.com', 'Jalan Cik Lanang, Jobokuto Jepara Indonesia', '021-2253234', '082285956555', ' 021-5772727', 'Meja-Kayu-Trembesi-Finishing-Dark-Doff1.jpg', 'Meja-Makan-Kayu-Trembesi-Finishing-Dark-Doff.jpg', 'Mebel Art Gallery Jepara', '', 'https://web.facebook.com/andymuhammadryzal', '', 'https://www.instagram.com/andyryzall/?hl=id', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3964.796601287678!2d106.82206981477015!3d-6.420175095354896!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69ebd4856caaa7%3A0x916d6e8dc4e74cd9!2sJl.+Romo%2C+Tirtajaya%2C+Sukmajaya%2C+Kota+Depok%2C+Jawa+Barat+16412!5e0!3m2!1sid!2sid!4v1474512157953\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Indonesian Legal Wood', 'Serifikat', 'Melayani Kiriman Dalam Dan Luar Negeri', 'Jangkauan Kiriman', 'Meningkatkan Pelayanan Call Center', 'Kepuasan Langganan', 'Garansi Barang Dan Services', 'Perlindungan Konsumen', 'Desain Produk Sesuai Keinginan Anda', 'Kualitas Produk', 'Profesional & Bertanggung Jawab', 'Integritas', 5, '2018-06-26 10:43:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

DROP TABLE IF EXISTS `produk`;
CREATE TABLE IF NOT EXISTS `produk` (
  `id_produk` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_kategori_produk` int(11) NOT NULL,
  `slug_produk` varchar(255) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `status_produk` varchar(20) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_produk`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `id_user`, `id_kategori_produk`, `slug_produk`, `nama_produk`, `keterangan`, `harga`, `stok`, `satuan`, `status_produk`, `gambar`, `tanggal_post`, `tanggal`) VALUES
(6, 2, 6, 'meja-kayu-trembesi-industrial-kaki-besi', 'Meja Kayu Trembesi Industrial Kaki Besi', '<h1>Meja Trembesi Industrial Kaki Besi</h1>\r\n<p>Meja kayu trembesi dengan kombinasi kaki besi hollow warna hitam dan bergaya industrial ini memang masih jarang. Biasanya meja kayu slab utuh ini tebal sehingga nampak gagah. Namun kali ini produk meja trembesi ini dibuat dengan model gaya industrial dengan papan kayu yang tidak terlalu tebal serta kombinasi kaki besi yang dinamis.</p>\r\n<h2>Jual Meja Kayu Trembesi Industrial Kaki Besi</h2>\r\n<p>Meja dengan kayu solid ini dibuat berdasarkan model yang simple dan natural. Berikut ini adalah spesifikasinya:</p>\r\n<ul>\r\n<li>Bahan: Kayu Trembesi Suar Sambung</li>\r\n<li>Ukuran: 250x90x5</li>\r\n<li>Finishing: Natural Doff</li>\r\n<li>Kaki Meja: Besi hollow</li>\r\n</ul>\r\n<h3>Model Meja Kayu Trembesi Industrial Kaki Besi</h3>\r\n<p>Design dan model biasanya mengikut minat dari customer, silahkan contact kami jika anda mempunyai design sendiri.&nbsp;<a href=\"https://www.andyartgallery.com/\">Mebel Jepara</a>&nbsp;Shop Siap melayan</p>', 2000000, 3, 'Unit', 'Publish', 'Meja-Trembesi-Industrial-Jepara-300x300.jpg', '2018-06-08 17:39:44', '2018-06-08 17:39:44'),
(7, 5, 6, 'meja-kayu-trembesi-finishing-dark-doff', 'Meja Kayu Trembesi Finishing Dark Doff', '<h1><img src=\"Meja-Makan-Kayu-Trembesi-Finishing-Dark-Doff\" alt=\"\" />Meja Kayu Trembesi Finishing Dark Doff</h1>\r\n<p>Meja Kayu Trembesi adalah produk furniture berbahan kayu solid utuh tanpa sambungan yang sangat istimewa. Kayu Trembesi dapat juga dibuat untuk furniture lain. Karena sifat alami kayu yang besar, utuh solid slab, bahan kayu ini sangat banyak diminati sebagai alternatif pengganti kayu jati yang dengan bentuk yang sama akan sangat mahal harganya</p>\r\n<h2>Jual Meja Kayu Trembesi Finishing Dark Doff</h2>\r\n<p>Meja makan kayu trembesi ini dibuat dengan kombinasi finishing warna salak dark dengan top coat doff yang menjadikan nampak lebih mewah dan natural. Berikut ini adalah spesifikasi dari meja kayu trembesi ini.</p>\r\n<ul>\r\n<li>Bahan: Kayu Trembesi atau kayu suar</li>\r\n<li>Ukuran 200x90x78 tepi alami</li>\r\n<li>Finishing: Salak dark dengan top coating doff</li>\r\n</ul>\r\n<p><img src=\"C:\\wamp64\\www\\CodeIgniter\\assets\\gambar\\Meja-Makan-Kayu-Trembesi-Finishing-Dark-Doff\" alt=\"\" /></p>\r\n<p><img src=\"D:\\gambar mebel trembesi\\Meja-Makan-Kayu-Trembesi-Finishing-Dark-Doff\" alt=\"\" /></p>', 4000000, 4, 'Unit', 'Publish', 'Meja-Kayu-Trembesi-Finishing-Dark-Doff.jpg', '2018-06-08 18:33:20', '2018-06-09 19:52:43'),
(8, 5, 7, 'meja-cafe-industrial-kaki-besi-model-piramid', 'Meja Cafe Industrial Kaki Besi Model Piramid', '<p>Furniture untuk cafe memang bervariasi baik yang model classic, minimalis, atau model yang saat ini sedang trend yaitu furniture yang bertema industrial. Kali ini MJS Furniture menawarkan produk yang masih jarang ada di pasaran yaitu&nbsp;<a href=\"https://www.mebeljeparashop.com/meja-cafe-industrial-kaki-besi-model-piramid\">meja cafe industrial kaki besi</a>&nbsp;model piramid. Meja cafe unik ini berbentuk persegi dengan kombinasi design minimalis yang dinamis.</p>\r\n<p>Model Meja Resto Industrial Kaki Besi</p>\r\n<p>Meja cafe bisa juga dibuat untuk mengisi ruang makan anda. karena design yang simple membuat suasana ruang menjadi lebih efisien. Berikut ini adalah spesifikasi dari Meja cafe industrial kaki besi yang ada pada gambar website kami.</p>\r\n<ul>\r\n<li>Bahan Baku: Kayu Jati</li>\r\n<li>Kaki: Bahan Besi hollow</li>\r\n<li>Ukuran: 65x65x78cm</li>\r\n<li>Konstruksi: Kaki besi paten welding, kayu jati dengan lem epoxy dan sekrup kuat</li>\r\n<li>Finishing: kaki besi spray coating warna hitam, kayu jati natural antik</li>\r\n</ul>', 1400000, 4, 'Unit', 'Publish', 'Meja-Cafe-Industrial-Minimalis-300x300.jpg', '2018-06-09 19:36:07', '2018-06-09 19:36:07'),
(9, 5, 6, 'kayu-balok-kotak-solid', 'Kayu Balok Kotak Solid', '<p>Kayu Balok Kotak Solid ini dibuat dari bahan kayu trembesi atau biasa juga disebut dengan kayu suar. Model kotak solid tanpa sambungan menggunakan kayu utuh dan biasa digunakan untuk bangku atau mengisi perlengkapan rumah agar nampak cantik dengan kesan natural minimalis yang mewah.</p>\r\n<h2>Jual Kayu Balok Kotak Solid</h2>\r\n<p><img class=\"aligncenter size-full wp-image-5448\" src=\"https://www.mebeljeparashop.com/wp-content/uploads/2017/09/Bangku-Kayu-Balok-Kotak-Solid.jpg\" sizes=\"(max-width: 640px) 100vw, 640px\" srcset=\"https://www.mebeljeparashop.com/wp-content/uploads/2017/09/Bangku-Kayu-Balok-Kotak-Solid.jpg 640w, https://www.mebeljeparashop.com/wp-content/uploads/2017/09/Bangku-Kayu-Balok-Kotak-Solid-300x225.jpg 300w\" alt=\"bangku kayu balok kotak solid\" width=\"640\" height=\"480\" /></p>\r\n<p>Kami Mebel Jepara Shop menjual berbagai macam jenis furniture dari bahan kayu trembesi. Silahkan lihat model koleksi&nbsp;<a href=\"https://www.mebeljeparashop.com/category/mebel-trembesi/\" target=\"_blank\" rel=\"noopener\">furniture trembesi</a>&nbsp;kami. Berikut adalah spesifikasi dari balok kayu solid ini:</p>\r\n<ul>\r\n<li>Bahan: Kayu Trembesi</li>\r\n<li>Ukuran: 200x35x35</li>\r\n<li>Finishing: Natural Kayu</li>\r\n</ul>', 4000000, 5, 'Unit', 'Publish', 'Kayu-Balok-Kotak-Solid.jpg', '2018-06-23 11:12:00', '2018-06-23 11:12:00'),
(10, 5, 7, 'meja-tv-industrial-kaki-hairpin', 'Meja TV Industrial Kaki Hairpin', '<h1>Meja TV Industrial Kaki Hairpin</h1>\r\n<p>Meja TV Industrial kaki hairpin ini dibuat dengan sentuhan vintage yang sedang up to date. Produk furniture vintage Jepara saat ini banyak menjadi trend karena cocok apabila dipadukan dengan rumah bergaya baik minimalis maupun vintage. Kami juga punya produk sofa yang sedang trend yaitu</p>\r\n<p><a title=\"Sofa Chester Union Jack Design Original\" href=\"https://www.mebeljeparashop.com/sofa-chester-union-jack-design-original/\">Sofa Chester Union Jack Design Original</a></p>\r\n<p>Kesan furniture Industrial akan membawa suasana lampau sehingga situasi tidak membosankan.</p>\r\n<p><img class=\"aligncenter wp-image-5861\" src=\"https://www.mebeljeparashop.com/wp-content/uploads/2018/02/Meja-TV-Industrial-kaki-Hairpin.jpg\" sizes=\"(max-width: 399px) 100vw, 399px\" srcset=\"https://www.mebeljeparashop.com/wp-content/uploads/2018/02/Meja-TV-Industrial-kaki-Hairpin.jpg 570w, https://www.mebeljeparashop.com/wp-content/uploads/2018/02/Meja-TV-Industrial-kaki-Hairpin-300x300.jpg 300w\" alt=\"meja tv industrial kaki hairpin\" width=\"399\" height=\"399\" /></p>\r\n<h2>Jual Meja TV Industrial Kaki Hairpin</h2>\r\n<p>MJS Furniture menerima project furniture dengan berbagai konsep karena tenaga professional kami ahli pada masing-masing bidang. Salah satunya adalah produk furniture vintage Industrial. Berikut ini adalah spesifikasi dari meja tv industrial.</p>\r\n<ul>\r\n<li>Bahan kayu jati atau menyesuaikan permintaan</li>\r\n<li>Kaki besi Hairpin Style</li>\r\n<li>Finishing alami waterbased</li>\r\n<li>Panjang 140cm</li>\r\n<li>Lebar 40cm</li>\r\n<li>Tinggi 34cm</li>\r\n</ul>\r\n<h3>Model Gambar Meja TV Industrial Kaki Hairpin</h3>\r\n<p><img class=\"aligncenter wp-image-5862\" src=\"https://www.mebeljeparashop.com/wp-content/uploads/2018/02/TV-Stand-Industrial-Kaki-Hairpin.jpg\" sizes=\"(max-width: 399px) 100vw, 399px\" srcset=\"https://www.mebeljeparashop.com/wp-content/uploads/2018/02/TV-Stand-Industrial-Kaki-Hairpin.jpg 570w, https://www.mebeljeparashop.com/wp-content/uploads/2018/02/TV-Stand-Industrial-Kaki-Hairpin-300x300.jpg 300w\" alt=\"TV stand industrial kaki hairpin\" width=\"399\" height=\"399\" /></p>', 2450000, 10, 'Unit', 'Publish', 'Meja-TV-Industrial-kaki-Hairpin.jpg', '2018-06-23 11:14:47', '2018-06-23 11:14:47'),
(11, 5, 7, 'meja-cafe-unik-bundar-kaki-besi-industrial', 'Meja Cafe Unik Bundar Kaki Besi Industrial', '<h1>Meja Cafe Unik Bundar Kaki Besi Industrial</h1>\r\n<p><strong><a href=\"https://www.mebeljeparashop.com/meja-cafe-unik-bundar-kaki-besi-industrial\">Meja cafe unik</a></strong>&nbsp;merupakan produk furniture utama yang banyak di cari oleh pemilik cafe, karena keunikan design pada furniture cafe menciptakan suasana yang baru dan beda sehingga dapat menarik pelanggan untuk berkunjung ke cafe. Selain karena design, bahan baku yang tahan lama juga menjadi perhatian khusus karena meja untuk cafe harus kuat untuk digunakan sepanjang hari non stop dengan karakter orang yang berbeda-beda</p>\r\n<p><img class=\"aligncenter wp-image-5847\" src=\"https://www.mebeljeparashop.com/wp-content/uploads/2018/02/Meja-Cafe-Bundar-Kaki-Besi.jpg\" sizes=\"(max-width: 357px) 100vw, 357px\" srcset=\"https://www.mebeljeparashop.com/wp-content/uploads/2018/02/Meja-Cafe-Bundar-Kaki-Besi.jpg 1024w, https://www.mebeljeparashop.com/wp-content/uploads/2018/02/Meja-Cafe-Bundar-Kaki-Besi-300x300.jpg 300w, https://www.mebeljeparashop.com/wp-content/uploads/2018/02/Meja-Cafe-Bundar-Kaki-Besi-768x768.jpg 768w, https://www.mebeljeparashop.com/wp-content/uploads/2018/02/Meja-Cafe-Bundar-Kaki-Besi-600x600.jpg 600w\" alt=\"meja cafe unik bundar kaki besi industrial\" width=\"357\" height=\"357\" /></p>\r\n<h2>Jual Meja Cafe Unik Bundar Kaki Besi Industrial</h2>\r\n<p>Kami mebel jepara shop atau biasa dikenal dengan MJS Furniture menawarkan produk furniture meja cafe ini dengan spesifikasi berikut ini:</p>\r\n<ul>\r\n<li>Bahan: Kayu Jati</li>\r\n<li>Bahan Kaki: Besi hollow model double X</li>\r\n<li>Ukuran: Diameter 100cm, Tinggi 78cm</li>\r\n<li>Finishing Natural Rustic</li>\r\n</ul>', 3000000, 3, 'Unit', 'Publish', 'Meja-Cafe-Bundar-Kaki-Besi-600x600.jpg', '2018-06-23 11:16:26', '2018-06-23 11:16:26'),
(12, 5, 7, 'coffee-table-model-industrial-jepara', 'Coffee Table Model Industrial Jepara', '<h1>Coffee Table Model Industrial Jepara</h1>\r\n<p><em><strong>Coffee Table Model Industrial</strong></em>&nbsp;atau biasa juga disebut dengan meja tamu industrial kini menjadi pilihan bagi pecinta furniture vintage. Design yang kokoh dan kuat menjadi pilihan favorit bagi yang ingin menciptakan suasana unik di rumahnya. Coffee Table Industrial Jepara ini dibuat dengan bahan kayu jati belanda pilihan sehingga kesan kayu alami tua sangat nampak disini.</p>\r\n<p><img class=\"aligncenter  wp-image-5868\" src=\"https://www.mebeljeparashop.com/wp-content/uploads/2018/02/Coffee-Table-Model-Industrial-Jepara.jpg\" sizes=\"(max-width: 399px) 100vw, 399px\" srcset=\"https://www.mebeljeparashop.com/wp-content/uploads/2018/02/Coffee-Table-Model-Industrial-Jepara.jpg 640w, https://www.mebeljeparashop.com/wp-content/uploads/2018/02/Coffee-Table-Model-Industrial-Jepara-300x300.jpg 300w, https://www.mebeljeparashop.com/wp-content/uploads/2018/02/Coffee-Table-Model-Industrial-Jepara-600x600.jpg 600w\" alt=\"coffee table model industrial jepara\" width=\"399\" height=\"399\" /></p>\r\n<h2>Jual Coffee Table Model Industrial Jepara</h2>\r\n<p>Berikut ini adalah spesifikasi dari Coffee Table Industrial ini</p>\r\n<ul>\r\n<li>Bahan: Kayu Jati Belanda</li>\r\n<li>Bahan Besi: Besi Hollow yang berkualitas</li>\r\n<li>Finishing: Waterbased pada kayu, dan cat duco pada besi</li>\r\n<li>Ukuran: 120x80x40</li>\r\n</ul>', 2750000, 5, 'Unit', 'Publish', 'Coffee-Table-Model-Industrial-Jepara.jpg', '2018-06-23 11:19:19', '2018-06-23 11:19:19'),
(13, 5, 8, 'meja-komputer-classic-putih', 'Meja Komputer Classic Putih', '<h1>Jual Meja Komputer Classic Putih</h1>\r\n<p><img class=\" wp-image-5292 aligncenter\" src=\"https://www.mebeljeparashop.com/wp-content/uploads/2017/05/Meja-kerja-classic-putih.jpg\" sizes=\"(max-width: 818px) 100vw, 818px\" srcset=\"https://www.mebeljeparashop.com/wp-content/uploads/2017/05/Meja-kerja-classic-putih.jpg 640w, https://www.mebeljeparashop.com/wp-content/uploads/2017/05/Meja-kerja-classic-putih-300x225.jpg 300w\" alt=\"meja kerja classic putih\" width=\"818\" height=\"613\" /></p>\r\n<p><a href=\"https://www.mebeljeparashop.com/meja-kerja-classic-putih/\"><strong>Meja komputer</strong></a>&nbsp;classic putih merupakan meja kerja yang diproduksi oleh mebeljeparashop.com berkonsep classic. Meja komputer ini sangat cantik untuk mendukung aktifitas kerja anda, dilengkapi dengan banyak laci yang bisa anda gunakan untuk menyimpan berkas serta dilengkapi dengan tatakan keyboard yang melengkapi meja ini.</p>\r\n<h2>Model Meja Komputer Classic Putih</h2>\r\n<p><img class=\" wp-image-5293 aligncenter\" src=\"https://www.mebeljeparashop.com/wp-content/uploads/2017/05/Meja-kerja-komputer-classic.jpg\" sizes=\"(max-width: 784px) 100vw, 784px\" srcset=\"https://www.mebeljeparashop.com/wp-content/uploads/2017/05/Meja-kerja-komputer-classic.jpg 640w, https://www.mebeljeparashop.com/wp-content/uploads/2017/05/Meja-kerja-komputer-classic-300x225.jpg 300w\" alt=\"meja kerja komputer classic\" width=\"784\" height=\"588\" /></p>\r\n<p><em>Meja komputer</em>&nbsp;classic putih ini didesain dengan model classic yang sangat cocok diletakkan diruang kerja bernuansa classic dan elegant. Meja ini dibuat dengan material kayu Mahoni yang berkualitas sehingga membuat meja ini tahan lama, dengan finishing warna putih duco kombinasi natural pada top meja akan terlihat cantik dan classie. untuk ukuran meja ini anda bisa memesan dengan keinginan anda. meja ini mempunyai banyak laci sehingga berkas anda akan bisa disimpan dengan aman dan dekat dengan anda.</p>\r\n<p>Berikut Spesifikasi singkatnya:</p>\r\n<ul>\r\n<li>Bahan mahoni</li>\r\n<li>Finishing putih duco kombinasi natural pada top meja</li>\r\n<li>ukuran bisa disesuaikan</li>\r\n</ul>\r\n<p>Harga Meja Komputer Classic Putih</p>', 3000000, 6, 'Unit', 'Publish', 'Meja-kerja-classic-putih.jpg', '2018-06-23 11:22:50', '2018-06-23 11:26:55'),
(15, 5, 8, 'meja-kantor-ukir-jepara', 'Meja Kantor Ukir Jepara', '<h1>Meja Kantor Ukir Jepara</h1>\r\n<p><a href=\"https://www.mebeljeparashop.com/wp-content/uploads/2014/01/meja-kantor-ukir.jpg\"><img class=\"aligncenter size-full wp-image-3481\" src=\"https://www.mebeljeparashop.com/wp-content/uploads/2014/01/meja-kantor-ukir.jpg\" sizes=\"(max-width: 640px) 100vw, 640px\" srcset=\"https://www.mebeljeparashop.com/wp-content/uploads/2014/01/meja-kantor-ukir.jpg 640w, https://www.mebeljeparashop.com/wp-content/uploads/2014/01/meja-kantor-ukir-320x240.jpg 320w, https://www.mebeljeparashop.com/wp-content/uploads/2014/01/meja-kantor-ukir-300x225.jpg 300w\" alt=\"meja kantor ukir\" width=\"640\" height=\"480\" /></a></p>\r\n<p><strong>Meja kantor</strong>&nbsp;atau writing desk atau juga sering disebut juga dengan meja tulis merupakan salah satu furniture kebutuhan yang vital bagi sebuah kantor atau ruangan kerja dirumah anda.&nbsp;<a href=\"https://www.mebeljeparashop.com/category/jepara-furnitures/meja-kantor/\">Model meja kantor</a>&nbsp;dengan desain ukiran khas Jepara yang elegant membuat kesan cantik dan mewah pada ruangan kerja anda. Meja kantor ukir ini dibuat dengan bahan baku mahoni ditambah dengan ukiran yang sangat mewah dan elegant membuat anda semakin nyaman dalam bekerja</p>\r\n<h2>Model Meja Kantor Ukiran Jepara</h2>\r\n<p><a href=\"https://www.mebeljeparashop.com/category/jepara-furnitures/meja-kantor/\">Meja kantor ukir</a>&nbsp;dengan model classic memang sangat istimewa karena detail ukiran dan warna finishing walnut yang mewah sangat digemari para pecinta produk furniture. Meja kantor ukir ini dilengkapi dengan kursi model french furniture yang istimewa dan sangat cocok dipadukan dengan meja kantor tersebut.</p>', 3400000, 3, 'Unit', 'Publish', 'meja-kantor-ukir.jpg', '2018-06-23 11:26:45', '2018-06-23 11:26:45'),
(16, 5, 8, 'meja-kantor-classic', 'Meja Kantor Classic', '<h1>Meja Kantor Classic</h1>\r\n<p><a href=\"https://www.mebeljeparashop.com/meja-kantor-classic/\"><strong>Meja kantor classic</strong></a>&nbsp;dengan bahan baku kayu jati TPK berkualitas sehingga meja kantor ini mampu bertahan lama. Meja kantor classic ini mengedepankan fungsionalitas sebuah meja kerja yang dilengkapi dengan beberapa laci yang digunakan untuk penyimpanan berkas-berkas keperluan kantor sehari-hari</p>\r\n<p><a href=\"https://www.mebeljeparashop.com/wp-content/uploads/2014/04/Meja-Kantor-Kerja.jpg\"><img class=\"aligncenter  wp-image-3784\" src=\"https://www.mebeljeparashop.com/wp-content/uploads/2014/04/Meja-Kantor-Kerja.jpg\" sizes=\"(max-width: 512px) 100vw, 512px\" srcset=\"https://www.mebeljeparashop.com/wp-content/uploads/2014/04/Meja-Kantor-Kerja.jpg 640w, https://www.mebeljeparashop.com/wp-content/uploads/2014/04/Meja-Kantor-Kerja-300x225.jpg 300w\" alt=\"meja kantor kerja jati\" width=\"512\" height=\"384\" /></a></p>\r\n<h2>Meja Kerja Atau Meja Kantor Classic</h2>\r\n<p><em>Meja kantor</em>&nbsp;ini pada dasarnya menggunakan bahan baku kayu jati, namun tidak menutup kemungkinan jika anda menginginkan dengan bahan baku kayu mahoni yang juga dikenal sangat halus untuk digunakan produk&nbsp;<a href=\"https://www.mebeljeparashop.com/\" target=\"_blank\">furniture jepara</a>.</p>\r\n<h3>Spesifikasi Meja Kantor</h3>\r\n<ul>\r\n<li>Model meja kantor : classic</li>\r\n<li>Bahan Baku: Kayu jati atau bisa juga menggunakan kayu mahogany sesuai permintaan</li>\r\n<li>Ukuran:&nbsp;140 x 60 x 75 ukuran bisa dissuaikan dengan keinginan</li>\r\n</ul>', 3200000, 5, 'Kilogram', 'Publish', 'Meja-Kantor-Classic.jpg', '2018-06-23 11:28:55', '2018-06-25 04:40:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `akses_level` varchar(20) NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`, `akses_level`) VALUES
(5, 'andy', 'andyryzal999@gmail.com', 'andyryzal', 'nokia99', 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `video`
--

DROP TABLE IF EXISTS `video`;
CREATE TABLE IF NOT EXISTS `video` (
  `id_video` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(200) NOT NULL,
  `posisi` varchar(20) NOT NULL,
  `keterangan` text,
  `video` varchar(200) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_video`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `video`
--

INSERT INTO `video` (`id_video`, `judul`, `posisi`, `keterangan`, `video`, `urutan`, `id_user`, `tanggal`) VALUES
(1, 'Pembuatan Produk', 'Homepage', NULL, '5130wBO9qno', 1, 5, '2018-06-26 10:55:46'),
(3, 'Pembuatan Mebel', 'Homepage', NULL, 'iWyY4N1KCb8', 2, 5, '2018-06-26 10:54:24');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
