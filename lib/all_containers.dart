import 'package:flutter/material.dart';

class AllContainers extends StatelessWidget {
  const AllContainers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(60.0),
      children: [
        _basic(),
        _borders(),
        _customBorders(),
        _borderRadius(),
        _customBorderRadius(),
        _gradient(),
        _boxShadow(),
        _backgroundImage()
      ],
    );
  }

  _basic() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Color(0xffe77f7f),
        height: 150.0,
      ),
    );
  }

  _borders() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
            color: Color(0xffd75050),
            border: Border.all(color: Color(0xff000000), width: 4.0)),
      ),
    );
  }

  _customBorders() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
          color: Color(0xffa92e2e),
          border: Border(
              top: BorderSide(color: Color(0xff55ad56), width: 4.0),
              bottom: BorderSide(color: Color(0xff66130d), width: 5.0)),
        ),
      ),
    );
  }

  _borderRadius() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
            color: Color(0xff7a1717),
            borderRadius: BorderRadius.all(Radius.circular(32.0))),
      ),
    );
  }

  _customBorderRadius() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 150.0,
          decoration: BoxDecoration(
              color: Color(0xff870b0b),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ))),
    );
  }

  _gradient() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Colors.red, Colors.pink, Colors.indigo])),
      ),
    );
  }

  _boxShadow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
            color: Color(0xffcf0000),
            borderRadius: const BorderRadius.all(Radius.circular(32)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[850]!.withOpacity(0.29),
                  offset: const Offset(-10, 10),
                  blurRadius: 10,
                  spreadRadius: 10)
            ]),
      ),
    );
  }

  _backgroundImage() {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 150.0,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: const BorderRadius.all(Radius.circular(32)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[850]!.withOpacity(0.29),
                    offset: const Offset(-10, 10),
                    blurRadius: 10,
                    spreadRadius: 10)
              ],
              image: const DecorationImage(
                  image: AssetImage("assets/marr.jpg"), fit: BoxFit.cover)),
          child: const Center(
            child: Text(
              "Reyna Molina",
              style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5),
            ),
          ),
        ));
  }
}
