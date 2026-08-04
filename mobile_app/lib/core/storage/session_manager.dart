class SessionManager {

  static bool _isLoggedIn = false;


  static String? _userEmail;



  static bool get isLoggedIn => _isLoggedIn;



  static String? get userEmail => _userEmail;



  static void saveSession(String email) {

    _isLoggedIn = true;

    _userEmail = email;

  }



  static void clearSession() {

    _isLoggedIn = false;

    _userEmail = null;

  }

}
