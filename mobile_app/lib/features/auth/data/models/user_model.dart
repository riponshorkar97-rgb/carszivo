class UserModel {
  final String id;
  final String name;
  final String email;
  final String phone;
  final String photoUrl;
  final String role;
  final bool isVerified;
  final DateTime? createdAt;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    this.phone = "",
    this.photoUrl = "",
    this.role = "Buyer",
    this.isVerified = false,
    this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "email": email,
      "phone": phone,
      "photoUrl": photoUrl,
      "role": role,
      "isVerified": isVerified,
      "createdAt": createdAt?.toIso8601String(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map["id"] ?? "",
      name: map["name"] ?? "",
      email: map["email"] ?? "",
      phone: map["phone"] ?? "",
      photoUrl: map["photoUrl"] ?? "",
      role: map["role"] ?? "Buyer",
      isVerified: map["isVerified"] ?? false,
      createdAt: map["createdAt"] != null
          ? DateTime.tryParse(map["createdAt"])
          : null,
    );
  }
}
