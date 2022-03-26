import 'package:ejemplobottomnavigationbar/pages/PaguinaComentarios.dart';
import 'package:ejemplobottomnavigationbar/pages/PaguinaFavoritos.dart';
import 'package:ejemplobottomnavigationbar/pages/PaguinaInicio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _paginaactual = 0;

  List<Widget> _paginas = [
    PaguinaInicio(),
    PaguinaFavoritos(),
    PaguinaComentarios(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wallpaper 2D and 3D',
      home: Scaffold(
        backgroundColor: Color(0x232323),
        appBar: AppBar(
          title: Text('Wallpaper'),
          backgroundColor: Colors.blueAccent,
        ),
        body: _paginas[_paginaactual],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _paginaactual = index;
            });
          },
          currentIndex: _paginaactual,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.house, color: Colors.black), label: 'Inicio'),
            BottomNavigationBarItem(
                icon: Icon(Icons.star, color: Colors.black),
                label: 'Favoritos'),
            BottomNavigationBarItem(
                icon: Icon(Icons.comment, color: Colors.black),
                label: 'Comentarios'),
          ],
        ),
      ),
    );
  }
}
