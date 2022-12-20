import 'package:flutter/material.dart';
import 'package:tbib_splash_screen/splash_screen_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool isLoaded = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 10)).then((value) => setState(() {
          isLoaded = true;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateWhere: isLoaded,
      navigateRoute: const HomeScreen(), backgroundColor: Colors.white,
      linearGradient: const LinearGradient(
          colors: [
            Color(0xFF3E5151),
            Color(0xFFDECBA4),
          ],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp),
      text: WavyAnimatedText(
        "Successoft Infotech",
        textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      imageSrc: 'assets/images/flutterpng.png'
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("Splash Screen",style: TextStyle(fontSize: 15),),
      ),
      body: Center(
        child: Text("Welcome",style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
