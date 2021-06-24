
import 'dart:ui';

import 'package:flutter/material.dart';

class KebijakanPrivasi extends StatelessWidget {

  ScrollController scrollController;
  final double expandedHight = 200.0;

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
                        'Kebijakan\ndan Privasi.',
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
    );
  }

  _buildContent(){
    return ListView(
      children: [
        Center(

          child: Padding(
            padding: EdgeInsets.all(20.0),
            child:
            Column(

              children: [
                Text('Di RuangHR, dapat diakses dari www.ruanghr.co.id, salah satu prioritas utama kami adalah privasi pengunjung kami. Dokumen Kebijakan Privasi ini berisi jenis informasi yang dikumpulkan dan dicatat oleh RuangHR dan bagaimana kami menggunakannya.'
                    'Jika Anda memiliki pertanyaan tambahan atau memerlukan informasi lebih lanjut tentang Kebijakan Privasi kami, jangan ragu untuk menghubungi kami.\n'),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('FileLog', style: TextStyle(
                      fontSize: 20.0
                  ),),
                ),

                Text('RuangHR mengikuti prosedur standar menggunakan file log. File-file ini mencatat pengunjung ketika mereka mengunjungi situs web. Semua perusahaan hosting melakukan ini dan merupakan bagian dari analisis layanan hosting. Informasi yang dikumpulkan oleh file log termasuk alamat protokol internet (IP), jenis browser, Penyedia Layanan Internet (ISP), cap tanggal dan waktu, halaman rujukan / keluar, dan mungkin jumlah klik. Ini tidak terkait dengan informasi apa pun yang dapat diidentifikasi secara pribadi. Tujuan informasi ini adalah untuk menganalisis tren, mengelola situs, melacak pergerakan pengguna di situs web, dan mengumpulkan informasi demografis.'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
