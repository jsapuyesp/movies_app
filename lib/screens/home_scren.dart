import 'package:flutter/material.dart';
import 'package:movies_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Películas'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search_outlined),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Tarjetas principales
            CardSwiper(),

            // Listados de peliculas
            MovieSlider(),
            MovieSlider(),
            MovieSlider(),
            MovieSlider()
          ],
        ),
      ),
    );
  }
}
