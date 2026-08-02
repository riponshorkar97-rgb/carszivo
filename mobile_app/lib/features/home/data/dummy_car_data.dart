import 'models/car_model.dart';

class DummyCarData {
  static final List<CarModel> cars = [

    CarModel(
      name: "Land Cruiser",
      brand: "Toyota",
      price: "\$90,000",
      image: "assets/cars/land_cruiser.png",
    ),

    CarModel(
      name: "LX 600",
      brand: "Lexus",
      price: "\$110,000",
      image: "assets/cars/lexus_lx600.png",
    ),

    CarModel(
      name: "Palisade",
      brand: "Hyundai",
      price: "\$55,000",
      image: "assets/cars/hyundai_palisade.png",
    ),

    CarModel(
      name: "S-Class",
      brand: "Mercedes-Benz",
      price: "\$120,000",
      image: "assets/cars/s_class.png",
    ),

    CarModel(
      name: "X7",
      brand: "BMW",
      price: "\$105,000",
      image: "assets/cars/bmw_x7.png",
    ),

    CarModel(
      name: "Cayenne",
      brand: "Porsche",
      price: "\$95,000",
      image: "assets/cars/porsche_cayenne.png",
    ),

  ];
}
