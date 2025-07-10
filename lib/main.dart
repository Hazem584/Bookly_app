import 'package:bookly_app/core/di/dependency_injection.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/logic/featured_books_logic/featured_books_cubit.dart';
import 'package:bookly_app/features/home/logic/newest_books/newset_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/helpers/constants.dart';
import 'core/networking/api_services.dart';
import 'core/route/app_router.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  setupGetIt();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>()
            )..fetchFeaturedBooks(),
          ),
          BlocProvider(
            create: (context) => NewsetBooksCubit(getIt.get<HomeRepoImpl>()
            )..fetchNewsetBooks(),
          ),
        ],
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme: GoogleFonts.montserratAlternatesTextTheme(
              ThemeData.dark().textTheme,
            ),
          ),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
