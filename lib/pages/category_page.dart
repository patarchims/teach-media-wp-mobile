part of 'pages.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var categoryProfider = Provider.of<CategoryProvider>(context);
    return Scaffold(
        body: FutureBuilder(
            future: categoryProfider.getCategory(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data != null) {
                List<CategoryModel> data = snapshot.data;
                return GridView.count(
                  childAspectRatio: 3 / 2,
                  padding: EdgeInsets.all(8),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children: data.map((e) {
                    return CategoryCard(
                      categoryModel: e,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FilterByCategoryPage(
                                      categoryId: e.id,
                                    )));
                      },
                    );
                  }).toList(),
                );
              }

              return Center(
                child: CircularProgressIndicator(),
              );
            }));
  }
}
