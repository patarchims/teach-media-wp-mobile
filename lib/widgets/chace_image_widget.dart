part of 'widgets.dart';

class ChacheImageWidget extends StatelessWidget {
  final String? urlImage;
  final double? height;
  final double? width;
  const ChacheImageWidget({Key? key, this.urlImage, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: urlImage.toString(),
      height: height,
      width: width,
      fit: BoxFit.cover,
      placeholder: (context, url) => Center(
          child: Container(
              height: 10, width: 50, child: LinearProgressIndicator())),
      errorWidget: (context, url, error) => Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Color(0xFFF6F7F8),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Image failed to load", style: blackTextStyle.copyWith()),
            SizedBox(height: 6),
            Container(
              height: 24,
              width: 24,
              child: Icon(
                Icons.error,
                color: dangerColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
