import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'first_page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget build(BuildContext context) {
    var _blankFousNode = new FocusNode();

    return Scaffold(
        resizeToAvoidBottomInset: false,
        resizeToAvoidBottomPadding: true,
        appBar: AppBar(
          backgroundColor: Colors.brown[200],
          elevation: 0,
          leading: Container(
            child: Stack(
              children: [
                Image(
                  image: AssetImage('images/khibza.png'),
                  fit: BoxFit.scaleDown,
                )
              ],
            ),
          ),
        ),
        body: Container(
          color: Colors.brown[50],
          child: Column(children: [
            new Container(
              child: GestureDetector(
                  child: SingleChildScrollView(
                child: SafeArea(
                  child: Container(
                      child: Stack(children: [
                    Column(children: [
                      Container(
                        //   color: Colors.brown[600],
                        width: MediaQuery.of(context).size.width * 6,
                        height: MediaQuery.of(context).size.height * 0.34,
                        alignment: Alignment.topLeft,
                        decoration: BoxDecoration(
                            color: Colors.brown[200],
                            borderRadius: BorderRadius.vertical(
                              bottom: (Radius.circular(33)),
                            )),
                      ),
                    ]),
                    Center(
                      child: Text(
                        'اضافة منشور',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.brown[200],
                            color: Colors.brown[500]),
                      ),
                    ),
                    Container(
                        child: Padding(
                      padding: const EdgeInsets.only(
                        top: 77,
                        right: 12,
                        left: 12,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.brown[600],
                          size: 48,
                        ),
                        onPressed: () {
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => FirstScreen()),
                              ));
                        },
                      ),
                    )),
                  ])),
                ),
              )),
            ),

            /////////////////////////////////////////////////////////////

            GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(_blankFousNode);
                },
                child: SingleChildScrollView(
                    child: new Column(children: [
                  Container(
                      child: Row(children: [
                    Text(
                      '  الاسم :  ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 16.8,
                        fontWeight: FontWeight.w500,
                        color: Colors.brown[700],
                      ),
                    ),
                    Container(
                        child: Center(
                            child: Container(
                      margin: const EdgeInsets.all(2.6),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 0,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                      width: MediaQuery.of(context).size.width * 0.78,
                      height: MediaQuery.of(context).size.height * 0.062,
                      padding: const EdgeInsets.all(0),
                      child: TextField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        )),
                      ),
                    )))
                  ])),
                  Container(
                      child: Row(children: [
                    Text(
                      'المحافظة :',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15.2,
                        fontWeight: FontWeight.w500,
                        color: Colors.brown[700],
                      ),
                    ),
                    Center(
                        child: Container(
                      margin: const EdgeInsets.all(2.6),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 0,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                      width: MediaQuery.of(context).size.width * 0.78,
                      height: MediaQuery.of(context).size.height * 0.062,
                      padding: const EdgeInsets.all(0),
                      child: TextField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        )),
                      ),
                    ))
                  ])),
                  Container(
                      child: Row(children: [
                    Text(
                      ' المدينة : ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15.8,
                        fontWeight: FontWeight.w500,
                        color: Colors.brown[700],
                      ),
                    ),
                    Container(
                        child: Center(
                            child: Container(
                      margin: const EdgeInsets.all(2.6),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 0,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                      width: MediaQuery.of(context).size.width * 0.78,
                      height: MediaQuery.of(context).size.height * 0.062,
                      padding: const EdgeInsets.all(0),
                      child: TextField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        )),
                      ),
                    )))
                  ])),
                  Container(
                      child: Center(
                    child: Container(
                        child: Row(children: [
                      Text(
                        '  العمر :   ',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16.8,
                          fontWeight: FontWeight.w500,
                          color: Colors.brown[700],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(2.6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 0,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                        ),
                        width: MediaQuery.of(context).size.width * 0.78,
                        height: MediaQuery.of(context).size.height * 0.062,
                        padding: const EdgeInsets.all(0),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                          )),
                        ),
                      )
                    ])),
                  )),
                  Container(
                      child: Row(children: [
                    Text(
                      '   العمل :     ',
                      textDirection: TextDirection.ltr,
                    ),
                    Container(
                      margin: const EdgeInsets.all(2.6),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 0,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                      width: MediaQuery.of(context).size.width * 0.78,
                      height: MediaQuery.of(context).size.height * 0.062,
                      padding: const EdgeInsets.all(0),
                      child: TextField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        )),
                      ),
                    )
                  ])),
                  Container(
                      child: Center(
                    child: Container(
                        child: Row(children: [
                      Text(
                        ' رقم الهاتف :',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.brown[700],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(2.6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 0,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                        ),
                        width: MediaQuery.of(context).size.width * 0.78,
                        height: MediaQuery.of(context).size.height * 0.062,
                        padding: const EdgeInsets.all(0),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                          )),
                        ),
                      )
                    ])),
                  )),
                  /*  Positioned(
                     child: Column(children: [
                        Padding(
                         padding: EdgeInsets.all(4),
                           child: RaisedButton(
                              child: IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () {
                                  Navigator.pop(
                                    context,
                                  );
                                },
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 1,
                                vertical: 2,
                              ),
                              color: Colors.brown[400],
                              onPressed: () {
                                Navigator.pop(
                                  context,
                                );
                              }),
                        )
                      ]),),
                  */
                ])))
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 31,
              ),
              title: Text(
                'الصفحة الرئيسية',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.brown[800],
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 31),
              title: Text(
                'البحث',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.brown[800],
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 31,
              ),
              title: Text(
                'منشوراتي',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.brown[800],
                ),
              ),
            )
          ],
        ));
  }
}
