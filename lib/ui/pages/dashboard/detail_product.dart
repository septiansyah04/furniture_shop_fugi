part of 'dashboard.dart';

class DetailProduct extends StatefulWidget {
  final ProductModel product;
  const DetailProduct({
    super.key,
    required this.product,
  });

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  int quantity = 1;
  List<Color> colors = [
    Colors.green,
    Colors.red,
    Colors.blue,
    Colors.yellow,
  ];

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
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10,
              ),
              color: whiteColor,
            ),
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
                margin: const EdgeInsets.only(top: 10, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  color: whiteColor,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share,
                    size: 16,
                    color: blackColor,
                  ),
                ),
              )
            ],
          )
        ],
      );
    }

    Widget displayContent() {
      return Stack(
        children: [
          SafeArea(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.45,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    widget.product.imageUrl.toString(),
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SafeArea(
            child: Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 2.5,
              ),
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(
                    30,
                  ),
                ),
                color: whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 40,
                      height: 5,
                      margin: const EdgeInsets.only(bottom: 20, top: 10),
                      decoration: BoxDecoration(
                        color: greyColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        widget.product.name.toString(),
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 16,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '\$${widget.product.price.toString()}',
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 16,
                          color: blackColor.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  RatingStars(double.parse(widget.product.rate.toString())),
                  SizedBox(
                    height: defaultMargin,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Choose a Color',
                        style: greyTextstyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            margin: const EdgeInsets.only(right: 6),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.brown,
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            margin: const EdgeInsets.only(right: 6),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.amberAccent,
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            margin: const EdgeInsets.only(right: 6),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: greyColor,
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            margin: const EdgeInsets.only(right: 6),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: defaultMargin,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Select Quantity',
                        style: greyTextstyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                      CustomQuantity(
                        quantity: quantity,
                        onChanged: (p0) {
                          setState(() {
                            quantity = p0;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    widget.product.description.toString(),
                    style: greyTextstyle.copyWith(
                      fontWeight: light,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          )
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
      bottomNavigationBar: CustomButton(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 20,
        ),
        title: 'Add to Cart',
        onPressed: () {},
        titleColor: whiteColor,
        color: greyColor,
      ),
    );
  }
}
