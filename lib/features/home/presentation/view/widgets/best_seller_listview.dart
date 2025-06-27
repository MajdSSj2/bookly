import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/view/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              height: MediaQuery.of(context).size.height * .3,
              width: 100,

              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage(AssetsData.testImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    'Harry Potter\nand the Goblet of Fire',
                    style: Styles.textStyle20.copyWith(
                      fontFamily: kGtSectraFine,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 3),
                Text('J.K Rowling', style: Styles.textStyle14),
                Row(
                  children: [
                    Text(
                      r'19.99$',
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    BookRating(mainAxisAlignment: MainAxisAlignment.center),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
