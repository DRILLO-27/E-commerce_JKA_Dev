import 'package:flutter_application_1/controllers/popular_product_controller.dart';
import 'package:flutter_application_1/data/api/api_client.dart';
import 'package:flutter_application_1/data/repository/popular_product_repo.dart';
import 'package:flutter_application_1/utils/app_constants.dart';
import 'package:get/get.dart';

/// Función asincrónica de inicialización.
/// `Future<void>` indica que la función no devuelve un valor concreto.
/// Se usa `async` para permitir operaciones asincrónicas dentro de la función.
Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repository
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //Controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
