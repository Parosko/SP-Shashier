import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

final List<Map<String, dynamic>> daftarMenu=const [
    {"nama": "Nasi Goreng", "harga": 15000, "foto": Icons.restaurant},
    {"nama": "Mie Goreng", "harga": 12000, "foto": Icons.ramen_dining},
    {"nama": "Es Teh Manis", "harga": 5000, "foto": Icons.local_drink},
    {"nama": "Kopi Hitam", "harga": 7000, "foto": Icons.coffee},
    {"nama": "Ayam Bakar", "harga": 20000, "foto": Icons.kebab_dining},
    {"nama": "Jus Jeruk", "harga": 8000, "foto": Icons.liquor},
  ];

  @override
Widget build(BuildContext context) {
  return Scaffold(
    drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Header 
          DrawerHeader(
            decoration: BoxDecoration(color: Color(0xff1E3A8A)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.store, color: Colors.white, size: 40),
                SizedBox(height: 10),
                Text(
                  'Shashier',
                  style: Theme.of(context).appBarTheme.titleTextStyle,
                ),
              ],
            ),
          ),
          
          // 2. PINDAHKAN TOMBOL-TOMBOL KAMU KE LISTTILE
          ListTile(
            leading: const Icon(Icons.receipt_long),
            title: const Text('Bill / Tagihan'),
            onTap: () {
              Navigator.pop(context); 
              _tampilkanPesan(context, 'Bill ditekan');
            },
          ),
          ListTile(
            leading: const Icon(Icons.bar_chart),
            title: const Text('Statistik Penjualan'),
            onTap: () {
              Navigator.pop(context);
              _tampilkanPesan(context, 'Statistik ditekan');
            },
          ),
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text('Riwayat Transaksi'),
            onTap: () {
              Navigator.pop(context);
              _tampilkanPesan(context, 'Riwayat ditekan');
            },
          ),
          const Divider(), // Garis pembatas
          ListTile(
            leading: const Icon(Icons.add_box_outlined),
            title: const Text('Tambah Menu Baru'),
            onTap: () {
              Navigator.pop(context);
              _tampilkanPesan(context, 'Tambah Menu ditekan');
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Pengaturan'),
            onTap: () {
              Navigator.pop(context);
              _tampilkanPesan(context, 'Pengaturan ditekan');
            },
          ),
        ],
      ),
    ),

    appBar: AppBar(
      title: Row(
        children: const [
          Icon(Icons.store, color: Colors.white),
          SizedBox(width: 30),
          Text(
            'Shashier',
          ),
        ]
      )
    ),
    
    body: const Center(
      child: Text('ma mangan ko', style: TextStyle(fontSize: 20)),
    ),
  );
}

// Function for click
void _tampilkanPesan(BuildContext context, String pesan) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(pesan)),
  );
}
}