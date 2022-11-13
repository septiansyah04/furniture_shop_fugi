part of 'widgets.dart';

class RatingStars extends StatelessWidget {
  final double rate;

  const RatingStars(this.rate, {super.key});

  @override
  Widget build(BuildContext context) {
    int numberOfStars = rate.round();

    return Row(
      children: List<Widget>.generate(
              5,
              (index) => Icon(
                    (index < numberOfStars)
                        ? MdiIcons.star
                        : MdiIcons.starOutline,
                    size: 16,
                    color: Colors.amber,
                  )) +
          [
            const SizedBox(
              width: 4,
            ),
            Text(
              rate.toString(),
              style: greyTextstyle.copyWith(fontSize: 12),
            )
          ],
    );
  }
}
