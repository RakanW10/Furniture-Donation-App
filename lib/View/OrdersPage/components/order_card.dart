import 'package:flutter/material.dart';
import 'package:furniture_donation/Model/Order/order_model.dart';
import 'package:furniture_donation/style.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.ownerName,
    required this.ownerPhone,
    required this.buyerName,
    required this.buyerPhone,
    required this.isIncomingOrder,
    required this.orderStatus,
    this.onAccept,
    this.onReject,
  });
  final String imageUrl;
  final String name;
  final String ownerName;
  final String ownerPhone;
  final String buyerName;
  final String buyerPhone;
  final bool isIncomingOrder;
  final OrderStatus orderStatus;
  final Function()? onAccept;
  final Function()? onReject;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 148,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.primary,
      ),
      clipBehavior: Clip.antiAlias,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: SizedBox(
              height: 148,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    isIncomingOrder ? buyerName : ownerName,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    isIncomingOrder
                        ? orderStatus == OrderStatus.accepted
                            ? buyerPhone
                            : "05x xxx xxxx"
                        : orderStatus == OrderStatus.accepted
                            ? ownerPhone
                            : "05x xxx xxxx",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    isIncomingOrder ? "Incoming order" : "Outgoing order",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      isIncomingOrder
                          ? Container(
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xFF23D813),
                              ),
                              child: IconButton(
                                onPressed: onAccept,
                                icon: const Icon(
                                  Icons.check,
                                  size: 24,
                                  color: AppColors.primary,
                                ),
                              ),
                            )
                          : InkWell(
                              onTap: onAccept,
                              child: Text(
                                orderStatus.toString().split(".").last,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                      const SizedBox(width: 8),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xFFD81313),
                        ),
                        child: IconButton(
                          onPressed: onReject,
                          icon: const Icon(
                            Icons.close,
                            size: 24,
                            color: AppColors.primary,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
