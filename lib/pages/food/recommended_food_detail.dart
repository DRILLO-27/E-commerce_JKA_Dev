import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/utils/dimensions.dart';
import 'package:flutter_application_1/widgets/app_icon.dart';
import 'package:flutter_application_1/widgets/big_text.dart';
import 'package:flutter_application_1/widgets/exandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(20),
                child: Container(
                  child: Center(
                      child: BigText(
                          size: Dimensions.font26, text: "Sushi de Progreso")),
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Dimensions.radius20),
                          topRight: Radius.circular(Dimensions.radius20))),
                )),
            pinned: true,
            backgroundColor: AppColor.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/sushi2.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                child: ExpandableTextWidget(
                    text:
                        "El Sushi de Progreso es una exquisita combinación de ingredientes frescos y sabores equilibrados. Preparado con arroz de sushi perfectamente alineado, envuelve una suculenta porción de atún rojo, aguacate cremoso y pepino crujiente. Su cobertura de salmón ligeramente flameado le aporta un toque ahumado irresistible, mientras que un ligero aderezo de mayonesa de wasabi realza su intensidad de sabor. Cada bocado es una explosión de texturas y matices, desde la suavidad del pescado hasta la sutil acidez del arroz, todo complementado con un toque de salsa de anguila. Acompañado de jengibre encurtido y una pizca de wasabi, este sushi se convierte en una experiencia gastronómica inolvidable, ideal para los amantes de la comida japonesa."),
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
              )
            ],
          ))
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.blue,
                    backgroundColor: Colors.grey[300]!,
                    icon: Icons.remove),
                BigText(
                  text: "\$12.88 " + " X " + " 0 ",
                  color: AppColor.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.blue,
                    backgroundColor: Colors.grey[300]!,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
                top: Dimensions.height10,
                bottom: Dimensions.height10,
                left: Dimensions.width20,
                right: Dimensions.width20),
            decoration: BoxDecoration(
                color: AppColor.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20 * 2),
                    topRight: Radius.circular(Dimensions.radius20 * 2))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height10,
                      bottom: Dimensions.height10,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white),
                  child: Icon(
                    Icons.favorite,
                    color: AppColor.mainColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height10,
                      bottom: Dimensions.height10,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  child: BigText(
                    text: "\$10 | Add to cart ",
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColor.mainColor),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
