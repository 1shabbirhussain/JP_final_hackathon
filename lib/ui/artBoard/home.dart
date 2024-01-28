import 'package:flutter/material.dart';

class ArtBoard extends StatelessWidget {
  const ArtBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                top: 0,
                child: SizedBox(
                  // height: MediaQuery.of(context).size.height*0.4,
                  height: 450,
                  child: Image.asset(
                    "images/bg.png",
                    fit: BoxFit.cover,
                  ),
                )),
                // ----------------column----------
            Positioned(
                top: 400,
                child: Container(
                  

                      color: Theme.of(context).scaffoldBackgroundColor,
                  child: Column(
                    children: [
                      SizedBox(
                        // height: MediaQuery.of(context).size.height*0.4,
                        
                        child: Image.asset(
                          "images/Logo.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
