import 'package:flutter/material.dart';

class SyaratKetentuan extends StatelessWidget {
  ScrollController scrollController;
  final double expandedHight = 200.0;

//  @override
//  void initState() {
//    super.initState();
//    scrollController = new ScrollController();
//    scrollController.addListener(() => setState(() {}));
//  }
//
//  @override
//  void dispose() {
//    scrollController.dispose();
//    super.dispose();
//  }

  double get top {
    double res = expandedHight;
    if (scrollController.hasClients) {
      double offset = scrollController.offset;
      if (offset < (res - kToolbarHeight)) {
        res -= offset;
      } else {
        res = kToolbarHeight;
      }
    }
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        NestedScrollView(
          controller: scrollController,
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                pinned: true,
                expandedHeight: expandedHight,
                iconTheme: IconThemeData(color: Colors.white),
                backgroundColor: Colors.transparent,
                floating: true,
                flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    'Syarat\ndan Ketentuan.',
                    maxLines: 2,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                background: Image.asset(
                  'assets/bgkebijakan.png',
                  fit: BoxFit.fill,
                ),


                ),
              )
            ];
          },
          body: _buildContent(),
        )
      ],
    )
//      CustomScrollView(
//        slivers: <Widget>[
//          SliverAppBar(
//            iconTheme: IconThemeData(color: Colors.white),
//            expandedHeight: 150,
//            //CEK kalo di hp kecik dio cak itu lagi dak
//            backgroundColor: Colors.transparent,
//            floating: true,
//            pinned: true,
//            flexibleSpace: FlexibleSpaceBar(
//              centerTitle: false,
//              title: Text(
//                'Syarat\ndan Ketentuan.',
//                maxLines: 2,
//                style: TextStyle(color: Colors.white),
//              ),
//              background: Image.asset(
//                'assets/bgkebijakan.png',
//                fit: BoxFit.fill,
//              ),
//            ),
//          ),
//          SliverFillRemaining(
//            child: _buildContent(),
//          ),
//        ],
//      ),
        );
  }
}

_buildContent() {
  return ListView(
    children: [
      Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
                'Syarat dan ketentuan berikut menguraikan aturan dan regulasi ketika mengakses situs RuangHR, www.ruanghr.co.id.\n\nDengan mengakses website ini, kami mengasumsikan bahwa anda setuju dengan syarat dan ketentuan yang berlaku. Jika tidak setuju dengan syarat dan ketentuan berikut, disarankan untuk tidak mengakses situs ini.\n\n'
                'Terminologi berikut berlaku untuk Syarat dan Ketentuan, Penyataan Privasi, Pemberitahuan Sanggahan, dan semua Perjanjian:\n'
                '- “Klien”, “Anda”, dan “Milik Anda” merujuk kepada Anda, sebagai orang yang mengakses situs ini dan mematuhi syarat dan ketentuan dari peruahaan\n'
                '- “Perusahaan”, “Kami”, dan “Milik Kami” merujuk kepada perusahaan\n'
                '- “Pihak” atau “Kami” merujuk kepada klien dan kami sendiri\n'
                '- Semua istilah yang merujuk pada penawaran, penerimaan, dan pertimbangan pembayaran klien yang memerlukan bantuan kami\n\n'),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Cookies',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Text(
                'Kami menggunakan penggunaan cookies. Dengan mengakses situs RuangHR, Anda setuju untuk menggunakan cookies yang sesuai dengan Kebijakan Privasi RuangHR.\n\n'
                'Kebanyakan situs menggunakan cookies agar kami dapat melihat kembali detail pengguna pada setiap kunjukan. Kami menggunakan cookies untuk mengaktifkan beberapa fungsi pada situs yang bertujuan untuk memudahkan pengunjung ketika mengujungi situs kami. Beberapa afiliasi/mitra periklanan kami mungkin juga menggunakan cookies.')
          ],
        ),
      ),
    ],
  );
}
