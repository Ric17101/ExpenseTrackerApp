import 'package:async_redux/async_redux.dart';
import 'package:fin_tracker_app/pages/home_page.dart';
import 'package:fin_tracker_app/state/app_state.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    required this.store,
    super.key,
  });

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) => StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.light(
              secondary: Colors.white,
              primary: Colors.blue,
              tertiary: Colors.blueAccent,
            ),
            useMaterial3: true,
          ),
          home: HomePage(),
        ),
      );
}
