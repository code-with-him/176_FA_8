import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const idcardscreen(),
    );
  }
}

class idcardscreen extends StatelessWidget {
  const idcardscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: const Text('Digital ID Card'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Card(
          color: Colors.blueGrey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          margin: const EdgeInsets.all(20),
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // profile image
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/profile.png'),
                  backgroundColor: Colors.white,
                ),
                const SizedBox(height: 10),

                // name and department
                const Text(
                  'Md. Fahim Mohamad',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Batch: 61st, Department of CSE',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 10),
                const Divider(),

                // id
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text('ID: 0180000000000176'),
                ),

                // email
                const ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Email: him@gmail.com'),
                ),

                // phone
                const ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Phone: +8801700000000'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
