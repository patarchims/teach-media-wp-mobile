part of 'pages.dart';

class FilterByCategoryPage extends StatelessWidget {
  final int? categoryId;
  const FilterByCategoryPage({Key? key, this.categoryId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var categoryProfider = Provider.of<CategoryProvider>(context);

    return HeaderWidget(
      widget: FutureBuilder(
        future: categoryProfider.getPostByCategory(categoryId ?? 0),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data != null) {
            List<CategoryDetailModel> data = snapshot.data;
            int index = 0;
            return ListView(
              padding: EdgeInsets.only(
                  left: defaultMargin,
                  top: 2 * defaultMargin,
                  bottom: 2 * defaultMargin,
                  right: defaultMargin),
              children: data.map((e) {
                index++;
                return Container(
                  margin: EdgeInsets.only(top: index == 1 ? 0 : defaultMargin),
                  // margin: EdgeInsets.only(
                  //     top: defaultMargin, bottom: defaultMargin),
                  child: ArtikelCard(
                    categoryDetailModel: e,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPostPage(
                                    categoryDetailModel: e,
                                  )));
                    },
                  ),
                );
              }).toList(),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      // widget: ListView(
      //   padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      //   children: [
      //     SizedBox(
      //       height: defaultMargin,
      //     ),
      //     ArtikelCard(),
      //     SizedBox(
      //       height: defaultMargin,
      //     ),
      //     ArtikelCard(),
      //     SizedBox(
      //       height: defaultMargin,
      //     ),
      //     ArtikelCard(),
      //   ],
      // ),
    );
  }
}
