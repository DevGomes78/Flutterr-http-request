import 'dart:convert';

import 'package:api_user/models/albums.dart';
import 'package:http/http.dart' as http;

Future<List<Albums>?> getAlbums()async{
  try {
    List<Albums> listAlbum = [];
    final url = Uri.parse('https://jsonplaceholder.typicode.com/photos');

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final decodeJson = jsonDecode(response.body);
      decodeJson.forEach((item) => listAlbum.add(Albums.fromJson(item)));
      return listAlbum;
    } else {
      throw Exception('Erro ao acessar os dados');
    }
  }catch(e){
    throw Exception('Erro ao acessar os dados');
  }
}