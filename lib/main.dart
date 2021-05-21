import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_singleton/bloc/user/user_cubit.dart';
import 'package:state_singleton/pages/page1_page.dart';
import 'package:state_singleton/pages/page2_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => new UserCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'pagin1',
        routes: {
          'pagin1': (_) => Pagin1Page(),
          'pagin2': (_) => Pagin2Page(),
        },
      ),
    );
  }
}
