part of 'widgets.dart';

class IconNavigationNavbar extends StatelessWidget {
  final String icon;
  final String title;

  const IconNavigationNavbar(
      {Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      // width: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      icon,
                    ),
                    fit: BoxFit.contain)),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            title,
            style: whiteTextStyle.copyWith(fontSize: 11),
          )
        ],
      ),
    );
  }
}
