import 'package:food/resources/resource.dart';

class MainPageModel {
  String image;
  String title;
  String description;

  MainPageModel(this.image, this.title, this.description);
}

List<MainPageModel> mainPage = data
    .map(
      (item) => MainPageModel(
        (item["image"].toString()),
        item["title"].toString(),
        item["description"].toString(),
      ),
    )
    .toList();

var data = [
  {
    "image": Images.imageGetStarted1,
    "title": Strings.titleGetStarted1,
    "description": Strings.descriptionGetStarted1,
  },
  {
    "image": Images.imageGetStarted2,
    "title": Strings.titleGetStarted2,
    "description": Strings.descriptionGetStarted2,
  },
  {
    "image": Images.imageGetStarted3,
    "title": Strings.titleGetStarted3,
    "description": Strings.descriptionGetStarted3,
  },
  {
    "image": Images.imageGetStarted1,
    "title": Strings.titleGetStarted1,
    "description": Strings.descriptionGetStarted1,
  },
  {
    "image": Images.imageGetStarted2,
    "title": Strings.titleGetStarted2,
    "description": Strings.descriptionGetStarted2,
  },
  {
    "image": Images.imageGetStarted3,
    "title": Strings.titleGetStarted3,
    "description": Strings.descriptionGetStarted3,
  },
];

class MainPageModel2 {
  String image;
  String title;
  String description;

  MainPageModel2(this.image, this.title, this.description);
}

List<MainPageModel> mainPage2 = data2
    .map(
      (item) => MainPageModel(
        (item["image"].toString()),
        item["title"].toString(),
        item["description"].toString(),
      ),
    )
    .toList();

var data2 = [
  {
    "image": 'assets/levan.jpg',
    "title": Strings.titleGetStarted1,
    "description": Strings.descriptionGetStarted1,
  },
  {
    "image": 'assets/chel.png',
    "title": Strings.titleGetStarted2,
    "description": Strings.descriptionGetStarted2,
  },
  {
    "image": 'assets/real.png',
    "title": Strings.titleGetStarted3,
    "description": Strings.descriptionGetStarted3,
  },
  {
    "image": 'assets/levan.jpg',
    "title": Strings.titleGetStarted1,
    "description": Strings.descriptionGetStarted1,
  },
  {
    "image": 'assets/chel.png',
    "title": Strings.titleGetStarted2,
    "description": Strings.descriptionGetStarted2,
  },
  {
    "image": 'assets/real.png',
    "title": Strings.titleGetStarted3,
    "description": Strings.descriptionGetStarted3,
  }
];
