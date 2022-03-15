import 'package:api_user/components/textstyle.dart';
import 'package:api_user/screens/list_album.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Lista de Albums',
          style: AppTextstyle.TextFont23,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: const ListAlbum(),
    );
  }
}
