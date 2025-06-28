import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_result_listview.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_textfield.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: CustomSearchTextField(),
              ),
              SizedBox(height: 16),
              Text(
                'Search Result',
                style: Styles.textStyle18,
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 16),
              Expanded(child: SearchResultListview()),
            ],
          ),
        ),
      ),
    );
  }
}
