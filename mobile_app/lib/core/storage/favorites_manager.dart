class FavoritesManager {


  static final List<String> _favoriteCars = [];



  static List<String> get favorites => _favoriteCars;



  static bool isFavorite(String carId) {

    return _favoriteCars.contains(carId);

  }



  static void addFavorite(String carId) {


    if (!_favoriteCars.contains(carId)) {

      _favoriteCars.add(carId);

    }


  }




  static void removeFavorite(String carId) {


    _favoriteCars.remove(carId);


  }




  static void toggleFavorite(String carId) {


    if (isFavorite(carId)) {


      removeFavorite(carId);


    } else {


      addFavorite(carId);


    }


  }

}
