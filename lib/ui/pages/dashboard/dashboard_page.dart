part of 'dashboard.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<String> categories = [
    'All',
    'Living Room',
    'Bedroom',
    'Dining Room',
    'Kitchen',
    'Cupboard',
  ];

  List<ProductModel> products = [];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget displayTabbar() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Row(
            children: categories
                .map(
                  (e) => CustomTabbar(
                    title: e,
                    isActive: categories.indexOf(e) == selectedIndex,
                    onTap: () {
                      setState(() {
                        selectedIndex = categories.indexOf(e);
                      });
                    },
                  ),
                )
                .toList(),
          ),
        ),
      );
    }

    Widget displayContent() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child: Text(
              'Recommended Furniture',
              style: blackTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            color: backgroundColor,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
              vertical: 10,
            ),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.75),
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: mockProduct.length,
              itemBuilder: (context, index) {
                return CardProduct(
                  product: mockProduct[index],
                );
              },
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/icons/ic_drawer.png',
            width: 20,
          ),
        ),
        title: Text(
          'Home',
          style: blackTextStyle.copyWith(
            fontSize: 15,
            fontWeight: medium,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              IconlyLight.search,
              size: 20,
              color: blackColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
                vertical: 20,
              ),
              child: Text(
                'Discover the most \nmodern furniture',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                  height: 1.1,
                ),
              ),
            ),
            displayTabbar(),
            const SizedBox(
              height: 25,
            ),
            displayContent(),
          ],
        ),
      ),
    );
  }
}
