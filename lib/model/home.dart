class Location {
  final String name;
  final String rating;
  final String image;
  final String id;

  Location({
    required this.name,
    required this.rating,
    required this.image,
    required this.id,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      name: json['name'] ?? "",
      rating: json['rating'] ?? "",
      image: json['image'] ?? "",
      id: json['id'] ?? "",
    );
  }
}
