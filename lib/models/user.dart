import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Anda'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Avatar
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/avatar_placeholder.png'),
                // Ganti dengan path gambar default
              ),
              const SizedBox(height: 20),
              
              // User name
              const Text(
                'Joko Kopling',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              
              // Email
              const Text(
                'joko_kopling@example.com',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 20),
              
              // Edit Profile Button
              ElevatedButton.icon(
                onPressed: () {
                  // Tambahkan logika untuk navigasi ke halaman edit profile
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Fitur ini masih dalam tahap pengembangan :)')),
                  );
                },
                icon: const Icon(Icons.edit),
                label: const Text('Edit Profil'),
              ),
              
              const SizedBox(height: 30),
              
              // Section for other user-related options
              const Divider(),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Pengaturan'),
                onTap: () {
                  // Tambahkan navigasi ke halaman settings jika diperlukan
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Fitur ini masih dalam tahap pengembangan :)')),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.help_outline),
                title: const Text('Panduan'),
                onTap: () {
                  // Tambahkan navigasi ke halaman help jika diperlukan
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Fitur ini masih dalam tahap pengembangan :)')),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
