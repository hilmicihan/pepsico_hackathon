import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QrScanner extends StatelessWidget {
  const QrScanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Scan Code or Enter Code"),
          SizedBox(
            height: 50,
          ),
          Container(
            width: 200,
              height: 200,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "enter code",
                labelText: "code",
                prefixIcon: Icon(Icons.qr_code),
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
              width: 100,
              height: 100,
              color: Colors.blueAccent,
              child: IconButton(
                icon: Icon(
                  Icons.cameraswitch_sharp,
                  size: 50,
                ),
                onPressed: () {},
              )),
        ],
      ),
    );
  }
}
