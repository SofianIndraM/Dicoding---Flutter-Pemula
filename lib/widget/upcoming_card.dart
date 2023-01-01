import 'package:flutter/material.dart';
import 'package:proyek_akhir/detail_upcoming.dart';
import 'package:proyek_akhir/model/daftar_film.dart';
import 'package:proyek_akhir/model/upcoming_film.dart';
import 'package:proyek_akhir/shared/theme.dart';

import '../detail_film.dart';

class UpcomingCard extends StatelessWidget {
  final UpcomingFilm upcoming;
  const UpcomingCard({Key? key, required this.upcoming}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailUpcoming(upcoming: upcoming),
          ),
        );
      },
      child: Container(
        height: 90,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Row(
          children: [
            Container(
              height: 70,
              width: 70,
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    upcoming.cover,
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    upcoming.judul,
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 6,
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
                      upcoming.rating,
                      style: whiteTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
