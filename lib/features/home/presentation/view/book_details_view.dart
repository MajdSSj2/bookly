import 'package:bookly/features/home/presentation/view/widgets/book_details_body_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BookDetailsBodyView());
  }
}
