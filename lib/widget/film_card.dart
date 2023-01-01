import 'package:flutter/material.dart';

import '../detail_film.dart';
import '../model/daftar_film.dart';
import '../shared/theme.dart';

class FilmCard extends StatelessWidget {
  final DaftarFilm film;
  const FilmCard({Key? key, required this.film}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailFilm(
              film: film,
            ),
          ),
        );
      },
      child: Container(
        height: 323,
        width: 200,
        margin: EdgeInsets.only(top: 16, right: 16),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Expanded(
          child: Column(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      film.cover,
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                film.judul,
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: 40,
                decoration: BoxDecoration(
                  color: kRedColor,
                  borderRadius: BorderRadius.circular(
                    4,
                  ),
                ),
                child: Text(
                  film.rating,
                  style: whiteTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
