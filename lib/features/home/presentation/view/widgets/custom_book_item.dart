import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
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
    );
  }
}
