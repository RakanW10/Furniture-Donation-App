class Item {
  final String id;
  final String name;
  final String description;
  final List<String> imagesUrls;
  final String condition;
  final String category;
  final String ownerId;
  final bool isAvailable;

  Item({
    required this.id,
    required this.name,
    required this.description,
    required this.imagesUrls,
    required this.condition,
    required this.category,
    required this.ownerId,
    required this.isAvailable,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      imagesUrls: List<String>.from(json['imagesUrls']),
      condition: json['condition'],
      category: json['category'],
      ownerId: json['ownerId'],
      isAvailable: json['isAvailable'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'imagesUrls': imagesUrls,
      'condition': condition,
      'category': category,
      'ownerId': ownerId,
      'isAvailable': isAvailable,
    };
  }
}
