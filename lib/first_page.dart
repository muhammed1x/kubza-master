
import 'package:flutter/material.dart';
import 'add_post.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.brown[200],
       elevation: 0,
          leading: Container(         
           child: Stack(
           children: [
             
             Image(image:
             AssetImage('images/khibza.png'),
             fit: BoxFit.scaleDown,
             )
           ],
         ),
       ),
      ),

      drawer: Drawer(
        elevation: 22,
       child: Container(
         child:
        Text('hi ibrahem<-->'),
        
        ),

         

       ),
      

      body: Container(
          child: GestureDetector(
              child: SingleChildScrollView(
                  child: SafeArea(
         child: Container(
         
          child:  
           Column(
             children:[

             
          
            Container(
              child:Center(
              
              child:
            
         
                   
             Text('منشوراتي',textDirection: TextDirection.rtl,
             style: TextStyle(
             fontSize: 24,
             fontWeight: FontWeight.bold,
             backgroundColor: Colors.brown[200]
             ,
             color: Colors.brown[500]
            ),           
             ),
              ),
              
          
              width: MediaQuery.of(context).size.width*7,
              height: MediaQuery.of(context).size.height*0.3,
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                  color: Colors.brown[200],
                  borderRadius: BorderRadius.vertical(
                    bottom: (Radius.circular(33)),
                  )),
              
           
              
           
                                ),
            Container(
                alignment: Alignment.topRight,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 33,
                    ),
                    child: RaisedButton(
                        textColor: Colors.brown[50],
                        color: Colors.brown[400],
                        elevation: 3,
                        child: Text(
                          'اضافة منشور',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ), 
                        onPressed: () {
                        
                          Navigator.push(
                              context,MaterialPageRoute(                              
                              builder: ((context) => Home()),
                      
                       ));
                   }),
                ),
             ))
              
           ]
           ),
        
        )),
      ))), 


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
        )
      
      
    );
  }
}

//       'شكرا' ////////