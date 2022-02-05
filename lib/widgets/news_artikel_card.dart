part of 'widgets.dart';

class NewsArtikelCard extends StatelessWidget {
  final CategoryDetailModel categoryDetailModel;
  const NewsArtikelCard({Key? key, required this.categoryDetailModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    DetailPostPage(categoryDetailModel: categoryDetailModel)));
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: ChacheImageWidget(
              height: 110,
              width: 130,
              urlImage: ApiDb.IMAGE_URL +
                  categoryDetailModel.featureImage.mediaImage.file.toString(),
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child:
                    Text(categoryDetailModel.titleCategory.title ?? 'No Name',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.left),
              ),
              SizedBox(height: 2),
              Container(
                height: 100,
                child: Text(
                  "${categoryDetailModel.contentDetail.content}",
                  style: blackTextStyle,
                  textAlign: TextAlign.justify,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
