import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class ItemPageController extends GetxController {
  late final CarouselController carouselController;

  @override
  void onInit() {
    carouselController = CarouselController();
    super.onInit();
  }
}
