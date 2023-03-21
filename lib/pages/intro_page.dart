import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            // logo -----------
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'lib/assets/nike.png',
                height: 240,
              ),
            ),
            const SizedBox(height: 40),
            //titile --------------------
            const Text(
              'Just Do It',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            // sub title ----------------
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'brand new Shose from UKSopier simple shop and just go to home!',
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 80),
            // btn  ---------
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyHomePage(),
                    ));
              },
              child: Container(
                  width: 300,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Center(
                    child: Text(
                      'Shop Now',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
