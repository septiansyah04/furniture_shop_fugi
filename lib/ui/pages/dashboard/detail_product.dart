part of 'dashboard.dart';

class DetailProduct extends StatelessWidget {
  final ProductModel product;
  const DetailProduct({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    Widget displayHeader() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 30,
              height: 30,
              padding: const EdgeInsets.all(6),
              margin: EdgeInsets.only(top: 10, left: defaultMargin),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10,
                ),
                color: whiteColor,
              ),
              child: Icon(
                Icons.arrow_back_ios_new,
                size: 16,
                color: blackColor,
              ),
            ),
          ),
          // const Spacer(),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(
              'Detail Product',
              style: blackTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                width: 30,
                height: 30,
                padding: const EdgeInsets.all(6),
                margin: const EdgeInsets.only(top: 10, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  color: whiteColor,
                ),
                child: Image.asset(
                  'assets/icons/ic_love.png',
                  color: blackColor,
                ),
              ),
              Container(
                width: 30,
                height: 30,
                padding: const EdgeInsets.all(5),
                margin: EdgeInsets.only(top: 10, right: defaultMargin),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  color: whiteColor,
                ),
                child: Image.asset(
                  'assets/icons/ic_cart.png',
                  color: blackColor,
                ),
              ),
            ],
          )
        ],
      );
    }

    Widget displayContent() {
      return Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  product.imageUrl.toString(),
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            displayContent(),
            displayHeader(),
          ],
        ),
      ),
    );
  }
}
