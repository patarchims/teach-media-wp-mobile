part of 'widgets.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int index)? onTap;

  const CustomBottomNavBar({Key? key, this.onTap, required this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      color: purpleColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          InkWell(
            onTap: () {
              if (onTap != null) {
                onTap!(0);
              }
            },
            child: IconNavigationNavbar(
              icon: iconsAssets +
                  ((selectedIndex == 0)
                      ? 'ic_home_normal.png'
                      : 'ic_home_selected.png'),
              title: 'Home',
            ),
          ),
          Spacer(),
          InkWell(
            onTap: () {
              if (onTap != null) {
                onTap!(1);
              }
            },
            child: IconNavigationNavbar(
              icon: iconsAssets +
                  ((selectedIndex == 0)
                      ? 'ic_home_normal.png'
                      : 'ic_home_selected.png'),
              title: 'Category',
            ),
          ),
          Spacer(),
          InkWell(
            onTap: () {
              if (onTap != null) {
                onTap!(2);
              }
            },
            child: IconNavigationNavbar(
              icon: iconsAssets +
                  ((selectedIndex == 0)
                      ? 'ic_home_normal.png'
                      : 'ic_home_selected.png'),
              title: 'User',
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
