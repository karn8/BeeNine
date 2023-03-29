import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAIZb_b61XU29RD4FVpKpgk3GOKxDWU2V0",
            authDomain: "ff-ywtext.firebaseapp.com",
            projectId: "ff-ywtext",
            storageBucket: "ff-ywtext.appspot.com",
            messagingSenderId: "869710636149",
            appId: "1:869710636149:web:e8294aef7b7f2b1a64843c",
            measurementId: "G-F8158GWR6T"));
  } else {
    await Firebase.initializeApp();
  }
}
