// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_2/ass.dart';

class Developer extends StatelessWidget {
  const Developer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Setting(),
      appBar: AppBar(
        title: const Text(
          'ຂໍ້ມູນຜູ້ພັດທະນາ',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/images/IMG_0962.PNG'),
              ),
              const SizedBox(height: 20),

              const Text(
                'NOVIEC BOUNSAVART',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email),
                  SizedBox(width: 10),
                  Row(
                    children: [
                      Text(
                        'art.bounsavath@gmail.com',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),

              const Text(
                'ຜູ້ພັດທະນາແອບ Flutter\nເພື່ອຮຽນຮູ້ແລະຝຶກຝົນການຂຽນໂປຣແກຣມ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),

              const SizedBox(height: 40),

              ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('กำลังติดต่อผู้พัฒนา...')),
                  );
                },
                icon: const Icon(Icons.email),
                label: const Text('ติดต่อผู้พัฒนา'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                  textStyle: const TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
