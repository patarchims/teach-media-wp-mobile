part of 'pages.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    var categoryProfider = Provider.of<CategoryProvider>(context);
    return Scaffold(
        backgroundColor: bgColor,
        body: FutureBuilder(
          future: categoryProfider.getPostByCategoryAndPage(36, 1),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data != null) {
              List<CategoryDetailModel> data = snapshot.data;
              return CarouselSlider(
                items: data.map((e) {
                  return Container(
                      margin: EdgeInsets.only(top: 12),
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: ChacheImageWidget(
                              height: 200,
                              urlImage: ApiDb.IMAGE_URL +
                                  e.featureImage.mediaImage.file.toString(),
                              width: MediaQuery.of(context).size.width -
                                  defaultMargin,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                                height: 200,
                                width: MediaQuery.of(context).size.width -
                                    defaultMargin,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                      Color(0xFF468FD4),
                                      Color(0xFFB9D1E1).withOpacity(0.6),
                                    ]))),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailPostPage(
                                            categoryDetailModel: e,
                                          )));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Center(
                                child: Text(e.titleCategory.title.toString(),
                                    style: blackTextStyle.copyWith(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.left),
                              ),
                            ),
                          )
                        ],
                      ));
                }).toList(),
                options: CarouselOptions(
                  autoPlay: true,
                ),
              );
            }

            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ));
  }
}
