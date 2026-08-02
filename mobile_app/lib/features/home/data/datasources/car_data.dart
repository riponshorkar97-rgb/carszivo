import '../models/car_model.dart';

class CarData {
  static List<CarModel> cars = [
    CarModel(
      name: "Land Cruiser",
      brand: "Toyota",
      price: "\$90,000",
      image: "assets/cars/land_cruiser.png",
      year: "2026",
      engine: "3.5L V6",
      mileage: "10,000 km",
      transmission: "Automatic",
      description: "Premium luxury SUV with advanced performance.",
    ),

    CarModel(
      name: "LX 600",
      brand: "Lexus",
      price: "\$120,000",
      image: "assets/cars/lexus_lx600.png",
      year: "2026",
      engine: "3.5L Twin Turbo",
      mileage: "8,000 km",
      transmission: "Automatic",
      description: "Luxury SUV with premium comfort and technology.",
    ),

    CarModel(
      name: "Palisade",
      brand: "Hyundai",
      price: "\$55,000",
      image: "assets/cars/hyundai_palisade.png",
      year: "2026",
      engine: "3.8L V6",
      mileage: "12,000 km",
      transmission: "Automatic",
      description: "Family luxury SUV with modern features.",
    ),

    CarModel(
      name: "S-Class",
      brand: "Mercedes-Benz",
      price: "\$135,000",
      image: "assets/cars/mercedes_s_class.png",
      year: "2026",
      engine: "3.0L Turbo",
      mileage: "5,000 km",
      transmission: "Automatic",
      description: "Flagship luxury sedan with premium comfort.",
    ),

    CarModel(
      name: "7 Series",
      brand: "BMW",
      price: "\$130,000",
      image: "assets/cars/bmw_7_series.png",
      year: "2026",
      engine: "3.0L TwinPower Turbo",
      mileage: "7,500 km",
      transmission: "Automatic",
      description: "Executive luxury sedan with advanced technology.",
    ),
  ];
}
