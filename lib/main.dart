import 'package:associacoes_poeticas/historia.dart';
import 'package:associacoes_poeticas/simulacao.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xFFE2DEDC),
    statusBarColor: Color.fromRGBO(226, 222, 220, 1),
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pequena Máquina de Associações Poéticas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFE2DEDC),
        textTheme: GoogleFonts.instrumentSansTextTheme(),
      ),
      home: const MyHomePage(title: 'Pequena Máquina de Associações Poéticas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  List<Widget> body = const[
    Simulacao(title: 'Recriação'),
    Historia(title: 'História'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            body[_currentIndex],
          ],
        ),
        
        bottomNavigationBar: BottomNavigationBar(
          
          currentIndex: _currentIndex,
          onTap: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          items: const [ 
            BottomNavigationBarItem(
              icon: Icon(Icons.smart_toy),
              label: 'Recriação',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_movies),
              label: 'História',
            )
          ],
          
        ),
      );
  }
}
