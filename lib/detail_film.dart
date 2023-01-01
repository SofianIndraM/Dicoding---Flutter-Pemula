import 'package:flutter/material.dart';
import 'package:proyek_akhir/model/daftar_film.dart';
import 'package:proyek_akhir/model/upcoming_film.dart';
import 'package:proyek_akhir/shared/theme.dart';

class DetailFilm extends StatelessWidget {
  final DaftarFilm film;

  const DetailFilm({Key? key, required this.film}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        height: 450,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              film.cover,
            ),
          ),
        ),
      );
    }

    Widget customShadow() {
      return Container(
        margin: EdgeInsets.only(top: 236),
        height: 214,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                kWhiteColor.withOpacity(0),
                Colors.black.withOpacity(0.95),
              ]),
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    bottom: 220,
                    top: 70,
                  ),
                  child: CircleAvatar(
                    backgroundColor: kRedColor,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //NOTE: TITLE
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        film.judul,
                        style: whiteTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        film.genre,
                        style: whiteTextStyle.copyWith(
                          fontWeight: light,
                          fontSize: 16,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                FavoriteButton()
              ],
            ),

            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: defaultMargin),
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: kGreyColor.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(7.0, 8.0),
                  ),
                ],
                borderRadius: BorderRadius.circular(defaultRadius),
                color: kWhiteColor,
              ),
              //NOTE: Ringkasan
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.calendar_today),
                          SizedBox(height: 8),
                          Text(
                            film.waktu,
                            style: blackTextStyle.copyWith(fontSize: 10),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.access_time),
                          SizedBox(height: 8),
                          Text(
                            film.durasi,
                            style: blackTextStyle.copyWith(fontSize: 10),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.monetization_on),
                          SizedBox(height: 8),
                          Text(
                            film.harga,
                            style: blackTextStyle.copyWith(fontSize: 10),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Ringkasan',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    film.ringkasan,
                    style: blackTextStyle.copyWith(
                      height: 2,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Cuplikan',
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: film.imageUrls.map(
                        (url) {
                          return Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(url),
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            customShadow(),
            content(),
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
    );
  }
}
