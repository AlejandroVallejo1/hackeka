import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB9dv1yBWtkVDgRplX--EfvNLC_mbgWvXM",
            authDomain: "hackeka-gb5ouy.firebaseapp.com",
            projectId: "hackeka-gb5ouy",
            storageBucket: "hackeka-gb5ouy.appspot.com",
            messagingSenderId: "330721789258",
            appId: "1:330721789258:web:381e8d2e80454411292db3"));
  } else {
    await Firebase.initializeApp();
  }
}
