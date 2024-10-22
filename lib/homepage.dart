import 'package:flutter/material.dart';
// import 'package:navigasi/main.dart';
import 'SecondPage.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Utama'),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward, size: 40, color: Colors.blueAccent,), 
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Secondpage()), 
              );
            },
          ),
        ],
      ),
      body:Align(
        alignment: Alignment.center,
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.redAccent,
          ),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,  // 2 item per baris
              crossAxisSpacing: 10.0, // Jarak antar kolom
              mainAxisSpacing: 10.0,  // Jarak antar baris
              childAspectRatio: 1.0,  // Rasio membuat grid persegi
            ),
            itemCount: 4,
            itemBuilder: (context, index){
                return InkWell(
                onTap: () {
                  // Aksi ketika item di klik
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Secondpage()), // Navigasi ke halaman lain
                  );
                },
                child: Container(
                color: Colors.indigo,
                child: Center(
                  child: Text(
                    'Item ${index + 1}', // Menampilkan item keberapa
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                )
              );
            }
          ),
        ),
      ),
    );
  }
}
