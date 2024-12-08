import 'package:flutter/material.dart';

import 'pages/pages.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreenPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/home' : (context) => const HomePage(),
        '/sign-in' : (context) => const SignInPage(),
        '/sign-up' : (context) => const SignUpPage(),
        '/main' : (context) => const MainPage(),
        '/detail-chat' : (context) => const DetailChatPage(),
        '/edit-profile' : (context) => const EditProfilePage(),
        '/product-page' : (context) => const ProductPage(),
      },
    );
  }
}
