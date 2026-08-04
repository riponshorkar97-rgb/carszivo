import '../features/auth/data/repositories/auth_repository.dart';
import '../features/auth/data/models/user_model.dart';


class AuthService {


  final AuthRepository _repository = AuthRepository();



  Future<UserModel?> login(

    String email,

    String password,

  ) async {


    return await _repository.login(

      email,

      password,

    );

  }



  Future<UserModel?> register(

    String name,

    String email,

    String password,

  ) async {


    return await _repository.register(

      name,

      email,

      password,

    );

  }



  Future<void> logout() async {


    await _repository.logout();


  }


}
