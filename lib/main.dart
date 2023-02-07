import 'package:chato/screens/chat_screen.dart';
import 'package:chato/screens/login_screen.dart';
import 'package:chato/screens/registration_screen.dart';
import 'package:chato/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: const FirebaseOptions(
    apiKey: 'AIzaSyDOoHV05iB4yt5Hbn2TVMiqoJR9KbmlmBY',
    appId: '1:737029007501:android:158fe1c4477385a2459ac4',
    messagingSenderId: '448618578101',
    projectId: 'flash-chat-8399d',
    authDomain: 'react-native-firebase-testing.firebaseapp.com',
    databaseURL: 'https://react-native-firebase-testing.firebaseio.com',
    storageBucket: 'react-native-firebase-testing.appspot.com',
    measurementId: 'G-F79DJ0VFGS',), );
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  String id1 = 'welcime';
  String id2 = 'login';
  String id3 = 'regis';
  String id4 = 'chat';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: id1,
      routes: {
        id1 : (context) => WelcomeScreen(),
        id2 : (context) => LoginScreen(),
        id3 : (context) => RegistrationScreen(),
        id4 : (context) => ChatScreen(),

    },

    );
  }
}
