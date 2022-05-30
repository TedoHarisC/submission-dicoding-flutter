import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  int categoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Text('Halaman Notifikasi'),
      ],
    );
  }
}
