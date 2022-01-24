import 'package:api_user/components/textstyle.dart';
import 'package:api_user/models/albums.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Albums albums;

  Details({required this.albums});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Detalhes do produto'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment:  CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Image.network(
                albums.thumbnailUrl.toString(),
              ),
            ),
            Text(albums.title.toString(),style: AppTextstyle.TextFont22,),
            Text(albums.url.toString(),style: AppTextstyle.TextFont16),
          ],
        ),
      ),
    );
  }
}
