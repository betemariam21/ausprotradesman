import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCqfm-SXBcO8KnWLvPE6U8Xjfc9fMrS3o8",
            authDomain: "auspro-steel-qiu09a.firebaseapp.com",
            projectId: "auspro-steel-qiu09a",
            storageBucket: "auspro-steel-qiu09a.appspot.com",
            messagingSenderId: "850365511568",
            appId: "1:850365511568:web:147ee3b1fa79309c356515"));
  } else {
    await Firebase.initializeApp();
  }
}
