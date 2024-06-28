import 'package:eas_ppb/constants/colors.dart';
import 'package:eas_ppb/layout/_appbar.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final Map<String, Object> productData =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;

    return Scaffold(
        backgroundColor: tdRed,
        appBar: const AppBarAlfamind(),
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25)),
                color: tdWhite),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Detail Barang',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold)),
                    ),
                    Image.asset(
                      'lib/images/product/${productData['image']}',
                      fit: BoxFit.contain,
                      width: 100,
                      height: 100,
                    ),
                    Text(
                      'Nama Produk: ${productData['nama']}',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Stok: ${productData['stok']}',
                      style: TextStyle(
                          fontSize: 20,
                          color: const Color(0xFF000000).withOpacity(0.5)),
                    ),
                    Text(
                      'Harga: Rp${productData['harga']}',
                      style: const TextStyle(fontSize: 20, color: tdRed),
                    )
                  ]),
            ),
          ),
        ));
  }
}
