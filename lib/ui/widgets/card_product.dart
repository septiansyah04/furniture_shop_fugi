part of 'widgets.dart';

class CardProduct extends StatelessWidget {
  final ProductModel product;
  final Function onTap;
  const CardProduct({
    super.key,
    required this.onTap,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        width: 200,
        padding: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
          color: whiteColor,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(
                        defaultRadius,
                      ),
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        product.imageUrl.toString(),
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 30,
                    width: 30,
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.only(top: 10, left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      color: whiteColor,
                    ),
                    child: Image.asset(
                      'assets/icons/ic_love.png',
                      color: product.isFavorite!
                          ? Colors.red
                          : const Color(0xffE5E5E5),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 7),
            Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name ?? '',
                      style: blackTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$ ${product.price}',
                          style: greyTextstyle.copyWith(
                            fontWeight: light,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 17,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              product.rate.toString(),
                              style: greyTextstyle.copyWith(
                                fontWeight: light,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
