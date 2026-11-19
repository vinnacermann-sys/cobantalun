import 'package:flutter/material.dart';

void main() {
  runApp(Coba());
}

class Coba extends StatelessWidget {
  Coba({super.key});

  Widget animasi({
    required Widget child,
  }) {
    return TweenAnimationBuilder<double>(
      duration: Duration(milliseconds: 700),
      tween: Tween(begin: 0.0, end: 1.0),
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, 20 * (1 - value)),
            child: child,
          ),
        );
      },
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // BACKGROUND BIRU PASTEL
        backgroundColor: Color(0xfff5ffd9),

        appBar: AppBar(
          title: Text('Coban Talun'),
          backgroundColor: Color(0xffd3e89a),
          foregroundColor: Color(0xff768954),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              // =========================
              // FOTO
              // =========================
              Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/CobanTalun.jpeg',
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),

              // =========================
              // JUDUL
              // =========================
              animasi(
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Sejarah Singkat Coban Talun',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff768954),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              // =========================
              // SEJARAH
              // =========================
              animasi(
                child: Container(
                  padding: EdgeInsets.fromLTRB(16, 0, 16, 20),
                  child: Text(
                    'Air Terjun Coban Talun merupakan wisata alam yang terletak di Desa Tulungrejo, Kecamatan Bumiaji, Kota Batu, Jawa Timur. '
                    'Coban Talun memiliki ketinggian sekitar 50–60 meter dengan aliran air yang jernih dan udara pegunungan yang sejuk. '
                    'Kawasan Coban Talun dikelilingi hutan hijau dan pepohonan yang membuat suasananya asri dan alami. '
                    'Awalnya, Coban Talun dikenal sebagai wisata air terjun dan kawasan perkemahan. Seiring waktu, kawasan ini berkembang menjadi destinasi wisata dengan berbagai fasilitas. '
                    'Kini, Coban Talun memiliki berbagai daya tarik seperti taman bunga, Pagupon Camp, Apache Camp, dan hutan pinus. '
                    'Selain menikmati keindahan air terjun, pengunjung juga dapat berkemah, berjalan-jalan, berfoto, dan menikmati suasana alam.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Color(0xff768954),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),

              // =========================
              // LOKASI DAN KONTAK
              // =========================
              animasi(
                child: Container(
                  margin: EdgeInsets.all(16),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xfff2f6de),
                    border: Border.all(
                      color: Color(0xff4b5530),
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // =========================
                      // LOKASI
                      // =========================
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lokasi',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff7689540),
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 22,
                                  color: Color(0xff768954),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'Coban Talun Waterfall\n'
                                    'Dusun Wonorejo,\n'
                                    'Desa Tulungrejo,\n'
                                    'Kecamatan Bumiaji,\n'
                                    'Kota Batu,\n'
                                    'Jawa Timur',
                                    style: TextStyle(
                                      fontSize: 14,
                                      height: 1.5,
                                      color: Color(0xff768954),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // =========================
                      // GARIS PEMISAH
                      // =========================
                      Container(
                        height: 150,
                        width: 1,
                        color: Color(0xff4b5530),
                        margin: EdgeInsets.symmetric(horizontal: 16),
                      ),

                      // =========================
                      // CONTACT
                      // =========================
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Contact Saya',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff768954),
                              ),
                            ),

                            SizedBox(height: 12),

                            // WHATSAPP
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.phone,
                                  size: 20,
                                  color: Color(0xff768954),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    '081938858553',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff768954),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 12),

                            // GARIS PEMISAH
                            Container(
                              height: 1,
                              color: Color(0xff4b5530),
                            ),

                            SizedBox(height: 12),

                            // EMAIL
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.email,
                                  size: 20,
                                  color: Color(0xff768954),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'vinnacermann@gmail.com',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff768954),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
