import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models/user_model.dart';

class AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static UserModel? _currentUser;

  Future<UserModel?> login(
    String email,
    String password,
  ) async {
    try {
      final credential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = credential.user;

      if (user == null) return null;

      _currentUser = UserModel(
        id: user.uid,
        name: user.displayName ?? "Carszivo User",
        email: user.email ?? "",
      );

      return _currentUser;
    } on FirebaseAuthException {
      return null;
    }
  }

  Future<UserModel?> register(
    String name,
    String email,
    String password,
  ) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = credential.user;

      if (user == null) return null;

      await user.updateDisplayName(name);

      await _firestore.collection('users').doc(user.uid).set({
        'uid': user.uid,
        'name': name,
        'email': user.email,
        'createdAt': FieldValue.serverTimestamp(),
      });

      _currentUser = UserModel(
        id: user.uid,
        name: name,
        email: user.email ?? "",
      );

      return _currentUser;
    } on FirebaseAuthException {
      return null;
    }
  }

  UserModel? getCurrentUser() {
    return _currentUser;
  }

  Future<void> logout() async {
    await _auth.signOut();
    _currentUser = null;
  }
}
