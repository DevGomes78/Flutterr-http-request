import 'package:api_user/components/textstyle.dart';
import 'package:api_user/models/albums.dart';
import 'package:api_user/repository/albums.dart';
import 'package:api_user/screens/details.dart';
import 'package:flutter/material.dart';

class ListAlbum extends StatelessWidget {
  const ListAlbum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder<List<Albums>?>(
        future: getAlbums(),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    var album = snapshot.data![index];
                    return buildCard(context, album);
                  }),
            );
          }
        },
      ),
    );
  }

  Card buildCard(BuildContext context, Albums album) {
    return Card(
      elevation: 5,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Details(
                        albums: album,
                      )));
        },
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(album.thumbnailUrl.toString()),
          ),
          title: Text(
            album.title.toString(),
            style: AppTextstyle.TextFont16,
          ),
          subtitle: Text(
            album.url.toString(),
            style: AppTextstyle.TextFont14,
          ),
        ),
      ),
    );
  }
}
