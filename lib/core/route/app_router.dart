import 'package:bookly_app/features/search/ui/search_view.dart';
import 'package:go_router/go_router.dart';
import '../../features/home/ui/book_details_view.dart';
import '../../features/home/ui/home_screen.dart';



abstract class AppRouter {
  static const KHomeView = '/home';
  static const KBookDetailsView = '/bookview';
  static const KSearchView = '/search';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => HomeScreen()),
      GoRoute(path: KHomeView, builder: (context, state) => const HomeScreen()),
      GoRoute(
        path: KBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(path: KSearchView, builder: (context, state) => SearchView()),
    ],
  );
}
