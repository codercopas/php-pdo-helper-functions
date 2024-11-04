-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 04, 2024 at 05:23 AM
-- Server version: 10.11.8-MariaDB
-- PHP Version: 8.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codercopas`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `article_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` varchar(450) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`article_id`, `title`, `description`, `image`) VALUES
(1, 'Ponsel ASUS ROG Phone 8 Series Diumumkan untuk Para Gamer!', 'ASUS Republic of Games (ROG) mengumumkan seri ponsel terbarunya, ASUS ROG Phone 8 Series, yang bakal diluncurkan tanggal 20 Maret 2024.', 'd7b37b54-9e95-baf2-6330-b6464ee08f37.jpeg'),
(2, 'Xiaomi Umumkan Tanggal Rilis Mobil Listrik Pertamanya', 'Xiaomi mengumumkan bahwa mereka akan secara resmi meluncurkan mobil listrik yang dinantikan pada tanggal 28 Maret.', '0fced2e7-b351-e423-8f87-88f18bc32f4d.jpeg'),
(3, 'Apple Vision Pro diluncurkan di Indonesia', 'Peluncuran Apple Vision Pro di Indonesia: Harga, Fitur, dan Harapan', '466d274d-5d0d-f3df-389c-5022a1c96c85.jpeg'),
(4, 'OPPO Kenalkan OPPO Air Glass 3 di MWC 2024, dengan Teknologi AI Baru', 'OPPO lagi-lagi bikin inovasi dengan prototipe kacamata OPPO Air Glass 3 nya yang keren abis. Ada Teknologi AI yang Bikin Kepincut.', 'ea5c13c0-b4f3-a1e2-fcad-aab39e1a37fa.jpeg'),
(5, 'Peringatan dari PBB: Teknologi AI Bisa Bikin Konten Seksisme!', 'Menurut sebuah studi baru yang diluncurkan hari Kamis oleh UNESCO, perangkat lunak AI terpopuler di dunia yang didukung oleh program dari OpenAI dan Meta cenderung punya konten seksisme!', 'a76bf9a2-6d4f-a6e3-45b2-d70eb347ae39.jpeg'),
(6, 'Rumor Apple iPhone SE 4: Dapat Apa Saja?', 'Apple lagi ngerjain iPhone SE 4, dan kabarnya bakal punya layar OLED, pertama kali buat seri yang relatif murah ini.', '966fb153-73f5-dda7-57b3-9dcdfcd99070.jpeg'),
(7, 'Antutu Merilis Peringkat Teratas Ponsel Android Januari 2024', 'Chipset MediaTek menjadi pusat perhatian, menduduki posisi teratas baik di kategori flagship maupun mid-range.', '208e6024-143f-d203-41ad-3fe4a3b4bf5f.jpeg'),
(8, 'Smartphone Unggulan yang Ditunggu di Tahun 2024', 'Tahun 2024 bakal seru banget buat para penggemar ponsel pintar, dengan para pemain besar ngeluarin kombinasi fitur-fitur AI inovatif dan perbaikan pada fitur-fitur utama.', '0608abf8-bcff-234a-f035-9df8cebf82c1.jpeg'),
(9, 'Samsung Merilis Galaxy XCover7, Smartphone Standar Militer', 'Galaxy XCover7 dirancang untuk bertahan dalam kondisi ekstrem dengan standar ketahanan tingkat militer (MIL-STD-810H).', '091bda76-acc9-4540-7738-20d442fa736b.jpeg'),
(10, 'Google Pixel Fold Resmi Diluncurkan', 'Google secara resmi telah meluncurkan Pixel Fold, ponsel lipat pertama mereka.', 'f63fe708-7f2d-de65-2df4-69d5fb73cfa9.jpeg'),
(11, 'Oppo Reno 11 F, Smartphone Termurah dari Seri Reno 11', 'Oppo Reno11 F, yang merupakan model termurah dalam seri Reno, segera meluncur.', '3ca34ae4-67f2-9052-6cc5-15e8b7fb6eaa.jpeg'),
(12, 'Asal Usul Smartphone: Dari Motorola DynaTAC sampai IBM Simon', 'Meskipun iPhone yang lahir tahun 2007 sering dijadiin pemantik booming-nya smartphone, sebenernya akarnya jauh lebih tua dari itu.', 'deb1b1e0-592d-c52f-f124-52f643632341.jpeg'),
(13, 'Pantau Tekanan Darah Dengan Kamera Ponsel', 'Sebuah aplikasi smartphone baru yang murah dan dapat memantau tekanan darah dengan bantuan aksesori yang dipasang pada kamera dan lampu kilat ponsel.', 'c09d7a49-347d-7160-5134-f2e418409825.jpeg'),
(14, 'Xiaomi Meluncurkan Gaming Monitor Baru', 'Xiaomi baru-baru ini memperkenalkan seri Redmi G27 di China, berupa sepasang monitor gaming berukuran 27 inci yang mengesankan.', 'ee54cfbd-34d4-58f7-eafb-1d80dfb7ca7f.jpeg'),
(15, 'Mengapa Layar Laptop Menjadi Kunci untuk Mendorong Penjualan', 'Produsen komputer mulai dari Lenovo hingga Samsung menaruh harapan mereka dalam menghidupkan kembali penjualan laptop dengan meningkatkan kualitas layar.', 'b605acda-de3e-d967-8422-dcb83c5cf0de.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`article_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
