part of 'pages.dart';

class DetailPostPage extends StatelessWidget {
  final CategoryDetailModel categoryDetailModel;
  const DetailPostPage({Key? key, required this.categoryDetailModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HeaderWidget(
      widget: ListView(
        padding: EdgeInsets.only(
            top: defaultMargin,
            // left: defaultMargin,
            // right: defaultMargin,
            bottom: 2 * defaultMargin),
        children: [
          PaddingContainer(
            widget: Text(categoryDetailModel.titleCategory.title.toString(),
                textAlign: TextAlign.left,
                style: blackTextStyle.copyWith(
                    fontSize: 32, fontWeight: FontWeight.bold)),
          ),
          PaddingContainer(
            widget: Text(
              "Teach Media",
              style: blackTextStyle.copyWith(
                  fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
          PaddingContainer(
            widget: Text(
              categoryDetailModel.date.toString().substring(0, 9),
              style: blackTextStyle.copyWith(
                  fontSize: 12, fontWeight: FontWeight.bold, color: greyColor),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          // Image.network(
          //     "https://images.unsplash.com/photo-1628277613967-6abca504d0ac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80",
          //     height: 248,
          //     width: double.infinity,
          //     fit: BoxFit.cover),
          CachedNetworkImage(
            imageUrl: ApiDb.IMAGE_URL +
                categoryDetailModel.featureImage.mediaImage.file.toString(),
            height: 248,
            width: double.infinity,
            fit: BoxFit.cover,
            placeholder: (context, url) => Center(
                child: Container(
                    height: 10, width: 50, child: LinearProgressIndicator())),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          SizedBox(
            height: 18,
          ),
          PaddingContainer(
            widget: Text(
              "What is Lorem Ipsum?\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\nestablished fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
              textAlign: TextAlign.justify,
              style: blackTextStyle,
            ),
          )
        ],
      ),
    );
  }
}
