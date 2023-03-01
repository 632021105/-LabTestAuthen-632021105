
import 'package:firebase_auth/firebase_auth.dart';


class AuthService {
 


  // Declare FirebaseAuth
 


  // Declare register Function
 static Future<void> registeruser(String emailuser ,String passworduser) async {
    try {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: emailuser,
    password: passworduser,


  );
} on FirebaseAuthException catch (e) {
  print(e.code);
  if (e.code == 'weak-password') {
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  }
} catch (e) {
  print(e);
}

  }
  // Declare login Function
}
