import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/view/widgets/book_actions.dart';
import 'package:bookly/features/home/presentation/view/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/view/widgets/custom_book_details_appbar.dart';
import 'package:bookly/features/home/presentation/view/widgets/custom_book_item.dart';
import 'package:bookly/features/home/presentation/view/widgets/similar_books_listview.dart';
import 'package:flutter/material.dart';

class BookDetailsBodyView extends StatelessWidget {
  const BookDetailsBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            CustomBookDetailsAppbar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .22),
              child: CustomBookItem(),
            ),
            SizedBox(height: 43),
            Text(
              'The Jungle Book',
              style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 6),
            Opacity(
              opacity: .7,
              child: Text(
                'Rudyard Kipling',
                style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 18),

            BookRating(mainAxisAlignment: MainAxisAlignment.center),
            SizedBox(height: 37),
            BookAction(),
            SizedBox(height: 40),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'You might be interested in',
                  style: Styles.textStyle14.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            SimilarBooks(),
          ],
        ),
      ),
    );
  }
}
