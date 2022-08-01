import 'package:bloc_with_api/bloc/posts_bloc.dart';
import 'package:bloc_with_api/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => PostsBloc(),
    child:const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context, child) =>
           const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: HomeView(),
            ));
  }
}

