import 'package:dio/dio.dart';
import 'package:google_images/model/image_model.dart';

String googleImageUrl = 'https://serpapi.com/search?engine=google_images';

String? word;

String imageUrlPath() => '$googleImageUrl&q=$word';

Future<List<Imagemodel>> googleImages(String word) async {
  var images = <Imagemodel>[];
  var dio = Dio();
  var url = imageUrlPath();
  var response = await dio.get(url);
  if (response.statusCode == 200) {
    var imagesJson = response.data;
    for (var imageJson in imagesJson) {
      try {
        var imageObj = Imagemodel.fromJson(imageJson);
        images.add(imageObj);
      } catch (error) {}
    }
  }
  return images;
}
