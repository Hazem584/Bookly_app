import 'package:bookly_app/features/search/ui/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../features/home/data/repos/home_repo_impl.dart';
import '../../features/home/logic/similar_books/similar_books_cubit.dart';
import '../../features/home/ui/book_details_view.dart';
import '../../features/home/ui/home_screen.dart';
import '../di/dependency_injection.dart';



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
        builder: (context, state) => BlocProvider(
            create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
            child: const BookDetailsView()),
      ),
      GoRoute(path: KSearchView, builder: (context, state) => SearchView()),
    ],
  );
}
