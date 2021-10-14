import 'dart:async';
import 'package:flutter/material.dart';
import 'package:food/pages/page.dart';
import 'commons/common.dart';
import 'commons/get_started_common.dart';
import 'models/model.dart';
import 'resources/string.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPage = 0;
   final PageController _controller = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _controller.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  _onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  itemCount: getStarted.length,
                  onPageChanged: _onChanged,
                  itemBuilder: (context, index) {
                    return getStartedCommon(
                      title: getStarted[index].title,
                      description: getStarted[index].description,
                      image:  getStarted[index].image,
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                        List<Widget>.generate(getStarted.length, (int index) {
                      return AnimatedContainer(
                          duration:  const Duration(milliseconds: 400),
                          height: 10,
                          width: (index == _currentPage) ? 30 : 10,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 30),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: (index == _currentPage)
                                  ? Colors.blue
                                  : Colors.blue.withOpacity(0.5)));
                    })),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 80),
                child: elevatedButtonCustom(title: Strings.textButtonGetStarted,
                    sizeWidth: double.infinity,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignIn()),
                      );
                    },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
