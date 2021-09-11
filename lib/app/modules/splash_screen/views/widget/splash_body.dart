import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';
import 'package:movie_ticket/app/modules/splash_screen/controllers/splash_controller.dart';
import 'package:movie_ticket/app/routes/app_pages.dart';

class SplashBody extends StatelessWidget {
  final SplashController controller;

  const SplashBody({
    Key key,
    @required this.controller,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Swiper(
        itemBuilder: (context, index) {
          final item = controller.model[index];
          return Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage(item.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black.withOpacity(0.7),
              ),
              Positioned(
                bottom: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      item.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .7,
                      height: MediaQuery.of(context).size.width * 1.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: ExactAssetImage(item.image),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 15,
                child: Center(
                  child: Obx(
                    () => DotsIndicator(
                      dotsCount: controller.model.length,
                      position: controller.currentposition.value.toDouble(),
                      decorator: DotsDecorator(
                        size: const Size.square(9.0),
                        activeSize: const Size(18.0, 9.0),
                        activeColor: Colors.amber,
                        color: Colors.grey,
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        spacing: EdgeInsets.all(4.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
        itemCount: controller.model.length,
        onIndexChanged: (indexPage) {
          controller.currentposition.value = indexPage;
        },
      ),
      floatingActionButton: Obx(
        () => (controller.currentposition.value == 3)
            ? FloatingActionButton(
                backgroundColor: Colors.transparent,
                child: Icon(
                  Icons.arrow_forward,
                  size: 35,
                ),
                onPressed: () => Get.offNamed(Routes.HOME),
              )
            : Container(),
      ),
    );
  }

  // Widget _pageIndicator(int index) {
  //   return PageViewIndicator(
  //     pageIndexNotifier: controller.pageview,
  //     length: index,
  //     normalBuilder: (animationController, index) => Circle(
  //       size: 10.0,
  //       color: Colors.grey,
  //     ),
  //     highlightedBuilder: (animationController, index) => ScaleTransition(
  //       scale: CurvedAnimation(
  //         parent: animationController,
  //         curve: Curves.ease,
  //       ),
  //       child: Circle(
  //         size: 16.0,
  //         color: Colors.amber,
  //       ),
  //     ),
  //   );
  // }
}
