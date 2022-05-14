import 'package:food/resources/resource.dart';

class GetStartedModel {
  String image;
  String title;
  String description;

  GetStartedModel(this.image, this.title, this.description);
}

List<GetStartedModel> getStarted = getStartedData
    .map(
      (item) => GetStartedModel(
        (item["image"].toString()),
        item["title"].toString(),
        item["description"].toString(),
      ),
    )
    .toList();

var getStartedData = [
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
  }
];
