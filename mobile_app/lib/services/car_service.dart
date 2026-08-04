import '../features/home/data/models/car_model.dart';
import '../features/home/data/datasources/car_data.dart';

class CarService {

  // Get all luxury cars
  Future<List<CarModel>> getCars() async {

    // Temporary local data
    return CarData.cars;
  }


  // Search cars
  Future<List<CarModel>> searchCars(
    String query,
  ) async {

    final cars = CarData.cars;

    if (query.trim().isEmpty) {
      return cars;
    }

    final q = query.toLowerCase();

    return cars.where((car) {

      return car.name.toLowerCase().contains(q) ||
          car.brand.toLowerCase().contains(q);

    }).toList();

  }

}
