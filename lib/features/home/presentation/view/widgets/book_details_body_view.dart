import 'package:bookly/features/home/presentation/view/widgets/custom_book_details_appbar.dart';
import 'package:bookly/features/home/presentation/view/widgets/custom_book_item.dart';
import 'package:flutter/widgets.dart';

class BookDetailsBodyView extends StatelessWidget {
  const BookDetailsBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Column(
        children: [
          CustomBookDetailsAppbar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .22),
            child: CustomBookItem(),
          ),
        ],
      ),
    );
  }
}
