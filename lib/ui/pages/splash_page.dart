part of 'pages.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const MainPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.network(
              'https://i.pinimg.com/736x/7d/8c/f5/7d8cf585d8b703308366b207e1ba51f4.jpg',
              fit: BoxFit.cover,
              width: 300,
            ),
          ),
          Text(
            'Furniture Shop Fugi',
            style: blackTextStyle.copyWith(
              fontSize: 24,
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
