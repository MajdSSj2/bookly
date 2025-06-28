import 'package:bookly/features/home/presentation/view/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class SimilarBooks extends StatelessWidget {
  const SimilarBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CustomBookItem(),
          );
        },
      ),
    );
  }
}
