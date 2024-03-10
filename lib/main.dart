import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const identitas = [
      { 
        'photo': 'images/satu.jfif',
        'nama': 'Mellani Silvia Prameswari',
        'nim': '22091397038',
        'posisi': 'Mobile Developer',
        'email': 'mellani.22038@mhs.unesa.ac.id'
      },
      {
        'photo': 'images/dua.jfif',
        'nama': 'Fauzan Hedar Abit',
        'nim': '22091397048',
        'posisi': 'Mobile Developer',
        'email': 'fauzan.22048@mhs.unesa.ac.id'
      },
      {
        'photo': 'images/tiga.jpg',
        'nama': 'Aviana Candra A.N',
        'nim': '22091397059',
        'posisi': 'Mobile Developer',
        'email': 'aviana.22059@mhs.unesa.ac.id'
      },
      {
        'photo': 'images/empat.jfif',
        'nama': 'Yohana Monalisa Sitorus',
        'nim': '232139003',
        'posisi': 'Mobile Developer',
        'email': 'yohana.232139003@mhs.unesa.ac.id'
      },
    ];

    var countData = identitas.length;

    return MaterialApp(
      title: 'MOBILE XII',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 202, 197, 197),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: LayoutBuilder(builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: List.generate(
                      countData,
                      (index) => ItemWidget(
                            photo: "${identitas[index]['photo']}",
                            nama: "${identitas[index]['nama']}",
                            nim: "${identitas[index]['nim']}",
                            posisi: "${identitas[index]['posisi']}",
                            email: "${identitas[index]['email']}",
                          )),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
    required this.photo,
    required this.nama,
    required this.nim,
    required this.posisi,
    required this.email,
  });

  final String photo;
  final String nama;
  final String nim;
  final String posisi;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image(
                image: AssetImage(photo),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              nama,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(nim),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                const Icon(Icons.person),
                const SizedBox(
                  width: 8,
                ),
                Text(posisi),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                const Icon(Icons.mail),
                const SizedBox(
                  width: 8,
                ),
                Text(email),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
