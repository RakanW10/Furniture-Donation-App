enum OrderStatus {
  pending,
  accepted,
  rejected,
  completed,
}

class OrderModel {
  String id;
  String ownerUid;
  String ownerName;
  String ownerPhoneNumber;
  String buyerId;
  String buyerName;
  String buyerPhoneNumber;
  String itemUid;
  String itemName;
  String itemImageUrl;
  OrderStatus status;

  OrderModel({
    required this.id,
    required this.ownerUid,
    required this.ownerName,
    required this.ownerPhoneNumber,
    required this.buyerId,
    required this.buyerName,
    required this.buyerPhoneNumber,
    required this.itemUid,
    required this.itemName,
    required this.itemImageUrl,
    required this.status,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      id: json['id'],
      ownerUid: json['ownerUid'],
      ownerName: json['ownerName'],
      ownerPhoneNumber: json['ownerPhoneNumber'],
      buyerId: json['buyerId'],
      buyerName: json['buyerName'],
      buyerPhoneNumber: json['buyerPhoneNumber'],
      itemUid: json['itemUid'],
      itemName: json['itemName'],
      itemImageUrl: json['itemImageUrl'],
      status: OrderStatus.values.firstWhere(
        (element) => element.toString() == "OrderStatus.${json['status']}",
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'ownerUid': ownerUid,
      'ownerName': ownerName,
      'ownerPhoneNumber': ownerPhoneNumber,
      'buyerId': buyerId,
      'buyerName': buyerName,
      'buyerPhoneNumber': buyerPhoneNumber,
      'itemUid': itemUid,
      'itemName': itemName,
      'itemImageUrl': itemImageUrl,
      'status': status.toString().split('.').last,
    };
  }
}
