import 'package:food/resources/resource.dart';

class MatchesModel {
  String image1;
  String title1;
  String image2;
  String title2;
  String time;
  String date;

  MatchesModel(
      this.image1, this.title1, this.time, this.image2, this.title2, this.date);
}

List<MatchesModel> matchesModel = data
    .map(
      (item) => MatchesModel(
        (item["image1"].toString()),
        item["title1"].toString(),
        item["time"].toString(),
        item["image2"].toString(),
        item["title2"].toString(),
        item["date"].toString(),
      ),
    )
    .toList();

var data = [
  {
    "image1": Images.imageGetStarted1,
    "image2": Images.imageGetStarted2,
    "title1":"Manchester City",
    "title2": "Manchester United",
    "time": "06:30",
    "date": "30 OCT",
  },
  {
    "image1": Images.imageGetStarted1,
    "image2": Images.imageGetStarted2,
    "title1":"Real Madrid",
    "title2": "Manchester United",
    "time": "06:30",
    "date": "30 OCT",
  },
  {
    "image1": Images.imageGetStarted1,
    "image2": Images.imageGetStarted2,
    "title1":"Manchester City",
    "title2": "Manchester United",
    "time": "06:30",
    "date": "30 OCT",
  },
  {
    "image1": Images.imageGetStarted1,
    "image2": Images.imageGetStarted2,
    "title1":"Real Madrid",
    "title2": "Manchester City",
    "time": "06:30",
    "date": "30 OCT",
  },
];
