import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAhElxewqYO2lew0JLWzVDmDWZEjZIjFlI",
            authDomain: "petdatabase-ab39d.firebaseapp.com",
            projectId: "petdatabase-ab39d",
            storageBucket: "petdatabase-ab39d.appspot.com",
            messagingSenderId: "581176704126",
            appId: "1:581176704126:web:ec8d8bf988d9cf17d16c2f",
            measurementId: "G-5PXTETJZX5"));
  } else {
    await Firebase.initializeApp();
  }
}
