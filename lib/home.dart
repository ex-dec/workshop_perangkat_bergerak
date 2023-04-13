import 'package:flutter/material.dart';

class LivinLogin extends StatelessWidget {
  const LivinLogin({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      width: mediaQueryData.size.width,
      height: mediaQueryData.size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('asset/images/livin.png'),
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 450,),
            buildButton(),
            Padding(padding: EdgeInsets.all(12)),
            buildFooterIcon(),
          ],
        ),
      ),
    );
  }

  Widget buildButton(){
    return Material(
      borderRadius: BorderRadius.circular(45),
      color: Colors.green,
      child: MaterialButton(
        padding: EdgeInsetsDirectional.all(20),
        onPressed: () {

        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.fingerprint,
              color: Colors.white,
              size: 27,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Login",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        )
      ),
    );
  }

  Widget buildFooterIcon(){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          circleButton('txt', Icon(Icons.monetization_on_rounded), Colors.white),
          circleButton('txt', Icon(Icons.monetization_on_rounded), Colors.white),
          circleButton('txt', Icon(Icons.monetization_on_rounded), Colors.white),
          circleButton('txt', Icon(Icons.monetization_on_rounded), Colors.white),
        ],
      ),
    );
  }

  Widget circleButton(String text, Icon icon, Color color){
    return Container(
      constraints: BoxConstraints(maxWidth: 75),
      child: Column(
        children: [
          RawMaterialButton(
            onPressed: () {},
            fillColor: color,
            child: icon,
            padding: EdgeInsets.all(12),
            shape: CircleBorder(),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 12
            ),
          ),
        ],
      ),
    );
  }
}

