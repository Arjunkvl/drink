import 'package:drink/Presentation/CheckPoint/check_point_page.dart';
import 'package:drink/application/CheckPoint/bloc/lookup_bloc.dart';
import 'package:drink/application/CollectionPage/bloc/collection_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Theme.of(context).colorScheme.inversePrimary),
    );
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<LookupBloc>(
            create: (BuildContext context) => LookupBloc(),
          ),
          BlocProvider<CollectionBloc>(
            create: (BuildContext context) => CollectionBloc(),
          ),
        ],
        child: MaterialApp(
          theme: ThemeData(
            colorSchemeSeed: const Color(0xff6A93FC),
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          home: const CheckPointPage(),
        ),
      ),
    );
  }
}
