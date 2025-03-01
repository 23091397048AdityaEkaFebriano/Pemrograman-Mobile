import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Import library untuk menggunakan Google Fonts.

// Definisi kelas `HomePageWidget` yang merupakan widget Stateful.
class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key}); // Constructor untuk widget, menggunakan key super untuk identifikasi widget.

  // Definisi static variable untuk nama rute dan path halaman.
  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState(); // Membuat state dari widget ini.
}

// State dari `HomePageWidget` diimplementasikan dalam kelas ini.
class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>(); // Global key untuk Scaffold yang berguna untuk kontrol state dari Scaffold.

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Menggunakan GestureDetector untuk mendeteksi tap gesture pada layar.
      onTap: () {
        FocusScope.of(context).unfocus(); // Menyembunyikan keyboard saat layar diketuk.
      },
      child: Scaffold(
        key: scaffoldKey, // Menggunakan scaffoldKey sebagai key.
        backgroundColor: Colors.white, // Mengatur warna background Scaffold menjadi putih.
        appBar: AppBar(
          backgroundColor: const Color(0xFFB20002), // Warna background AppBar.
          automaticallyImplyLeading: false, // Tidak menampilkan tombol kembali default di AppBar.
          title: const Text(
            "I'm Very Rich", // Judul yang akan tampil pada AppBar.
            style: TextStyle(
              fontFamily: 'Poppins', // Menggunakan font Poppins untuk teks judul.
              color: Colors.white, // Warna teks menjadi putih.
              fontSize: 22, // Ukuran teks 22.
            ),
          ),
          elevation: 2, // Memberikan efek bayangan dengan elevasi 2.
