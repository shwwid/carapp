import 'package:flutter/material.dart';
import 'package:car_rental_serious/login.dart';
/*import 'package:firebase_core/firebase_core.dart';*/

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  /*if(kIsWeb) { await Firebase.initializeApp(options: FirebaseOptions(apiKey: "AIzaSyDmn2SkP5tA5C5aqXdUXrtXdcZIzQmKA2w",
  authDomain: "authentication-28ebd.firebaseapp.com",
  projectId: "authentication-28ebd",
  storageBucket: "authentication-28ebd.firebasestorage.app",
  messagingSenderId: "918485012957",
  appId: "1:918485012957:web:7f1d1e4bfc90abd67b6634"));
  }else{
    await Firebase.initializeApp();
  }*/
  

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Rental App',
      debugShowCheckedModeBanner: false,
      home: LoginPage()
    );
  }
}