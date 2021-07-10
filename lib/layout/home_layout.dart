import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:udemy_flutter/modules/archived_tasks/archived_tasks_screen.dart';
import 'package:udemy_flutter/modules/done_tasks/done_tasks_screen.dart';
import 'package:udemy_flutter/modules/new_tasks/new_tasks_screen.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentTabIndex = 1;
  List<Widget> screens = [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),
  ];
  List<String> titles = [
    'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];

  @override
  void initState() {
    super.initState();
    createDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titles[currentTabIndex]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            print(await getName());
            print('Kasem');
            throw ('some errors');
          } catch (error) {
            print('error ${error.toString()}');
          }
          /*  getName().then(
            (value) {
              print(value);
              print('Kasem');
              throw ('some errors');
            } ,
          ).catchError((e) => print('error ${e}'));
          
        }*/
        },
        child: Icon(
          Icons.add,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task_alt_rounded),
            label: 'Done',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.archive_outlined),
            label: 'Archive',
          ),
        ],
        currentIndex: currentTabIndex,
        onTap: (index) {
          setState(() {
            currentTabIndex = index;
          });
        },
      ),
      body: screens[currentTabIndex],
    );
  }

  Future<String> getName() async {
    return 'Hussein Abaza';
  }

  void createDatabase() async {
    var database = await openDatabase('todo.db', version: 1,
        onCreate: (database, version) {
      print('database created');
      //id integer
      //title string
      //date string
      //time string
      //status string
      database
          .execute(
              'CREATE TABLE tasks (id INTEGER PRIMARY KEY,title TEXT,date TEXT,time TEXT,status TEXT)')
          .then((value) => print('table created'))
          .catchError((error) {
        print('Error when creating table: ${error.toString()}');
      });
    }, onOpen: (database) {
      print('database opened');
    });
  }

  void insertToDatabase() {}
}
