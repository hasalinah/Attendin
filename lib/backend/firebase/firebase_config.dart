import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD0J_bDGVakBgrIqf0U2P8PZ-RYsZPbGo8",
            authDomain: "attend-in-6b0a1.firebaseapp.com",
            projectId: "attend-in-6b0a1",
            storageBucket: "attend-in-6b0a1.appspot.com",
            messagingSenderId: "876709651542",
            appId: "1:876709651542:web:54bf35c01f3550fa5dc7f7",
            measurementId: "G-C15DQ1SPMN"));
  } else {
    await Firebase.initializeApp();
  }
}
