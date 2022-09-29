import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:note_market/layout/screen_layout.dart';
import 'package:note_market/screens/note_selling_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    //웹으로 접속하였을 때 웹의 정보를 전달하는 용도
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCEayBAxfwtN3o8W5SlFvmzKWMyh03zVr8",
            authDomain: "notemarket-bac09.firebaseapp.com",
            projectId: "notemarket-bac09",
            storageBucket: "notemarket-bac09.appspot.com",
            messagingSenderId: "61803631515",
            appId: "1:61803631515:web:05e6fc1bdac0d39549073e",
            measurementId: "G-5QXT06ETLN"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const NoteMarket());
}

class NoteMarket extends StatelessWidget {
  const NoteMarket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, AsyncSnapshot<User?> user) {
              if (user.connectionState == ConnectionState.waiting) {
                //user의 연결상태가 웨이팅이라면
                return const Center(
                    child: CircularProgressIndicator(
                      color: Colors.lightBlueAccent,
                    ),
                );
              }else{
                return const ScreenLayout();
              }
            }
      ),
    );
  }
}
