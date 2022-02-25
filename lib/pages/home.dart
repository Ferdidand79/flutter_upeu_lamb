import 'package:flutter/material.dart';
import 'package:flutter_upe_lamb/constants/tituloapp.dart';
import 'package:flutter_upe_lamb/pages/qr_generate.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),

      appBar: AppBar(
        backgroundColor: Color(0xff6B2122),

        elevation: 0,

        title: Container(
          margin: EdgeInsets.only(right:0, left:70),
          child: apptitulo,
        ), 

        actions: [
          Container(
            //height: 5,
            width: 36,
            margin: EdgeInsets.only(right: 12),
            child: IconButton(
              onPressed: () {              
              }, 
              icon: Image.asset(
                'assets/images/salir02.png',
                color: Colors.white,
              )
            ),
          ),
        ],        
      ),

      body: Stack(
    children: [

      Container(
        height:200,
        width:double.infinity,
        color: Color(0xff6B2122),
      ),
      
      Container(        
        //borderRadiusheight: 500,
        width: double.infinity,
        child: Image.asset('assets/images/qr_cabecera04.png'),
      ),
      Column(
        children: [
          InkWell(
            child: Container(
              margin: EdgeInsets.only(right: 0, top: 25, left: 0, bottom: 0),
              height: 110,
              width: double.infinity,
              decoration: BoxDecoration(
                image:  DecorationImage(
                  image: AssetImage(
                    'assets/images/user01.png'
                  ), 
                ), 
              ),
              
            ),
            onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return QrGenerate();
            }));
          },
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
            height: 90,
          ),

          Container(
            height: 65,
            width: double.infinity,
            margin: EdgeInsets.only(right: 38, top: 0, left: 38, bottom: 0),
            //color: Colors.white,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                'Portal ALUMNO',
                  style: TextStyle(
                  fontFamily: 'ClanPro',
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),

          /*Container(
            height: 65,
            width: double.infinity,
            margin: EdgeInsets.only(right: 40, top: 0, left: 40, bottom: 0),
            child: OutlinedButton(
              onPressed: () {              
              }, 
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: StadiumBorder(
                  //side: BorderSide(color: Colors.orange, width: .0),
                ),
                //side: BorderSide(color: Colors.orange, width: .0)
              ),
              child: Text(
              'Portal ALUMNO',
                style: TextStyle(
                fontFamily: 'ClanPro',
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            ),
          ),*/

          SizedBox(
            height: 17,
          ),

          Container(
            height: 65,
            width: double.infinity,
            margin: EdgeInsets.only(right: 38, top: 0, left: 38, bottom: 0),
            //color: Colors.white,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                'Portal TRABAJADOR',
                  style: TextStyle(
                  fontFamily: 'ClanPro',
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
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
  )
    );
  }
}