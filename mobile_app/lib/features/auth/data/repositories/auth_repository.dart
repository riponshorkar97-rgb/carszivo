import '../models/user_model.dart';


class AuthRepository {


  Future<UserModel?> login(
    String email,
    String password,
  ) async {

    // Firebase login logic will be added later

    return UserModel(

      id: "1",

      name: "Carszivo User",

      email: email,

    );

  }



  Future<UserModel?> register(

    String name,

    String email,

    String password,

  ) async {


    // Firebase register logic will be added later


    return UserModel(

      id: "1",

      name: name,

      email: email,

    );

  }



  Future<void> logout() async {

    // Logout logic later

  }


}
