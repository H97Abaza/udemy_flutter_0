import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_xcxCzYD8fQW6FB-cW8Iqs0JnY6EvVOqdTg&usqp=CAU'),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.camera_alt,
                size: 18,
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                size: 18,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[300],
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 20,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Search'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              /*     SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      child: Column(
                        children: [
                          Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_xcxCzYD8fQW6FB-cW8Iqs0JnY6EvVOqdTg&usqp=CAU'),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    bottom: 3,
                                    end: 3,
                                  ),
                                  child: CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ]),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Hussein Abaza ',
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 60,
                      child: Column(
                        children: [
                          Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_xcxCzYD8fQW6FB-cW8Iqs0JnY6EvVOqdTg&usqp=CAU'),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    bottom: 3,
                                    end: 3,
                                  ),
                                  child: CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ]),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Hussein Abaza ',
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 60,
                      child: Column(
                        children: [
                          Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_xcxCzYD8fQW6FB-cW8Iqs0JnY6EvVOqdTg&usqp=CAU'),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    bottom: 3,
                                    end: 3,
                                  ),
                                  child: CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ]),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Hussein Abaza ',
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 60,
                      child: Column(
                        children: [
                          Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_xcxCzYD8fQW6FB-cW8Iqs0JnY6EvVOqdTg&usqp=CAU'),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    bottom: 3,
                                    end: 3,
                                  ),
                                  child: CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ]),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Hussein Abaza ',
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 60,
                      child: Column(
                        children: [
                          Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_xcxCzYD8fQW6FB-cW8Iqs0JnY6EvVOqdTg&usqp=CAU'),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    bottom: 3,
                                    end: 3,
                                  ),
                                  child: CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ]),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Hussein Abaza ',
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 60,
                      child: Column(
                        children: [
                          Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_xcxCzYD8fQW6FB-cW8Iqs0JnY6EvVOqdTg&usqp=CAU'),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    bottom: 3,
                                    end: 3,
                                  ),
                                  child: CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ]),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Hussein Abaza ',
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 60,
                      child: Column(
                        children: [
                          Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_xcxCzYD8fQW6FB-cW8Iqs0JnY6EvVOqdTg&usqp=CAU'),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    bottom: 3,
                                    end: 3,
                                  ),
                                  child: CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ]),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Hussein Abaza ',
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_xcxCzYD8fQW6FB-cW8Iqs0JnY6EvVOqdTg&usqp=CAU'),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    bottom: 3,
                                    end: 3,
                                  ),
                                  child: CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ]),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hussein Abaza ',
                                  maxLines: 1,
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Hello my name is Hussein Abaza',
                                        maxLines: 2,
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6),
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '10:05 am ',
                                      maxLines: 1,
                                      textAlign: TextAlign.center,
                                      //overflow: TextOverflow.visible,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_xcxCzYD8fQW6FB-cW8Iqs0JnY6EvVOqdTg&usqp=CAU'),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    bottom: 3,
                                    end: 3,
                                  ),
                                  child: CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ]),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hussein Abaza ',
                                  maxLines: 1,
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Hello my name is Hussein Abaza',
                                        maxLines: 2,
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6),
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '10:05 am ',
                                      maxLines: 1,
                                      textAlign: TextAlign.center,
                                      //overflow: TextOverflow.visible,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_xcxCzYD8fQW6FB-cW8Iqs0JnY6EvVOqdTg&usqp=CAU'),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    bottom: 3,
                                    end: 3,
                                  ),
                                  child: CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ]),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hussein Abaza ',
                                  maxLines: 1,
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Hello my name is Hussein Abaza',
                                        maxLines: 2,
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6),
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '10:05 am ',
                                      maxLines: 1,
                                      textAlign: TextAlign.center,
                                      //overflow: TextOverflow.visible,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_xcxCzYD8fQW6FB-cW8Iqs0JnY6EvVOqdTg&usqp=CAU'),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    bottom: 3,
                                    end: 3,
                                  ),
                                  child: CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ]),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hussein Abaza ',
                                  maxLines: 1,
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Hello my name is Hussein Abaza',
                                        maxLines: 2,
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6),
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '10:05 am ',
                                      maxLines: 1,
                                      textAlign: TextAlign.center,
                                      //overflow: TextOverflow.visible,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_xcxCzYD8fQW6FB-cW8Iqs0JnY6EvVOqdTg&usqp=CAU'),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    bottom: 3,
                                    end: 3,
                                  ),
                                  child: CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ]),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hussein Abaza ',
                                  maxLines: 1,
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Hello my name is Hussein Abaza',
                                        maxLines: 2,
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6),
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '10:05 am ',
                                      maxLines: 1,
                                      textAlign: TextAlign.center,
                                      //overflow: TextOverflow.visible,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_xcxCzYD8fQW6FB-cW8Iqs0JnY6EvVOqdTg&usqp=CAU'),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    bottom: 3,
                                    end: 3,
                                  ),
                                  child: CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ]),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hussein Abaza ',
                                  maxLines: 1,
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Hello my name is Hussein Abaza',
                                        maxLines: 2,
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6),
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '10:05 am ',
                                      maxLines: 1,
                                      textAlign: TextAlign.center,
                                      //overflow: TextOverflow.visible,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_xcxCzYD8fQW6FB-cW8Iqs0JnY6EvVOqdTg&usqp=CAU'),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    bottom: 3,
                                    end: 3,
                                  ),
                                  child: CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ]),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hussein Abaza ',
                                  maxLines: 1,
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Hello my name is Hussein Abaza',
                                        maxLines: 2,
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6),
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '10:05 am ',
                                      maxLines: 1,
                                      textAlign: TextAlign.center,
                                      //overflow: TextOverflow.visible,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_xcxCzYD8fQW6FB-cW8Iqs0JnY6EvVOqdTg&usqp=CAU'),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    bottom: 3,
                                    end: 3,
                                  ),
                                  child: CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                              ]),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hussein Abaza ',
                                  maxLines: 1,
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Hello my name is Hussein Abaza',
                                        maxLines: 2,
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6),
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '10:05 am ',
                                      maxLines: 1,
                                      textAlign: TextAlign.center,
                                      //overflow: TextOverflow.visible,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
           */
              Container(
                height: 100,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryItem(),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 20,
                  ),
                  itemCount: 5,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildChatItem(),
                separatorBuilder: (context, index) => SizedBox(height: 15),
                itemCount: 10,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildChatItem() => Row(
        children: [
          Stack(alignment: AlignmentDirectional.bottomEnd, children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_xcxCzYD8fQW6FB-cW8Iqs0JnY6EvVOqdTg&usqp=CAU'),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                bottom: 3,
                end: 3,
              ),
              child: CircleAvatar(
                radius: 7,
                backgroundColor: Colors.red,
              ),
            ),
          ]),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hussein Abaza ',
                  maxLines: 1,
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Hello my name is Hussein Abaza',
                        maxLines: 2,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Text(
                      '10:05 am ',
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      //overflow: TextOverflow.visible,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      );
  Widget buildStoryItem() => Container(
        width: 60,
        child: Column(
          children: [
            Stack(alignment: AlignmentDirectional.bottomEnd, children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_xcxCzYD8fQW6FB-cW8Iqs0JnY6EvVOqdTg&usqp=CAU'),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  bottom: 3,
                  end: 3,
                ),
                child: CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.red,
                ),
              ),
            ]),
            SizedBox(
              height: 5,
            ),
            Text(
              'Hussein Abaza ',
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
}
