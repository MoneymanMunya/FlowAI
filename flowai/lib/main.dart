import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'auth_service.dart'; // Import the auth service

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FlowAI Login")),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await AuthService().signInWithGoogle();
          },
          child: Text("Sign in with Google"),
        ),
      ),
    );
  }
}
