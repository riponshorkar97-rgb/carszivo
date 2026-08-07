import '../../home/data/models/car_model.dart';

class ListingManager {
  ListingManager._();

  static final ListingManager instance = ListingManager._();

  final List<CarModel> _listings = [];

  List<CarModel> get listings => List.unmodifiable(_listings);

  int get count => _listings.length;

  void addListing(CarModel car) {
    _listings.add(car);
  }

  void removeListing(String carId) {
    _listings.removeWhere(
      (car) => car.id == carId,
    );
  }

  bool hasListing(String carId) {
    return _listings.any(
      (car) => car.id == carId,
    );
  }

  void clearListings() {
    _listings.clear();
  }
}
