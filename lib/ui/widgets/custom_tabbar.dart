part of 'widgets.dart';

class CustomTabbar extends StatelessWidget {
  final String title;
  final bool isActive;
  final Function() onTap;
  const CustomTabbar({
    super.key,
    required this.title,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 7,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isActive ? greyColor : whiteColor,
        ),
        child: Center(
          child: Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 12,
              fontWeight: isActive ? semiBold : regular,
              color: isActive ? whiteColor : blackColor,
            ),
          ),
        ),
      ),
    );
  }
}
