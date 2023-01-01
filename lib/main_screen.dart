import 'package:flutter/material.dart';
import 'package:proyek_akhir/model/daftar_film.dart';
import 'package:proyek_akhir/model/upcoming_film.dart';
import 'package:proyek_akhir/shared/theme.dart';
import 'package:proyek_akhir/widget/film_card.dart';
import 'package:proyek_akhir/widget/upcoming_card.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget nowPlaying() {
      return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Now Playing',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
            Container(
              height: 340,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final DaftarFilm film = daftarFilmList[index];
                  return FilmCard(
                    film: film,
                  );
                },
                itemCount: daftarFilmList.length,
              ),
            ),
          ],
        ),
      );
    }

    Widget upcoming() {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Upcoming Movie',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 500,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final UpcomingFilm upcoming = upcomingFilmList[index];
                  return UpcomingCard(
                    upcoming: upcoming,
                  );
                },
                itemCount: daftarFilmList.length,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: const Text('Bioskop 76'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: [
          nowPlaying(),
          upcoming(),
        ],
      ),
    );
  }
}
