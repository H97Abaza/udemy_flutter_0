import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(),
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
        ),
        title: const Text(
          'First App',
        ),
        actions: [
          IconButton(
            onPressed: () {
              // ignore: avoid_print
              print('Write the right thing to search for');
            },
            icon: const Icon(
              Icons.search,
              color: Colors.cyan,
            ),
            tooltip: "Search",
          ),
          IconButton(
            onPressed: () {
              // ignore: avoid_print
              print('Notification is clicked');
            },
            icon: const Icon(
              Icons.notification_important,
              color: Colors.cyan,
            ),
            tooltip: 'Notification',
          )
        ],
        centerTitle: true,
      ),
      // ignore: avoid_unnecessary_containers
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  //bottomRight: Radius.circular(20),
                ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_xcxCzYD8fQW6FB-cW8Iqs0JnY6EvVOqdTg&usqp=CAU'),
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: 200,
                    color: Colors.black.withOpacity(0.5),
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Text(
                      'Hussein',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
