part of 'widgets.dart';

class PaddingContainer extends StatelessWidget {
  final Widget widget;
  const PaddingContainer({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: widget,
    );
  }
}
