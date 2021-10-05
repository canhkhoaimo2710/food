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
  @override
  Widget build(BuildContext context) {
    int _currentPage = 0;
    PageController _controller = PageController();

    _onChanged(int index) {
      setState(() {
        _currentPage = index;
        print("current:$_currentPage " "index:$index");
      });
    }

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
                    return GetStartedCommon(getStarted[index].image,
                        getStarted[index].title, getStarted[index].description);
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
                          duration: const Duration(milliseconds: 300),
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
                child: ElevatedButtonCustom(
                  Strings.textButtonGetStarted,
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignIn()),
                    );
                  },
                  double.infinity,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTap() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SignIn()),
    );
  }
}
