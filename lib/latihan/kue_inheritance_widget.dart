import 'package:flutter/material.dart';
import 'package:tugas_pbo_inheritance/models/kue_inheritance.dart';


class KueInheritanceWidget extends StatelessWidget {
  KueInheritanceWidget({super.key});

  final Cookies cookies = Cookies("Chocochip", 15000);
  final Brownies brownies = Brownies("Brownies Panggang", 50000);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Cake's"),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _show(context, cookies.kueKering()), 
              child: Text("Cookies: Kue Kering"),
              ),
              ElevatedButton(
              onPressed: () => _show(context, brownies.kueCoklat()), 
              child: Text("Brownies: Kue Coklat"),
              ),
          ],
          ),
        ),
    );
  }
  void _show(BuildContext context, String pesan){
    showDialog(
      context: context, 
      builder: (_)=> AlertDialog(content: Text(pesan))
      );
  }
}