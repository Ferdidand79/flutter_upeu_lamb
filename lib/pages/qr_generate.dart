import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_upe_lamb/constants/tituloapp.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:esys_flutter_share_plus/esys_flutter_share_plus.dart';
//import 'package:share/share.dart';
// import 'package:share_plus/share_plus.dart';

class QrGenerate extends StatefulWidget {
  const QrGenerate({Key? key}) : super(key: key);

  @override
  _QrGenerateState createState() => _QrGenerateState();
}

class _QrGenerateState extends State<QrGenerate> {
  final String data =
      'DNI: 73568458, Código: 201222789, Nombres: Abel Fernando Juarez Mesia';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEEEEEE),
        appBar: AppBar(
          backgroundColor: Color(0xff6B2122),
          elevation: 0,
          title: Container(
              margin: EdgeInsets.only(right: 0, left: 15, top: 0),
              child: apptitulo),
        ),
        body: Stack(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Color(0xff6B2122),
            ),
            Container(
              //borderRadiusheight: 500,
              width: double.infinity,
              child: Image.asset('assets/images/qr_cabecera04.png'),
            ),
            Column(
              children: [
                Container(
                  margin:
                      EdgeInsets.only(right: 0, top: 25, left: 0, bottom: 0),
                  height: 110,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/user01.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Abel Fernando Sangama Oñate',
                  style: TextStyle(
                    fontFamily: 'ClanPro',
                    fontSize: 13,
                    //fontWeight: FontWeight.bold,
                    color: Color(0xffEEEEEE),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'FILIAL TARAPOTO UPeU',
                  style: TextStyle(
                    fontFamily: 'ClanPro',
                    fontSize: 13,
                    //fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 75,
                ),
                QrImage(
                  data: data,
                  version: 4,
                  //version: QrVersions.auto,
                  size: 240.0,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  margin:
                      EdgeInsets.only(right: 38, top: 10, left: 38, bottom: 0),
                  //color: Colors.white,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xff6B2122),
                    boxShadow: <BoxShadow>[
                      new BoxShadow(
                        color: Colors.black26,
                        blurRadius: 7,
                        offset: new Offset(0.0, 4.0),
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Compartir',
                        style: TextStyle(
                          fontFamily: 'ClanPro',
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                          onPressed: () async {
                            //Directory directory = await getApplicationDirectory();
                            final ByteData bytes = await rootBundle
                                .load('assets/images/qrescaneado.png');
                            
                            //Share.share('https://drive.google.com/file/d/1OJoTZvUkcUp-NQvg2xo5uIFZDaEmnrwP/view?usp=sharing');
                            Share.file('QR para invitado', 'qrescaneado.png', bytes.buffer.asUint8List(), "images/png", text: 'QR para mi graduación');
                          },
                          icon: const Icon(
                            Icons.share,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  margin:
                      EdgeInsets.only(right: 38, top: 0, left: 38, bottom: 0),
                  //color: Colors.white,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xff6B2122),
                    boxShadow: <BoxShadow>[
                      new BoxShadow(
                        color: Colors.black26,
                        blurRadius: 7,
                        offset: new Offset(0.0, 4.0),
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'Cerrar Sesión',
                      style: TextStyle(
                        fontFamily: 'ClanPro',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            /*Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 109, 19, 19),
            border: Border.all(width: 1.0, color: const Color(0xff707070)),
          ),
        ),
        Container(
          height:100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(9999.0),              
              bottomLeft: Radius.circular(9999.0),              
            ),
            //borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
            color: Color.fromARGB(255, 28, 240, 21),
            border: Border.all(width: 1.0, color: const Color(0xff707070)),
          ),
        ),*/
          ],
        ));
  }
}
