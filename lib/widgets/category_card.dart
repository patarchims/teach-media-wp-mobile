part of 'widgets.dart';

class CategoryCard extends StatelessWidget {
  final Function? onTap;
  final CategoryModel categoryModel;
  const CategoryCard({Key? key, this.onTap, required this.categoryModel})
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
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 100,
        width: double.infinity,
        child: Stack(
          children: [
            InkWell(
              onTap: () {
                if (onTap != null) {
                  onTap!();
                }
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                // child: Image.network(
                //   'https://images.unsplash.com/photo-1488590528505-98d2b5aba04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
                //   fit: BoxFit.cover,
                // ),
                child: CachedNetworkImage(
                  imageUrl:
                      'https://images.unsplash.com/photo-1488590528505-98d2b5aba04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Center(
                      child: Container(
                          height: 10,
                          width: 50,
                          child: LinearProgressIndicator())),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    whiteColor.withOpacity(0.2),
                    whiteColor,
                  ])),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(categoryModel.name.toString(),
                  style: blackTextStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
