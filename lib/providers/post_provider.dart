part of 'provider.dart';

class PostProvider extends ChangeNotifier {
  getDetailPostByID(int id) async {
    var result = await http.get(Uri.parse(ApiDb.POST_URL + id.toString()));
    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<CategoryDetailModel> categoryDetailModel =
          data.map((e) => CategoryDetailModel.fromJson(e)).toList();
      return categoryDetailModel;
    } else {
      return <CategoryDetailModel>[];
    }
  }
}
