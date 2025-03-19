import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16),
                child: Image.asset('assets/images/submarine.jpg'),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: const Text(
                  'Surabaya Submarine Monument',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
              ),
              // Bagian informasi ikon
              Container(
                margin: const EdgeInsets.symmetric(vertical: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    _buildIconInfo(Icons.calendar_today, 'Open Everyday'),
                    _buildIconInfo(Icons.access_time, '08:00 - 16:00'),
                    _buildIconInfo(Icons.attach_money, 'Rp 10.000,-'),
                  ],
                ),
              ),
              // Deskripsi tempat
              Container(
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  'Monumen Kapal Selam, atau disingkat Monkasel, adalah sebuah museum kapal selam yang terdapat di Embong Kaliasin, Genteng, Surabaya. Terletak 333 di pusat kota yaitu di Jalan Pemuda, tepat di sebelah Plaza Surabaya, dan terdapat pintu akses untuk mengakses mal dari dalam monumen.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              // Bagian ListView untuk gambar tambahan
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none,
                  children: <Widget>[
                    _buildImageItem(
                      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg',
                      isNetwork: true,
                    ),
                    _buildImageItem('assets/images/monkasel_1.jpg'),
                    _buildImageItem('assets/images/monkasel_2.jpg'),
                    _buildImageItem('assets/images/monkasel_3.jpg'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIconInfo(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(icon, size: 30),
        const SizedBox(height: 5),
        Text(text),
      ],
    );
  }

  Widget _buildImageItem(String imagePath, {bool isNetwork = false}) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: isNetwork
            ? Image.network(imagePath)
            : Image.asset(imagePath),
      ),
    );
  }
}