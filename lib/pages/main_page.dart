import 'package:flutter/material.dart';
import 'package:food/commons/appbar_main_page.dart';
import 'package:food/models/model.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarMainPage("News Football", AppBar()),
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Today News",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 20,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: mainPage2.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(left: 10),
                        width: 320,
                        height: 20,
                        decoration: BoxDecoration(
                            // color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                        child: Stack(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(mainPage2[index].image,
                                    height: 300,
                                    fit: BoxFit.contain,
                                    color: Colors.white10.withOpacity(0.8),
                                    colorBlendMode: BlendMode.modulate)),
                            // Text(
                            //   "For you dsdfasds",
                            //   style: TextStyle(fontWeight: FontWeight.bold),
                            // ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, bottom: 5, top: 10),
                child: Text(
                  "For you",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: mainPage.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 90,
                          // color: Colors.amber,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10, left: 5),
                            child: Row(
                              children: [
                                Center(
                                    child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    mainPage[index].image,
                                    fit: BoxFit.cover,
                                    width: 85,
                                    height: 85,
                                  ),
                                )),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    children: [
                                      Text(mainPage[index].title),
                                      Wrap(
                                        children: [
                                          Text(mainPage[index].description),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
