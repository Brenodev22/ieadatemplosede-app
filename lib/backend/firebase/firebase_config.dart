import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAdOtlR2c12oA7HgZj90qBTi7mg2SegM0o",
            authDomain: "ieada-templosede-app.firebaseapp.com",
            projectId: "ieada-templosede-app",
            storageBucket: "ieada-templosede-app.appspot.com",
            messagingSenderId: "923399616784",
            appId: "1:923399616784:web:5152df5283876be0d40d95"));
  } else {
    await Firebase.initializeApp();
  }
}
