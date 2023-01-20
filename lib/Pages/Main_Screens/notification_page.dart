import 'package:flutter/material.dart';
import 'dart:math' as math;

enum NotificationType {
  liked_your_Post,
  liked_your_Comment,
  shared_your_Post,
  commented_on_your_Post,
  sent_you_Request
}

class NotificationsPage extends StatelessWidget {
  NotificationsPage({super.key});

  List<List<dynamic>> NotificationList = [
    [NotificationType.liked_your_Comment, 'David', true],
    [NotificationType.liked_your_Post, 'Sam', false],
    [NotificationType.shared_your_Post, 'Stacy', true],
    [NotificationType.sent_you_Request, 'Micheal', false],
    [NotificationType.commented_on_your_Post, 'Gwen', true],
    [NotificationType.liked_your_Comment, 'Stanlee', false],
    [NotificationType.liked_your_Post, 'Riza', true],
    [NotificationType.liked_your_Post, 'Pam', false],
    [NotificationType.shared_your_Post, 'Victor', false],
    [NotificationType.liked_your_Comment, 'Owen', true],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Text(
                "Notifications",
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                    itemCount: NotificationList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return NotificationTile(
                          NotificationList[index][0],
                          NotificationList[index][1],
                          NotificationList[index][2]);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget NotificationTile(
      NotificationType notificationType, String userName, bool isFollowing) {
    String _text = userName +
        " " +
        notificationType
            .toString()
            .substring(notificationType.toString().indexOf('.') + 1)
            .replaceAll("_", " ");
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            child: Icon(
              Icons.person_outline_sharp,
              size: 40,
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
            ),
            backgroundColor:
                Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                    .withOpacity(1.0),
            radius: 35,
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _text,
                  style: TextStyle(fontSize: 14),
                ),
                isFollowing
                    ? Container()
                    : Container(
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.amber[700],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Center(
                            child: Text(notificationType ==
                                    NotificationType.sent_you_Request
                                ? "Accept"
                                : "Follow"),
                          ),
                        ),
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
