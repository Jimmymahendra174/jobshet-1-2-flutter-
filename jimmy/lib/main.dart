import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _controller = TextEditingController();
  String _displayName = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App - Jimmy Mahendra'),
          backgroundColor: const Color.fromARGB(255, 64, 191, 138),
        ),
        body: Container(
          color: const Color.fromARGB(99, 8, 239, 193),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Welcome to My App',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 16, 15),
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Color.fromARGB(255, 250, 7, 7),
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.home, size: 40, color: Colors.white),
                  SizedBox(width: 20),
                  Icon(Icons.star, size: 40, color: Colors.yellow),
                  SizedBox(width: 20),
                  Icon(Icons.favorite, size: 40, color: Colors.red),
                  SizedBox(width: 20),
                  Icon(Icons.person, size: 40, color: Colors.blue),
                  SizedBox(width: 20),
                  Icon(Icons.settings, size: 40, color: Colors.green),
                ],
              ),
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 200,
                    height: 200,
                    child: Image.asset(
                      'assets/gambar.jpg',
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Text(
                          'Gambar lokal tidak ditemukan',
                          style: TextStyle(color: Colors.red),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    width: 200,
                    height: 200,
                    child: Image.network(
                      'https://marketplace.canva.com/EAFFDGFkcdM/1/0/1003w/canva-hijau-biru-sederhana-ruang-sunyi-sampul-buku-novel-K3WxwPzlPyk.jpg',
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Text(
                          'Gagal memuat gambar dari URL',
                          style: TextStyle(color: Colors.red),
                        );
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  labelText: 'Enter your name',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _displayName = _controller.text;
                  });
                },
                child: const Text('Tampilkan Nama'),
              ),
              const SizedBox(height: 10),
              Text(
                _displayName,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
