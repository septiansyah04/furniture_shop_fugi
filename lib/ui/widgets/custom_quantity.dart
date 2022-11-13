part of 'widgets.dart';

class CustomQuantity extends StatefulWidget {
  final int quantity;
  final ValueChanged<int> onChanged;
  // final Function(int) onChanged;
  const CustomQuantity({
    super.key,
    required this.quantity,
    required this.onChanged,
  });

  @override
  State<CustomQuantity> createState() => _CustomQuantityState();
}

class _CustomQuantityState extends State<CustomQuantity> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: greyColor.withOpacity(0.3),
        ),
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                quantity = max(1, quantity - 1);
                widget.onChanged(quantity);
              });
            },
            child: const SizedBox(
              width: 26,
              height: 26,
              child: Icon(
                Icons.remove,
                size: 16,
              ),
            ),
          ),
          Container(
            width: 50,
            height: 25,
            color: greyColor.withOpacity(0.3),
            child: Center(
              child: Text(
                widget.quantity.toString(),
                textAlign: TextAlign.center,
                style: blackTextStyle,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                quantity = min(999, widget.quantity + 1);
                widget.onChanged(quantity);
              });
            },
            child: const SizedBox(
              width: 26,
              height: 26,
              child: Icon(
                Icons.add,
                size: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
