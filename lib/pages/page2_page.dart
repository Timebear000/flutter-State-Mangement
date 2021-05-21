import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_singleton/bloc/user/user_cubit.dart';

import '../models/User.dart';

class Pagin2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userCubit = context.read<UserCubit>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pagin 2',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text(
                'Set User',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                final newUser = User(
                  name: '김요환',
                  age: 34,
                  professtion: [
                    'FullStack Developer',
                    'VideoJugador Veteran',
                  ],
                );
                userCubit.selectionUser(newUser);
              },
            ),
            MaterialButton(
              child: Text(
                'Chage Age',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                userCubit.chageAge(35);
              },
            ),
            MaterialButton(
              child: Text(
                'Anadding Profession',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                userCubit.addProfession();
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_new),
        onPressed: () => Navigator.pushNamed(context, 'pagin1'),
      ),
    );
  }
}
