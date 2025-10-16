import 'package:flutter/material.dart';
import 'package:flutter_application_2/ass.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

bool isHidden = true; // ซ่อน/แสดงรหัสผ่าน

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      drawer: Ass(),
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            // โลโก้หรือรูปภาพ
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(
                  '',
                ), // 👈 ใส่รูปในโฟลเดอร์ assets
              ),
            ),
            SizedBox(height: 30),

            // ช่องกรอกอีเมล
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            SizedBox(height: 20),

            // ช่องกรอกรหัสผ่าน
            TextField(
              controller: passwordController,
              obscureText: isHidden, // ซ่อนรหัสผ่าน
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(
                    isHidden ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      isHidden = !isHidden;
                    });
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            SizedBox(height: 30),

            // ปุ่ม Login
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {
                String email = emailController.text;
                String password = passwordController.text;

                // ตัวอย่าง: ตรวจสอบข้อมูลง่าย ๆ
                if (email == 'art' && password == '1234') {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text('Login Success! 🎉')));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Invalid Email or Password ❌')),
                  );
                }
              },
              child: Text(
                'Login',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
