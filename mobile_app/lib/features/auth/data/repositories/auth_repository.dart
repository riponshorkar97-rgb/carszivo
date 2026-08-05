import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/user_model.dart';


class AuthRepository {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  final FirebaseFirestore _firestore =
      FirebaseFirestore.instance;



  Future<UserModel?> register(
    String name,
    String email,
    String password,
  ) async {

    UserCredential credential =
        await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );


    User? firebaseUser = credential.user;


    if (firebaseUser == null) {
      return null;
    }


    UserModel user = UserModel(
      id: firebaseUser.uid,
      name: name,
      email: email,
    );


    await _firestore
        .collection("users")
        .doc(firebaseUser.uid)
        .set(
          user.toMap(),
        );


    return user;

  }



  Future<UserModel?> login(
    String email,
    String password,
  ) async {


    UserCredential credential =
        await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );


    User? firebaseUser = credential.user;


    if (firebaseUser == null) {
      return null;
    }


    DocumentSnapshot doc =
        await _firestore
            .collection("users")
            .doc(firebaseUser.uid)
            .get();



    if (doc.exists) {

      return UserModel.fromMap(
        doc.data() as Map<String, dynamic>,
      );

    }



    return UserModel(
      id: firebaseUser.uid,
      name: "",
      email: email,
    );

  }




  Future<UserModel?> getCurrentUser() async {

    User? firebaseUser = _auth.currentUser;


    if (firebaseUser == null) {
      return null;
    }


    DocumentSnapshot doc =
        await _firestore
            .collection("users")
            .doc(firebaseUser.uid)
            .get();



    if (doc.exists) {

      return UserModel.fromMap(
        doc.data() as Map<String, dynamic>,
      );

    }


    return null;

  }





  Future<void> logout() async {

    await _auth.signOut();

  }

}
