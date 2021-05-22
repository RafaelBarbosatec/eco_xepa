import 'package:eco_xepa/src/ui/pages/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:cubes/cubes.dart';

class TutorialScreen extends StatefulWidget {
  @override
  _TutorialScreenState createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  late PageController controller;

  @override
  void initState() {
    controller = PageController();
    controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView(
          controller: controller,
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.purple,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.green,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: Colors.white,
              height: 1,
              width: double.maxFinite,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.chevron_left_rounded,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    controller.previousPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.decelerate,
                    );
                  },
                ),
                SizedBox(
                  child: SmoothPageIndicator(
                    controller: controller, // PageController
                    count: 3,
                    effect: WormEffect(
                      dotColor: Colors.white.withOpacity(0.5),
                      activeDotColor: Colors.white,
                      dotWidth: 10,
                      dotHeight: 10,
                    ), // your preferred effect
                    onDotClicked: (index) {},
                  ),
                ),
                _buildNext(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNext() {
    if (controller.positions.isNotEmpty && controller.page == 2) {
      return InkWell(
        onTap: () {
          context.goTo(LoginScreen());
        },
        child: Text(
          'ENTRAR',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
    return IconButton(
      icon: Icon(
        Icons.chevron_right_rounded,
        color: Colors.white,
      ),
      onPressed: () {
        controller.nextPage(
          duration: Duration(milliseconds: 300),
          curve: Curves.decelerate,
        );
      },
    );
  }
}
