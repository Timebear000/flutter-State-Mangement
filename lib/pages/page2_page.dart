import 'package:flutter/material.dart';

class Pagin2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              onPressed: () {},
            ),
            MaterialButton(
              child: Text(
                'Chage Age',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {},
            ),
            MaterialButton(
              child: Text(
                'Anadding Profession',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {},
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
