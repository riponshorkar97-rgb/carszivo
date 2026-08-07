import '../../home/data/models/car_model.dart';

class FavoritesManager {
  FavoritesManager._();

  static final FavoritesManager instance = FavoritesManager._();

  final List<CarModel> _favorites = [];

  List<CarModel> get favorites => List.unmodifiable(_favorites);

  int get count => _favorites.length;

  bool isFavorite(String carId) {
    return _favorites.any(
      (car) => car.id == carId,
    );
  }

  void addFavorite(CarModel car) {
    if (!isFavorite(car.id)) {
      _favorites.add(car);
    }
  }

  void removeFavorite(String carId) {
    _favorites.removeWhere(
      (car) => car.id == carId,
    );
  }

  void toggleFavorite(CarModel car) {
    if (isFavorite(car.id)) {
      removeFavorite(car.id);
    } else {
      addFavorite(car);
    }
  }

  void clearFavorites() {
    _favorites.clear();
  }
}
