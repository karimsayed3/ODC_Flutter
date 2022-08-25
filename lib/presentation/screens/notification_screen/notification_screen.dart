import 'package:flutter/material.dart';
import 'package:plants_project/utils/dimantions.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: Dimantions.height70,
          child: Center(
            child: Text(
              'Notifications',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: 'Roboto ',
                fontSize: 19,
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Dennis Nedry commented on Isla Nublar SOC2 compliance report',style: TextStyle(fontWeight: FontWeight.w500),),
                    subtitle: Text('s10 fdvd 12'));
              },
              separatorBuilder: (context, index) => Divider(),
              itemCount: 5),
        ),
      ],
    );
  }
}