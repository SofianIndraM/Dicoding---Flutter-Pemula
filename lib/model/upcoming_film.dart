import 'package:flutter/cupertino.dart';

class UpcomingFilm {
  String judul;
  String rating;
  String genre;
  String waktu;
  String durasi;
  String harga;
  String ringkasan;
  String cover;
  List<String> imageUrls;

  UpcomingFilm({
    required this.judul,
    required this.rating,
    required this.genre,
    required this.waktu,
    required this.durasi,
    required this.harga,
    required this.cover,
    required this.imageUrls,
    required this.ringkasan,
  });
}

var upcomingFilmList = [
  UpcomingFilm(
    judul: '13 Minutes',
    rating: 'D17+',
    genre: 'Action, Laga',
    waktu: '29 Oktober 2022',
    durasi: '108 Menit',
    harga: 'Rp 45.000',
    cover:
        'https://m.media-amazon.com/images/M/MV5BZTBjNjdkNzItYjZjOC00MjhkLTk4ZTQtZTcyM2FmMGJlMDViXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_.jpg',
    imageUrls: [
      'https://pic-bstarstatic.akamaized.net/ugc/87d3511f5003f88302bd760b50ad0b94c78e12e2.png',
      'https://statics.indozone.news/content/2020/11/05/OjsZ3LB/sinopsis-13-minutes-2017-kisah-gagalnya-georg-elser-membunuh-adolf-hitler16_700.jpg',
      'https://i.ytimg.com/vi/YiEFZLRyRQo/mqdefault.jpg',
    ],
    ringkasan:
        '13 Minutes adalah film bencana tahun 2021 yang ditulis, disutradarai dan diproduksi oleh Lindsay Gossling, dan dibintangi oleh Amy Smart, Trace Adkins, Yancey Arias, Thora Birch, Sofia Vassilieva, Paz Vega, Laura Spencer, Peter Facinelli, dan Anne Heche dalam peran terakhirnya sebelum ke kematiannya.',
  ),
  UpcomingFilm(
    judul: 'Gendut Siapa Takut?',
    rating: 'R13+',
    genre: 'Romantic, Comedy',
    waktu: '3 Oktober 2022',
    durasi: '113 Menit',
    harga: 'Rp 45.000',
    cover:
        'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/08/18/2385468828.jpg',
    imageUrls: [
      'https://upload.wikimedia.org/wikipedia/id/9/9c/Gendut_Siapa_Takut%3F%21.jpeg',
      'https://i0.wp.com/cililinku.com/wp-content/uploads/2022/08/collage-2022-08-18T092015.166.jpg?fit=1200%2C675&ssl=1',
      'https://i.ytimg.com/vi/J9mD69-E_lQ/maxresdefault.jpg',
    ],
    ringkasan:
        'Gendut Siapa Takut?! adalah film drama komedi romantis Indonesia tahun 2022 arahan Pritagita Arianegara, dengan naskah yang juga ditulis oleh Pritagita, bersama Ilya Aktop.',
  ),
  UpcomingFilm(
    judul: 'Miracle in Cell No. 7',
    rating: 'R13+',
    genre: 'Family, Drama',
    waktu: '10 September 2022',
    durasi: '115 Menit',
    harga: 'Rp 45.000',
    cover:
        'https://kuasakata.com/images/2022/04/15/WhatsApp_Image_2022-04-154.jpeg',
    imageUrls: [
      'https://cdn-2.tstatic.net/tribunnews/foto/bank/images/film-korea-miracle-in-cell-no-7-versi-indonesia-dibintangi-vino-g-bastian-indro-warkop.jpg',
      'https://asset.kompas.com/crops/hFNyOY8tTwPWJMIRIyeu_X2KXKQ=/0x0:0x0/750x500/data/photo/2022/08/24/630630e760469.jpeg',
      'https://cloud.jpnn.com/photo/arsip/watermark/2020/05/11/adegan-film-miracle-in-cell-no7-foto-dok-falcon-pictures-11.jpg',
    ],
    ringkasan:
        'Miracle in Cell No. 7 adalah film drama keluarga Indonesia tahun 2022 yang disutradarai oleh Hanung Bramantyo. yang merupakan pembuatan ulang dari film Korea Selatan tahun 2013 berjudul sama. Film produksi Falcon Pictures ini dibintangi oleh Vino G. Bastian, Graciella Abigail, dan Indro Warkop.',
  ),
  UpcomingFilm(
    judul: 'Brahmastra',
    rating: 'R13+',
    genre: 'Action, Adventure',
    waktu: '20 September 2022',
    durasi: '154 Menit',
    harga: 'Rp 45.000',
    cover:
        'https://jadwalnonton.com/data/upload/movies/2022/brahmastra-part-one-shiva-22bpos.jpg',
    imageUrls: [
      'https://sm.mashable.com/t/mashable_in/photo/default/brahmastra-copy_tguk.1248.jpg',
      'https://m.media-amazon.com/images/M/MV5BNjA3ODE1ZTQtODdjMi00YmU0LWI0YWQtODU0M2QyNWM4NzFiXkEyXkFqcGdeQXVyOTI3MzI4MzA@._V1_.jpg',
      'https://i.ytimg.com/vi/XcCWBRqWmyw/maxresdefault.jpg',
    ],
    ringkasan:
        'Brahmāstra adalah sebuah film fantasi pahlawan super berbahasa Hindi India yang dibintangi oleh Amitabh Bachchan, Ranbir Kapoor, Alia Bhatt, dan Mouni Roy dalam peran-peran utama. Film tersebut disutradarai oleh Ayan Mukerji dan diproduksi oleh Karan Johar. ',
  ),
];
