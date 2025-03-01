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
          ),
        body: SafeArea(
          // Membungkus body dengan SafeArea agar isi tampilan tidak terhalang oleh status bar atau notch.
          child: Column(
            mainAxisSize: MainAxisSize.max, // Kolom menggunakan maksimal ruang yang tersedia.
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50), // Jarak atas dari gambar pertama sebesar 50.
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(22), // Membuat gambar memiliki border dengan sudut melengkung.
                  child: Image.asset(
                    'assets/images/permata.png', // Menampilkan gambar dari asset lokal.
                    width: 200, // Lebar gambar 200.
                    height: 200, // Tinggi gambar 200.
                    fit: BoxFit.cover, // Gambar memenuhi area sesuai ukuran widget tanpa terdistorsi.
                  ),
                ),
              ),
              // Memanggil fungsi `buildQuoteContainer` untuk menampilkan widget quote dengan gambar dan teks.
              buildQuoteContainer(
                'assets/images/semangat.png', // Gambar motivasi 1.
                "Keep the spirit even though your life is just like that.\n\n~Aditya Eka Febriano~", // Quote dari Aditya Eka Febriano.
                Colors.blue, // Warna background container.
              ),
              buildQuoteContainer(
                'assets/images/berhasil.png', // Gambar motivasi 2.
                "Success is at the end of the story.\n\n~Yoga Ari Anggoro~", // Quote dari Yoga Ari Anggoro.
                Colors.green, // Warna background container.
              ),
              buildQuoteContainer(
                'assets/images/gagal.png', // Gambar motivasi 3.
                "The biggest mistake is not failure, but stopping and giving up before tasting success.\n\n~Wisnu Prabowo~", // Quote dari Wisnu Prabowo.
                Colors.orange, // Warna background container.
              ),
            ],
          ),
        ),
      ),
    );
  }

    // Fungsi untuk membuat widget Container dengan gambar dan teks quote.
  Widget buildQuoteContainer(String imagePath, String quote, Color color) {
    return Padding(
      padding: const EdgeInsets.all(10.0), // Padding luar container sebesar 10.
      child: Container(
        width: double.infinity, // Lebar container memenuhi lebar layar.
        height: 100, // Tinggi container 100.
        decoration: BoxDecoration(
          color: color, // Warna background container.
          borderRadius: BorderRadius.circular(14), // Sudut border melengkung sebesar 14.
        ),
        child: Row(
          // Row untuk menampilkan gambar di sebelah kiri dan teks di sebelah kanan.
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0), // Padding sekitar gambar sebesar 10.
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8), // Sudut gambar melengkung sebesar 8.
                child: Image.asset(
                  imagePath, // Menampilkan gambar sesuai path yang diberikan.
                  width: 70, // Lebar gambar 70.
                  fit: BoxFit.cover, // Gambar memenuhi area tanpa terdistorsi.
                ),
              ),
            ),
            Expanded(
              // Expanded agar teks memenuhi sisa ruang di dalam Row.
              child: Text(
                quote, // Teks quote yang diberikan sebagai parameter.
                textAlign: TextAlign.start, // Teks diratakan ke kiri.
                style: GoogleFonts.inter( // Menggunakan font Inter dari Google Fonts.
                  color: Colors.white, // Warna teks putih.
                  fontStyle: FontStyle.italic, // Teks ditampilkan dalam bentuk italic.
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
