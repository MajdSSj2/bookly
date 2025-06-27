import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.mainAxisAlignment});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Color(0xffffdd4f), size: 18),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Text('4.8', style: Styles.textStyle16),
        ),
        Text(
          '(245)',
          style: Styles.textStyle14.copyWith(
            color: Color(0xff707070),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
