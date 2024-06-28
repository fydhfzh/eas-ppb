import 'package:eas_ppb/constants/colors.dart';
import 'package:eas_ppb/layout/_appbar.dart';
import 'package:flutter/material.dart';

class TopUpPage extends StatelessWidget {
  const TopUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdRed,
      appBar: const AppBarAlfamind(),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              color: tdWhite,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Top Up Saldo',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 100,
                ),
                const TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: 'Masukkan jumlah saldo yang ingin diisi',
                        border: UnderlineInputBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0))))),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Saldo anda sekarang: Rp200.000',
                  style: TextStyle(
                      color: const Color(0xFF000000).withOpacity(0.5)),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: const ButtonStyle(
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)))),
                        backgroundColor: WidgetStatePropertyAll(tdRed),
                        minimumSize: WidgetStatePropertyAll(Size(400, 60))),
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, '/topup/berhasil');
                    },
                    child: const Text(
                      'Konfirmasi',
                      style: TextStyle(
                          color: tdWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
