import 'package:get/get.dart';
class Dimensions {
  // Para la Altura de la pantalla
  static double screenHeight = Get.context!.height;
  // Para el Ancho de la pantalla
  static double screenWidth = Get.context!.width;

  static double pageview= screenHeight/2.64;
 
 // Sin importar el tamaño de la pantalla se dividira en 3.84
  static double pageviewcontainer= screenHeight/3.84;
 
 // Este sera para el Texto
  static double pageviewTextcontainer= screenHeight/7.03;

  // Dinamica de la Altura de los padding y margin
  static double height10 = screenHeight/84.4;
  static double height15 = screenHeight/56.27;
  static double height20 = screenHeight/42.2;
  static double height30 = screenHeight/28.13;
  static double height45 = screenHeight/18.76;

  // Dinamica del Ancho de los padding y margin
  static double width10 = screenWidth/84.4;
  static double width15 = screenWidth/56.27;
  static double width20 = screenWidth/42.2;
  static double width30 = screenWidth/28.13;
  static double width45 = screenWidth/18.76;

  // Para el tamaño de la fuente
  static double font16 = screenHeight/52.75;
  static double font20 = screenHeight/42.2;
  static double font26 = screenHeight/32.46;

  // Para el radio de los contenedores
  static double radius15 = screenHeight/56.27;
  static double radius20 = screenHeight/42.2;
  static double radius30 = screenHeight/28.13;

  // Para el tamaño de los iconos
  static double iconSize24 = screenHeight/35.17;
  static double iconSize16 = screenHeight/52.75;

  // lista view size
  static double listViewImgSize = screenWidth / 3.25;
  static double listViewTextSize = screenWidth / 3.9;

  //popular food
  static double popularFoodImgSize = screenHeight / 2.41;

  //bottom height
  static double bottomHeightBar = screenHeight/7.03;
}