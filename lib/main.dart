import 'package:flutter/material.dart';
import 'package:google_files/config/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0, isDarkMode: true).theme(),
      home: Scaffold(
          // Color.fromARGB(255, 255, 255, 255), // Color.fromARGB(255, 255, 255, 255), ,
          drawer: const Drawer(),
          appBar: AppBar(
            title:
                const Text('Material App Barx', style: TextStyle(fontSize: 18)),
            actions: const [
              Icon(Icons.find_in_page_outlined),
              SizedBox(width: 15),
            ],
          ),
          body: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(
                    top: 12, bottom: 1, left: 22, right: 12),
                child: const Text('Categorías',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.left),
              ),
              Expanded(

                child: GridView(
                    padding: const EdgeInsets.all(16.0),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 8 / 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    // espacio entre elementos

                    children: const [
                      ButtonCard(
                        icon: Icon(
                          Icons.image_outlined,
                          size: 24,
                        ),
                        title: 'Imágenes',
                        size: '2.5 MB',
                      ),
                      ButtonCard(
                        icon: Icon(
                          Icons.video_collection_outlined,
                          size: 24,
                        ),
                        title: 'Videos',
                        size: '1.5 GB',
                      ),
                      ButtonCard(
                        icon: Icon(
                          Icons.file_present_outlined,
                          size: 24,
                        ),
                        title: 'Documentos',
                        size: '2.5 MB',
                      ),
                      ButtonCard(
                        icon: Icon(
                          Icons.app_registration_outlined,
                          size: 24,
                        ),
                        title: 'Apps',
                        size: '1.5 GB',
                      ),
                      ButtonCard(
                        icon: Icon(
                          Icons.music_note_outlined,
                          size: 24,
                        ),
                        title: 'Musica',
                        size: '2.5 MB',
                      ),
                      ButtonCard(
                        icon: Icon(
                          Icons.book_outlined,
                          size: 24,
                        ),
                        title: 'Libros',
                        size: '1.5 GB',
                      ),
                    ]),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(
                    top: 12, bottom: 1, left: 22, right: 12),
                child: const Text('Categorías',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.left),
              ),
            ],
          )),
    );
  }
}

class ButtonCard extends StatelessWidget {
  final Icon icon;
  final String title;
  final String size;
  const ButtonCard({
    super.key,
    required this.icon,
    required this.title,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0, // No queremos sombra en este caso
        padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 18.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Row(children: [
        icon,
        const SizedBox(width: 18),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            Text(size, style: const TextStyle(fontSize: 12)),
          ],
        )
      ]),
      onPressed: () {
        // Aquí va la acción que se realizará cuando se presione el botón
      },
    );
  }
}
