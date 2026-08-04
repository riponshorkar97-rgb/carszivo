import '../models/user_model.dart';

class AuthRepository {

  static UserModel? _currentUser;

  Future<UserModel?> login(
    String email,
    String password,
  ) async {

    // Firebase login logic will be added later

    _currentUser = UserModel(
      id: "1",
      name: "Carszivo User",
      email: email,
    );

    return _currentUser;
  }

  Future<UserModel?> register(
    String name,
    String email,
    String password,
  ) async {

    // Firebase register logic will be added later

    _currentUser = UserModel(
      id: "1",
      name: name,
      email: email,
    );

    return _currentUser;
  }

  UserModel? getCurrentUser() {
    return _currentUser;
  }

  Future<void> logout() async {
    _currentUser = null;
  }
}
