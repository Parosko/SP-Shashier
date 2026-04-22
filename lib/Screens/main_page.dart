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
      appBar: AppBar(
        title: const Text('Main Page'),
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.receipt_long),
            tooltip:'Bill',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Bill ditekan')),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.bar_chart),
            tooltip:'Statistik',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Statistik ditekan')),
              );
            },
          ),
          IconButton(
            icon:const Icon(Icons.history),
            tooltip:'Riwayat',
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Riwayat ditekan')),
              );
            }
          ),
          IconButton(
            icon:const Icon(Icons.add_box_outlined),
            tooltip:'Tambah Menu',
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Tambah Menu ditekan')),
              );
            }
          )

        ]
      ),
      body: const Center(
        child: Text(
          'Selamat datang di Main Page!',
          style: TextStyle(fontSize: 20),
          
        ),
      ),
    );
  }
}