import 'package:flutter/material.dart';

class Anime {
  final String title;
  final String imageUrl;

  Anime({required this.title, required this.imageUrl});
}

class HomePage extends StatelessWidget {
  final List<Anime> animeList = [
    Anime(
      title: 'Grand Blue',
      imageUrl: 'images/Grand Blue.jpeg', 
    ),
    Anime(
      title: 'Black Butler',
      imageUrl: 'images/black butler.jpeg', 
    ),
    Anime(
      title: 'One Punch Man',
      imageUrl: 'images/one punchman.jpeg', 
    ),
    Anime(
      title: 'Demon Slayer',
      imageUrl: 'images/Demon Slayer_ Kimetsu no Yaiba.jpeg', 
    ),
    Anime(
      title: 'Mob Psycho 100',
      imageUrl: 'images/mob psycho100.jpeg', 
    ),
    Anime(
      title: 'Jujutsu Kaisen',
      imageUrl: 'images/Jujutsu Kaisen Oficial Poster.jpeg', 
    ),
    Anime(
      title: 'Oshi no Ko',
      imageUrl: 'images/Oshi no Ko poster.jpeg', 
    ),
    Anime(
      title: 'Totoro',
      imageUrl: 'images/totoro.jpeg', 
    ),
    Anime(
      title: "Howl's Moving Castle",
      imageUrl: "images/Howl's Moving Castle Poster.jpeg", 
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Anime List')),
      body: ListView.builder(
        itemCount: animeList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(animeList[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AnimeDetailPage(anime: animeList[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class AnimeDetailPage extends StatelessWidget {
  final Anime anime;

  AnimeDetailPage({required this.anime});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(anime.title)),
      body: Center(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(
                anime.imageUrl,
                width: 150,
                height: 150,
              ),
              ListTile(
                title: Text(anime.title),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
