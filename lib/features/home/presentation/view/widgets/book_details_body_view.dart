import 'package:bookly/features/home/presentation/view/widgets/custom_book_details_appbar.dart';
import 'package:flutter/widgets.dart';

class BookDetailsBodyView extends StatelessWidget {
  const BookDetailsBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(children: [CustomBookDetailsAppbar()]));
  }
}
