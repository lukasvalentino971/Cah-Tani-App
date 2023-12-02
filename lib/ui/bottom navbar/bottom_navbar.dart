import 'package:flutter/material.dart';
import 'package:cah_tani/common/styles.dart';

class BottomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Setting',
        ),
      ],
      selectedItemColor: primaryColor, // Sesuaikan dengan warna yang diinginkan
      unselectedItemColor: Colors.grey,
      currentIndex: 0, // Indeks yang terpilih saat ini (dalam hal ini, Home)
      onTap: (index) {
        // Tambahkan logika untuk menangani ketika item bottom navbar ditekan
        if (index == 0) {
          // Navigasi ke halaman home
        } else if (index == 1) {
          // Navigasi ke halaman setting
        }
      },
    );
  }
}
