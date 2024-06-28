import 'package:eas_ppb/constants/colors.dart';
import 'package:eas_ppb/layout/_appbar.dart';
import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    var productList = [
      {
        'image': 'ember.png',
        'nama': 'Ember Merah Anti Pecah',
        'stok': 54,
        'harga': 50000
      },
      {
        'image': 'garpu.png',
        'nama': 'Garpu Stainless',
        'stok': 12,
        'harga': 50000
      },
      {
        'image': 'mainan.png',
        'nama': 'Mainan Anak Kreatif',
        'stok': 232,
        'harga': 50000
      },
      {
        'image': 'piring.png',
        'nama': 'Piring Premium Keramik',
        'stok': 44,
        'harga': 50000
      },
      {
        'image': 'sendok.png',
        'nama': 'Sendok Stainless',
        'stok': 85,
        'harga': 50000
      },
      {
        'image': 'tali.png',
        'nama': 'Tali 20 Meter',
        'stok': 151,
        'harga': 50000
      }
    ];

    return Scaffold(
      backgroundColor: tdRed,
      appBar: const AppBarAlfamind(),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25), topLeft: Radius.circular(25)),
              color: tdWhite),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Daftar Barang',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              ...productList.map((e) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'lib/images/product/${e['image']}',
                        fit: BoxFit.contain,
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(
                        width: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${e['nama']}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Stok: ${e['stok']}',
                                  style: TextStyle(
                                      color:
                                          Color(0xFF000000).withOpacity(0.5)),
                                ),
                                Text(
                                  'Rp${e['harga']}',
                                  style: const TextStyle(color: tdRed),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                              shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              backgroundColor:
                                  const WidgetStatePropertyAll(tdRed),
                              minimumSize:
                                  const WidgetStatePropertyAll(Size(5, 40))),
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/detail',
                                arguments: e);
                          },
                          child: const Text(
                            'Detail',
                            style: TextStyle(
                                color: tdWhite,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
