import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furniture_donation/Controller/add_item_controller.dart';
import 'package:get/get.dart';

class ImageUploader extends GetView<AddItemController> {
  const ImageUploader({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          for (var image in controller.images)
            Stack(
              children: [
                Container(
                  width: 110,
                  height: 110,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Image.file(
                      image!,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: InkWell(
                    onTap: () => controller
                        .removeImage(controller.images.indexOf(image)),
                    child: Icon(
                      FontAwesomeIcons.solidCircleXmark,
                      color: Colors.red[400],
                      size: 24,
                    ),
                  ),
                ),
              ],
            ),
          if (controller.images.length < 4)
            InkWell(
              onTap: () => controller.pickImages(),
              child: Container(
                width: 110,
                height: 110,
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.white, width: 4),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: const Icon(
                    Icons.add_circle_outline_rounded,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
