import 'package:flutter/material.dart';
// import 'package:navigasi/main.dart';
import 'SecondPage.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Utama'),
      ),
      body: Center(
        child: IconButton(
          
          icon: Icon(Icons.arrow_forward, size: 40, color: Colors.blueAccent,), 
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Secondpage()), 
            );
          },
        ),
      ),
    );
  }
}
