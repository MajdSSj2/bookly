import 'package:bookly/features/home/presentation/view/book_details_view.dart';
import 'package:bookly/features/home/presentation/view/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentaion/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetails = '/bookDetails';
  // GoRouter configuration
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => HomeView()),
      GoRoute(
        path: kBookDetails,
        builder: (context, state) => BookDetailsView(),
      ),
    ],
  );
}
