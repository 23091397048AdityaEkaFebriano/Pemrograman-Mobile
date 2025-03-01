import 'package:flutter/material.dart'; // Import library Flutter untuk menggunakan Material design.
import 'home_page_widget.dart'; // Mengimport file 'home_page_widget.dart', pastikan file ini ada di proyek.

// Fungsi utama yang dipanggil pertama kali ketika aplikasi Flutter berjalan.
void main() {
  runApp(const MyApp()); // Menjalankan aplikasi dengan widget MyApp sebagai root widget.
}

// Definisi kelas `MyApp` yang merupakan StatelessWidget (widget yang tidak memiliki state).
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor untuk widget MyApp, menggunakan key super untuk identifikasi.

  @override
  Widget build(BuildContext context) {
    // Fungsi build yang mendefinisikan UI dari widget ini.
    return MaterialApp(  
