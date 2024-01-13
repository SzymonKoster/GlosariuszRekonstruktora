import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDRcFnSGlVhMBcu4KpE7ydO4mhwoTEine0",
            authDomain: "glosariusz-rekonstrukto-xlve6l.firebaseapp.com",
            projectId: "glosariusz-rekonstrukto-xlve6l",
            storageBucket: "glosariusz-rekonstrukto-xlve6l.appspot.com",
            messagingSenderId: "152756306849",
            appId: "1:152756306849:web:7425f032b3d3e208b881e0"));
  } else {
    await Firebase.initializeApp();
  }
}
