import 'package:eas_ppb/constants/colors.dart';
import 'package:eas_ppb/layout/_appbar.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdRed,
      appBar: const AppBarAlfamind(
        showOwnerIcon: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: tdWhite,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ClipOval(
                      child: Image.asset(
                        'lib/images/owner.jpg',
                        height: 300,
                        width: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Store Owner Surabaya',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: tdWhite),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Fayyadh Hafizh',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: tdWhite),
                    ),
                    SizedBox(
                      height: 25,
                    )
                  ],
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  decoration: const BoxDecoration(
                      color: tdWhite,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                style: const ButtonStyle(
                                    minimumSize:
                                        WidgetStatePropertyAll(Size(40, 60)),
                                    maximumSize:
                                        WidgetStatePropertyAll(Size(150, 60)),
                                    backgroundColor:
                                        WidgetStatePropertyAll(tdRed),
                                    shape: WidgetStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                bottomLeft:
                                                    Radius.circular(10))))),
                                onPressed: () {},
                                child: const Text(
                                  'Rp250.000',
                                  style: TextStyle(color: tdWhite),
                                )),
                            const SizedBox(
                              width: 2,
                            ),
                            ElevatedButton(
                                style: const ButtonStyle(
                                    minimumSize:
                                        WidgetStatePropertyAll(Size(40, 60)),
                                    maximumSize:
                                        WidgetStatePropertyAll(Size(100, 60)),
                                    backgroundColor:
                                        WidgetStatePropertyAll(tdRed),
                                    shape: WidgetStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10))))),
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, '/topup');
                                },
                                child: const Text(
                                  'Top Up Saldo',
                                  style: TextStyle(color: tdWhite),
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 500,
                        height: 500,
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  gradient: const LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [tdRed, tdBlue])),
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Alamat: Keputih, Jawa Timur',
                                        style: TextStyle(
                                            color: tdWhite,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500)),
                                    Text('Jenis Kelamin: Laki-laki',
                                        style: TextStyle(
                                            color: tdWhite,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500)),
                                    Text('Produk Terjual: 200',
                                        style: TextStyle(
                                            color: tdWhite,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500)),
                                    Text('Tanggal Bergabung: 17/10/2023',
                                        style: TextStyle(
                                            color: tdWhite,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
