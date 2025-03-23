import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mad/screen/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Root
  final app = App();
  runApp(app);
}

// Future<void> loadDataFromTextFile() async {
//   String data = await rootBundle.loadString("assets/data/sample_textfile.txt");
//   print("Data : $data");
// }

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WIDCY',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
