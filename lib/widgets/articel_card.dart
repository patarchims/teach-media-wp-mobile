part of 'widgets.dart';

class ArtikelCard extends StatelessWidget {
  final CategoryDetailModel? categoryDetailModel;
  final Function? onTap;
  const ArtikelCard({Key? key, this.onTap, this.categoryDetailModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        height: 240,
        decoration: BoxDecoration(
            color: Color(0xFFFDFDFF).withOpacity(0.6),
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.white, width: 2)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 179,
                  height: 100,
                  child: Text(
                    categoryDetailModel!.titleCategory.title.toString(),
                    style: blackTextStyle.copyWith(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 9,
                ),
                Expanded(
                    child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  // child: Image.network(
                  //   ApiDb.IMAGE_URL +
                  //       categoryDetailModel!.featureImage.mediaImage.file
                  //           .toString(),
                  //   width: 100,
                  //   height: 100,
                  //   fit: BoxFit.cover,
                  // )
                  child: CachedNetworkImage(
                    imageUrl: ApiDb.IMAGE_URL +
                        categoryDetailModel!.featureImage.mediaImage.file
                            .toString(),
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Center(
                        child: Container(
                            height: 10,
                            width: 50,
                            child: LinearProgressIndicator())),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  categoryDetailModel!.date.toString().substring(0, 9),
                  style: whiteTextStyle.copyWith(
                      fontSize: 12, color: Color(0xFF989BA9)),
                ),
                Image.asset(iconsAssets + "point.png", height: 24, width: 24)
              ],
            ),
            SizedBox(
              height: 6,
            ),
            // Container(
            //     height: 45,
            //     width: double.infinity,
            //     child: Html(
            //         data: categoryDetailModel!.categoryContent.content
            //             .toString())),
            // Text(
            //   "When I was studying visual communications design in college, I was fascinated by how...",
            //   style: whiteTextStyle.copyWith(
            //       color: Color(0xFF2F315A), fontSize: 14),
            // )
          ],
        ),
      ),
    );
  }
}
