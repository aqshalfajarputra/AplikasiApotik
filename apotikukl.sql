-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 12 Jun 2017 pada 09.26
-- Versi Server: 5.5.27
-- Versi PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `apotikukl`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE IF NOT EXISTS `obat` (
  `id_obat` int(12) NOT NULL AUTO_INCREMENT,
  `nama_obat` varchar(30) NOT NULL,
  `harga_obat` int(12) NOT NULL,
  `stok` int(11) NOT NULL,
  `produsen` varchar(255) NOT NULL,
  `foto_obat` text NOT NULL,
  `id_supplier` varchar(255) NOT NULL,
  PRIMARY KEY (`id_obat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`id_obat`, `nama_obat`, `harga_obat`, `stok`, `produsen`, `foto_obat`, `id_supplier`) VALUES
(1, 'ddkdk', 25000, 2, 'jajsd', 'ban.jpg', 'sup1'),
(2, 'Paramex', 20000, 20, 'Sido Muncul', 'Filmku_Net_No_Longer_Heroine_2015_BluRay_720p_750MB_x264_mkv_-_Google_Drive_MP4_20170525_195843_715.jpg', 'sup1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE IF NOT EXISTS `penjualan` (
  `id_jual` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal_jual` date NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `id_obat` varchar(12) NOT NULL,
  PRIMARY KEY (`id_jual`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=345 ;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_jual`, `tanggal_jual`, `keterangan`, `qty`, `id_obat`) VALUES
(111, '2017-05-17', 'resep', 1, '1212'),
(122, '2017-05-18', 'resep', 2, '111'),
(333, '2017-05-16', 'resep', 1, 'sukro'),
(334, '2017-05-18', 'resep', 1, '111'),
(335, '2017-05-18', 'resep', 20, '111'),
(336, '2017-05-18', 'resep', 11, '111'),
(337, '2017-05-18', 'resep', 200, '1212'),
(338, '2017-05-18', 'resep', 1, '555'),
(339, '2017-05-18', 'resep', 1, '1212'),
(340, '2017-05-18', 'resep', 22, '1212'),
(341, '2017-05-18', 'resep', 20, '111'),
(342, '2017-05-18', 'resep', 20, '1212'),
(343, '2017-05-20', 'resep', 40, '1212'),
(344, '2017-05-20', 'resep', 1, '44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `id_supplier` varchar(30) NOT NULL,
  `nama_sp` varchar(40) NOT NULL,
  `alamat_sp` varchar(40) NOT NULL,
  `no_tlp_sp` int(20) NOT NULL,
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_sp`, `alamat_sp`, `no_tlp_sp`) VALUES
('sup1', 'icha', 'malang', 9876);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` varchar(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `jabatan` varchar(11) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `jabatan`) VALUES
('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
('2', 'kasir', 'c7911af3adbd12a035b289556d96470a', 'kasir');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
