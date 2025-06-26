import 'package:bookly/features/home/presentation/view/widgets/best_seller_listview.dart';
import 'package:flutter/widgets.dart';

class BestSellerListviewBuilder extends StatelessWidget {
  const BestSellerListviewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 20,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsetsGeometry.symmetric(vertical: 10),
          child: BestSellerListViewItem(),
        );
      },
    );
  }
}
