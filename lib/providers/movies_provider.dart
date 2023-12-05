import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MoviesProvider extends ChangeNotifier {
  String _baseUrl = 'www.api.themoviedb.org';
  String _apiKey = 'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwNDk5ODg0ZmUzMmQyOWIwZjFhNzBkM2ZkNDIwYzkwYiIsInN1YiI6IjY0NmY4NWQ0NzcwNzAwMDBhOTQ3NmZkYSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.-_RGdoBg9VTNdI42fkV-saoOQCMAT7fkzw2tQwwv7I4';
  String _languaje = 'es-ES';

  MoviesProvider() {
    print('Ola');
    this.getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '3/movie/now_playing', {
      'api_key': _apiKey,
      'languaje' : _languaje,
      'page': '1'
      });

    final response = await http.get(url);

    print(response.body);
  }
}
