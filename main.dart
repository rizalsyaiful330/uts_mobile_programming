import 'package:flutter/material.dart';

void main() {
  runApp(const UTSApp());
}

class UTSApp extends StatelessWidget {
  const UTSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS Mobile Device',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo, // Warna tema aplikasi
      ),
      home: const HomeScreen(), // Halaman awal
    );
  }
}

// --- SCREEN 1: HALAMAN BERANDA ---
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beranda UTS'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.home, size: 80, color: Colors.indigo),
            const SizedBox(height: 20),
            const Text(
              'Aplikasi Mobile Saya',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke Screen 2
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfileScreen()),
                );
              },
              child: const Text('Buka Profil Mahasiswa'),
            ),
          ],
        ),
      ),
    );
  }
}

// --- SCREEN 2: HALAMAN PROFIL ---
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              child: Icon(Icons.person, size: 50),
            ),
            const SizedBox(height: 20),
            // GANTI DENGAN DATA DIRIMU
            const ListTile(
              leading: Icon(Icons.badge),
              title: Text('Nama: ACHMAD LUKMAN SYAIFUL RIZAL'), 
            ),
            const ListTile(
              leading: Icon(Icons.numbers),
              title: Text('NIM : 224140198 '),
            ),
            const Spacer(), // Memberi jarak ke bawah
            ElevatedButton(
              onPressed: () {
                // Navigasi ke Screen 3
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutScreen()),
                );
              },
              child: const Text('Tentang Aplikasi'),
            ),
          ],
        ),
      ),
    );
  }
}

// --- SCREEN 3: HALAMAN TENTANG ---
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang'),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
                        'Aplikasi ini dibuat sebagai syarat UTS mata kuliah Mobile Device Programming TA 2025/2026 di ITB Widya Gama Lumajang.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}