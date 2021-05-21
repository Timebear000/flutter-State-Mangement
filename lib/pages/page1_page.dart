import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_singleton/bloc/user/user_cubit.dart';

import '../models/User.dart';

class Pagin1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pagin 1',
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              final userCubit = context.read<UserCubit>();
              userCubit.removeUser();
            },
          ),
        ],
      ),
      body: BodyScaffold(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_new),
        onPressed: () => Navigator.pushNamed(context, 'pagin2'),
      ),
    );
  }
}

class BodyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (_, state) {
        switch (state.runtimeType) {
          case UserInitial:
            return Center(
              child: Text('No hay Information Del User'),
            );
            break;

          case UserActive:
            return InfomationUser((state as UserActive).user);
            break;
          default:
            return Center(child: Text('No hay Information Del User'));
        }
      },
    );
  }
}

class InfomationUser extends StatelessWidget {
  final User user;
  const InfomationUser(this.user);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'General',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Name : ${user.name}'),
            ),
            ListTile(
              title: Text('Age : ${user.age}'),
            ),
            Text(
              'Professions',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(),
            ...user.professtion
                .map((e) => ListTile(
                      title: Text(e),
                    ))
                .toList(),
          ],
        ));
  }
}
