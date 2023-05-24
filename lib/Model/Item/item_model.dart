class Item {
  final String id;
  final String name;
  final String description;
  final List<String> imagesUrls;
  final String condition;
  final String address;
  final String category;
  final String ownerId;
  final String ownerName;
  final String ownerPhoneNumber;
  final bool isAvailable;

  Item({
    required this.id,
    required this.name,
    required this.description,
    required this.imagesUrls,
    required this.condition,
    required this.category,
    required this.address,
    required this.ownerId,
    required this.ownerName,
    required this.ownerPhoneNumber,
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
      address: json['address'],
      ownerId: json['ownerId'],
      ownerName: json['ownerName'],
      ownerPhoneNumber: json['ownerPhoneNumber'],
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
      'address': address,
      'category': category,
      'ownerId': ownerId,
      'ownerName': ownerName,
      'ownerPhoneNumber': ownerPhoneNumber,
      'isAvailable': isAvailable,
    };
  }
}
