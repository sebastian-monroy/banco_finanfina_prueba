import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFef2b64),
          title: const Text('home', style: TextStyle(color: Colors.white),),
        ),
        body: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFE63946), Color(0xFF9B2F83)]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage(
                  'assets/logo_blanco.png'
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              const Text(
                'Bienvenido a nuestra app del banco finandina',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white
                ),
              )
            ],
          ),
        ));
  }
}
