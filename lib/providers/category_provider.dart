part of 'provider.dart';

class CategoryProvider extends ChangeNotifier {
  getCategory() async {
    var result = await http.get(Uri.parse(ApiDb.CATEGORY));
    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<CategoryModel> categoryModel =
          data.map((e) => CategoryModel.fromJson(e)).toList();
      return categoryModel;
    } else {
      return <CategoryModel>[];
    }
  }

  getPostByCategory(int id) async {
    var result =
        await http.get(Uri.parse(ApiDb.FILTERPOSTBYCATEGORY + id.toString()));
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
