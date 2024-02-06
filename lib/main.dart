import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:myapp/screens/action_screen.dart';
import 'package:myapp/screens/first_screen.dart';
import 'package:myapp/screens/posts_screen.dart';
import 'package:myapp/utils/colors.dart';
import 'firebase_options.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (e) {}

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: KColors.baseColor,
          brightness: Brightness.dark,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/": (context) => FirstScreen(),
          "/posts": (context) => PostsScreen(),
          "/action": (context) => ActionScreen()
        },
      ),
    );
  }
}
