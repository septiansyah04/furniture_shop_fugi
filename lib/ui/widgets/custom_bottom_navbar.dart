part of 'widgets.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;

  const CustomBottomNavBar({
    super.key,
    this.selectedIndex = 0,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              onTap(0);
            },
            child: Container(
              width: 32,
              height: 32,
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: selectedIndex == 0 ? greyColor : Colors.transparent,
              ),
              child: Image.asset(
                'assets/icons/ic_home.png',
                color: selectedIndex == 0 ? whiteColor : greyColor,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              onTap(1);
            },
            child: Container(
              width: 32,
              height: 32,
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: selectedIndex == 1 ? greyColor : Colors.transparent,
              ),
              child: Image.asset(
                'assets/icons/ic_cart.png',
                color: selectedIndex == 1 ? whiteColor : greyColor,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              onTap(2);
            },
            child: Container(
              width: 32,
              height: 32,
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: selectedIndex == 2 ? greyColor : Colors.transparent,
              ),
              child: Image.asset(
                'assets/icons/ic_star.png',
                color: selectedIndex == 2 ? whiteColor : greyColor,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              onTap(3);
            },
            child: Container(
              width: 32,
              height: 32,
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: selectedIndex == 3 ? greyColor : Colors.transparent,
              ),
              child: Image.asset(
                'assets/icons/ic_person.png',
                color: selectedIndex == 3 ? whiteColor : greyColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
