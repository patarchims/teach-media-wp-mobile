part of 'widgets.dart';

class HeaderWidget extends StatelessWidget {
  final Widget? widget;
  final Color? bgColor;
  const HeaderWidget({Key? key, this.widget, this.bgColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor ?? Color(0xFFE1E4F0),
      appBar: AppBar(
        title: Image.asset(
          iconsAssets + 'logo_teachmedia.png',
          width: 200,
        ),
      ),
      body: widget,
    );
  }
}
