import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCK0kxwLAT4A7XmKj6yEcELNk0zMvT1EhM",
            authDomain: "internshipmanagement-b8afb.firebaseapp.com",
            projectId: "internshipmanagement-b8afb",
            storageBucket: "internshipmanagement-b8afb.appspot.com",
            messagingSenderId: "657497926830",
            appId: "1:657497926830:web:c8f97dd56f3fe48eef913f",
            measurementId: "G-4KSL2280HE"));
  } else {
    await Firebase.initializeApp();
  }
}
