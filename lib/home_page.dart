import 'package:api_user/screens/list_album.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:  Text('Api Photos'),
        centerTitle: true,
      ),
      body: ListAlbum(),
    );
  }
}
