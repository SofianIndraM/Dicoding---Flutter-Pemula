import 'package:flutter/cupertino.dart';

class DaftarFilm {
  String judul;
  String rating;
  String genre;
  String waktu;
  String durasi;
  String harga;
  String ringkasan;
  String cover;
  List<String> imageUrls;

  DaftarFilm({
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

var daftarFilmList = [
  DaftarFilm(
    judul: 'One Piece Film Red',
    rating: 'R13+',
    genre: 'Action, Adventure',
    waktu: '3 September 2022',
    durasi: '115 Menit',
    harga: 'Rp 45.000',
    cover:
        'https://static.wikia.nocookie.net/onepiece/images/3/34/One_Piece_Film_Red_Poster_Visual.png/revision/latest?cb=20220608181914',
    imageUrls: [
      'https://www.jurnalisindonesia.id/uploads/large/f86bead6edc6e0bf414a2e546d925862.jpg',
      'https://akcdn.detik.net.id/visual/2022/08/30/anime-one-piece-film-red_169.png?w=650',
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiDOr6OOTzmHCTybhQ1H9sRsPE4IcDlXci5_Mt9E_EPQOoZp4XJBTk8BAGkkDhGgnn5R36UXHucSWtQf81nb5lXubkYQrEJXTrzxKIkBLnJxSoD_Laq9DRnDm60iPVixSuGyDOo7zYt5Kos64l2lLWV46tqS4qroE3vLduJlLIeLk43D7oebhk4atOV/s1200/One%20Piece%20Red%20(2022)%20Full%20Movie%20Sub%20Indo.jpg',
    ],
    ringkasan:
        'Uta — penyanyi paling dicintai di dunia. Suaranya menyembunyikan identitas Uta sebenarnya, yang digambarkan sebagai "dunia lain." Dia akan tampil di depan umum untuk pertama kalinya di konser live. Saat venue dipenuhi dengan semua penggemar Uta — bajak laut yang bersemangat, Angkatan Laut yang mengawasi dengan cermat, dan Topi Jerami yang digunakan Luffy yang datang untuk menikmati penampilan anggunnya suara yang telah ditunggu-tunggu hingga membuat seluruh dunia akan segera bergema. Dari sini kisah Luffy berjalan menjadi sesuatu yang mengejutkan. ',
  ),
  DaftarFilm(
    judul: 'Mendarat Darurat',
    rating: 'R13+',
    genre: 'Romantic, Comedy',
    waktu: '3 September 2022',
    durasi: '113 Menit',
    harga: 'Rp 45.000',
    cover:
        'https://asset.kompas.com/crops/kEPtMFW28S7grN2qGvhr1sgVV4I=/0x0:585x390/750x500/data/photo/2022/07/21/62d8f943bde96.png',
    imageUrls: [
      'https://t-2.tstatic.net/kalteng/foto/bank/images2/film-bioskop-Mendarat-Darurat-Luna-Maya-Reza-Rahadian-Pandji-Pragiwaksono.jpg',
      'https://pbs.twimg.com/media/FYFi3G5VsAUO151.jpg',
      'https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2022/07/21/3229769262.jpg',
    ],
    ringkasan:
        'Selamat dari sebuah kecelakaan adalah sesuatu yang seharusnya menjadi berita bahagia bagi banyak orang. Namun, hal ini tidak berlaku bagi Glenn. Pasalnya, Glenn yang seharusnya menjadi salah satu korban dari kecelakaan pesawat yang menewaskan seluruh penumpang justru selamat karena tengah menjalani perselingkuhan dengan Kania di sebuah hotel. Kebingungan Glenn ditambah karena sebelumnya ia telah menyampaikan pada Maya, istrinya, bahwa Glenn sudah berada di dalam pesawat dan siap lepas landas. Kini Glenn dihadirkan pada pilihan yang sulit. Satu sisi ia harus mengabarkan Maya dan juga keluarganya bahwa dirinya masih hidup namun di sisi lain, kejujuran tentang apa yang menyelamatkan Glenn justru mengancam kehidupan rumah tangganya. Apakah yang akan dilakukan Glenn untuk keluar dari permasalahan ini?',
  ),
  DaftarFilm(
    judul: 'Dragon Ball Super: Super Hero',
    rating: 'R13+',
    genre: 'Laga, Fantasy',
    waktu: '3 September 2022',
    durasi: '100 Menit',
    harga: 'Rp 45.000',
    cover:
        'https://iforum-sg.c.hihonor.com/latin/latin_data/images/10000/2022/8/31/a918d8c7-b029-4340-87dc-851fe7051abe.jpg',
    imageUrls: [
      'https://assets.pikiran-rakyat.com/crop/0x148:2024x2664/750x500/photo/2022/06/15/861039031.jpg',
      'https://akcdn.detik.net.id/visual/2022/08/31/dragon-ball-super-super-hero-2022_169.png?w=650',
      'https://assets.promediateknologi.com/crop/0x31:1920x1051/x/photo/2022/08/22/3979580284.jpg',
    ],
    ringkasan:
        'Goku dan Vegeta melanjutkan pelatihan mereka di Planet Beerus. Di sana, mereka kemudian bergabung dengan Broly untuk membantunya mengendalikan amarahnya. Sementara itu, di Bumi, Tentara Pita Merah yang dihidupkan kembali menciptakan dua android baru, Gamma 1 dan Gamma 2, untuk bertindak sebagai pahlawan super di mata publik',
  ),
  DaftarFilm(
    judul: 'Mencuri Raden Saleh',
    rating: 'R13+',
    genre: 'Drama, Laga',
    waktu: '3 September 2022',
    durasi: '154 Menit',
    harga: 'Rp 45.000',
    cover:
        'https://m.media-amazon.com/images/M/MV5BNWZmOTIzOGMtODBmMC00MjVlLThjYzUtNjcxNjg4NzY0YTg1XkEyXkFqcGdeQXVyNzEzNjU1NDg@._V1_.jpg',
    imageUrls: [
      'https://statics.indozone.news/content/2022/06/29/Ens88Be/mencuri-raden-saleh-kisah-perampokan-lukisan-sang-pelukis-modern-tayang-25-agustus-202273_700.jpg',
      'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/06/02/650142141.png',
      'https://img.okezone.com/content/2022/09/02/206/2659942/pemain-film-mencuri-raden-saleh-siap-konser-jika-ini-terjadi-qUwqDue5rq.jpg',
    ],
    ringkasan:
        'Pencurian terbesar abad ini tinggal menghitung hari menjelang tanggal eksekusinya. Komplotan sudah lengkap dan siap menjalankan misi untuk mencuri lukisan sang maestro, Raden Saleh, yang berjudul Penangkapan Diponegoro. Pemalsuan, peretasan, pertarungan, dan manipulasi terjadi dalam pencurian berencana yang dijalankan oleh sekelompok anak muda amatiran.',
  ),
];
