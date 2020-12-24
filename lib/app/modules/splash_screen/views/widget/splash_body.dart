import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';
import 'package:movie_ticket/app/routes/app_pages.dart';
import 'package:movie_ticket/model/page_model.dart';
import 'package:page_view_indicator/page_view_indicator.dart';

class SplashBody extends StatelessWidget {
  List<PageModel> model;
  ValueNotifier<int> _pageview = ValueNotifier(0);

  void _addPages() {
    model = List<PageModel>();
    model.add(
        PageModel('Fury', 'assets/images/fury.jpg', 'assets/images/fury.jpg'));
    model.add(PageModel('Fast And furious ', 'assets/images/fast.jpg',
        'assets/images/fast.jpg'));
    model.add(PageModel(
        'Taken', 'assets/images/taken.jpg', 'assets/images/taken.jpg'));
    model.add(PageModel('Transporter', 'assets/images/transporter.jpg',
        'assets/images/transporter.jpg'));
  }

  @override
  Widget build(BuildContext context) {
    _addPages();
    return Scaffold(
        body: Swiper(
          itemBuilder: (context, Index) {
            return Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: ExactAssetImage(model[Index].image),
                    fit: BoxFit.cover,
                  )),
                ),
                Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.black.withOpacity(0.7)),
                Positioned(
                  bottom: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        model[Index].title,
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
                            image: DecorationImage(
                          image: ExactAssetImage(model[Index].image),
                          fit: BoxFit.fill,
                        )),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 15,
                  child: Center(
                    child: _pageIndicator(model.length),
                  ),
                ),
              ],
            );
          },
          itemCount: model.length,
          onIndexChanged: (indexPage) {
            _pageview.value = indexPage;
          },
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.transparent,
            child: Icon(
              Icons.arrow_forward,
              size: 35,
            ),
            onPressed: () {
              Get.offNamed(Routes.HOME);
            }
            ),
    );
  }

  Widget _pageIndicator(int index) {
    return PageViewIndicator(
      pageIndexNotifier: _pageview,
      length: index,
      normalBuilder: (animationController, index) => Circle(
        size: 10.0,
        color: Colors.grey,
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 16.0,
          color: Colors.amber,
        ),
      ),
    );
  }
}
