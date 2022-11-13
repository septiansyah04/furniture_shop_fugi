part of 'widgets.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final Color titleColor;
  final Color color;
  final Function() onPressed;
  final EdgeInsets margin;
  final double? elevation;
  final List<BoxShadow> boxShadow;

  const CustomButton({
    Key? key,
    required this.title,
    this.width = double.infinity,
    this.height = 45,
    required this.onPressed,
    this.margin = EdgeInsets.zero,
    required this.titleColor,
    required this.color,
    this.elevation,
    this.boxShadow = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      decoration: BoxDecoration(
        boxShadow: boxShadow,
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          elevation: elevation,
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: bold,
            color: titleColor,
          ),
        ),
      ),
    );
  }
}
