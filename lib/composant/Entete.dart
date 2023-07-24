import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: 360,
              height: 180,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                gradient: LinearGradient(
                  begin: Alignment(0.06733901798725128, 0.7098654508590698),
                  end: Alignment(-0.7098654508590698, 0.01683475449681282),
                  colors: [
                    Color.fromRGBO(5, 2, 39, 1),
                    Color.fromRGBO(5, 2, 39, 0.9791666865348816),
                    Color.fromRGBO(5, 2, 39, 0.9807692766189575),
                    Color.fromRGBO(5, 2, 39, 0)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Image.asset(
              'assets/images/vector1.svg', // Correct the asset path for vector1.svg
              semanticLabel: 'vector1',
            ),
            const SizedBox(height: 10),
            Container(
              width: 82,
              height: 73,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(10, 3, 83, 0.9791666865348816),
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage('assets/images/Image1.png'), // Correct the asset path for Image1.png
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
