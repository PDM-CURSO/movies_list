import 'package:flutter/material.dart';
import 'package:movie_list/item_movie.dart';
import 'package:movie_list/item_product.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final List<Map<String, String>> _listElements = [
    {
      "title": "Star wars",
      "description": "Ranking: ★★★",
      "image": "https://i.imgur.com/tpHc9cS.jpg",
    },
    {
      "title": "Black widow",
      "description": "Ranking: ★★★★",
      "image": "https://i.imgur.com/0NTTbFn.jpg",
    },
    {
      "title": "Frozen 2",
      "description": "Ranking: ★★★",
      "image": "https://i.imgur.com/noNCN3V.jpg",
    },
    {
      "title": "Joker",
      "description": "Ranking: ★★★★",
      "image": "https://i.imgur.com/trdzMAl.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Seleccione pelicula favorita"),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xff324aa8),
        ),
        child: Column(
          children: [
            _moviesArea(context),
            ItemProduct(),
          ],
        ),
      ),
    );
  }

  Widget _moviesArea(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      height: MediaQuery.of(context).size.height / 4,
      child: _moviesList(),
    );
  }

  Widget _moviesList() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _listElements.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () => {
            //show dialog
          },
          child: ItemMovie(
            content: _listElements[index],
          ),
        );
      },
    );
  }
}
