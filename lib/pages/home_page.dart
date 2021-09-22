part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int bottomNaBarIndex = 0;
  late PageController pageController;
  // int? selectedPage;

  @override
  void initState() {
    super.initState();
    bottomNaBarIndex = 0;
    pageController = PageController(initialPage: bottomNaBarIndex);
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Image.asset(
          iconsAssets + 'logo_teachmedia.png',
          width: 200,
        )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: bottomNaBarIndex,
        backgroundColor: colorScheme.surface,
        selectedItemColor: colorScheme.onSurface,
        unselectedItemColor: colorScheme.onSurface.withOpacity(.60),
        selectedLabelStyle: textTheme.caption,
        unselectedLabelStyle: textTheme.caption,
        onTap: (index) {
          // Respond to item press.
          setState(() {
            bottomNaBarIndex = index;
            pageController.jumpToPage(index);
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Category'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            bottomNaBarIndex = index;
          });
        },
        children: [
          FilterByCategoryPage(),
          CategoryPage(),
          Container(color: Colors.purple)
        ],
      ),
    );
  }
}
