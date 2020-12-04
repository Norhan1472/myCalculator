import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
     debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
           leading: Icon(Icons.menu),
           title:Text( "Calculater"),
           actions: [
             Icon(Icons.calculate_rounded,size: 30,),
             Padding(padding:EdgeInsets.symmetric(horizontal:10),
             child : Icon(Icons.delete),
             ),
             Icon(Icons.more_vert),
           ],
           backgroundColor:Colors.blue[900],
           ),
        
      body: Center(
        child:Column(
        mainAxisAlignment:MainAxisAlignment.center,
        crossAxisAlignment:CrossAxisAlignment.center,
        children :[
         RaisedButton(
          child: Text('Addition',style:TextStyle(
                       fontSize:20,
                       fontWeight:FontWeight.bold,
                       color:Colors.black,
                       )),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
          },
          
          shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(30),
         ),
        ),
        
         RaisedButton(
          child: Text('Multiplication',style:TextStyle(
                       fontSize:20,
                       fontWeight:FontWeight.bold,
                       color:Colors.white,
                       )),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyAppMultiply()),
            );
            
          },
          shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(30),
         ),
          color:Colors.blue[900],
          textColor:Colors.white,
          
        ),
        RaisedButton(
          child: Text('Subtraction',style:TextStyle(
                       fontSize:20,
                       fontWeight:FontWeight.bold,
                       color:Colors.white,
                       )),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyAppsub()),
            );
            
          },
          shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(30),
         ),
          color:Colors.blue[900],
          textColor:Colors.white,
          
        ),
        RaisedButton(
          child: Text('Division',style:TextStyle(
                       fontSize:20,
                       fontWeight:FontWeight.bold,
                       color:Colors.black,
                       ),),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyAppdivide()),
            );
          },
          
          shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(30),
         ),
        ),
        ]
        ),
      ),
        
    );
  }
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _CalculatorState();
  }
}

class _CalculatorState extends State<MyApp> {
  // This widget is the root of your application.
  double result = 0.0 ;
  double firstNum,secondNum;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
           leading: Icon(Icons.menu),
           title:Text( "Calculater"),
           actions: [
             Icon(Icons.calculate_rounded,size: 30,),
             Padding(padding:EdgeInsets.symmetric(horizontal:10),
             child : Icon(Icons.delete),
             ),
             Icon(Icons.more_vert),
           ],
           backgroundColor:Colors.blue[900],
           ),
           
           body: Container(
             margin:EdgeInsets.all(20,),
             child: Column(
             mainAxisAlignment:MainAxisAlignment.center,
               children:[
                 Row(
                   children:[
                     Expanded(
                       flex:2,
                     child:TextField(
                       keyboardType: TextInputType.number,
                       decoration:InputDecoration(
                         hintText:"First number",  
                         enabledBorder: UnderlineInputBorder(
                           borderSide:BorderSide(
                             width:2,
                             color:Colors.green,
                             ),//borderside
                         ),//enabledborder
                         focusedBorder:UnderlineInputBorder(
                           borderSide:BorderSide(
                             width:2,
                             color:Colors.red,
                             ),//boderside
                         ),//focusedborder                     
                        ),//decoration
                      onChanged:(value)
                      {
                        setState(()
                        {
                        firstNum=double.parse(value);
                        }
                        );
                      },                          
                     ), 
                     ),
                     Expanded(
                       flex:1,
                       child:Icon(
                       Icons.add,
                       color:Colors.blue[900],
                       ),
                     ),
                     Expanded(
                       flex:2,
                      child:TextField(
                       keyboardType: TextInputType.number,
                       decoration:InputDecoration(
                         hintText:"Second number",  
                         enabledBorder: UnderlineInputBorder(
                           borderSide:BorderSide(
                             width:2,
                             color:Colors.green,
                             ),//borderside
                         ),//enabledborder
                         focusedBorder:UnderlineInputBorder(
                           borderSide:BorderSide(
                             width:2,
                             color:Colors.red,
                             ),//boderside
                         ),//focusedborder                     
                        ),//decoration
                      onChanged:(value)
                      {
                        setState(()
                        {
                        secondNum=double.parse(value);
                        }
                        );
                      },                          
                     ), 
                     ),
                    
                   ],
                 ),
                   Container(
                   margin:EdgeInsets.symmetric(vertical:20),
                   child:RaisedButton(
                     child:Text(
                       "=",
                     style:TextStyle(color:Colors.white,
                     fontWeight:FontWeight.bold,
                     fontSize:26),
                     ),
                     onPressed:(){
                       
                       setState(()
                        {
                        result=firstNum+secondNum;
                        }
                        );
                     },
                      shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10),
                      ),
                     color:Colors.blue[900],
                     ),
                     
                     ),
                     Text("Result : $result" ,style:TextStyle(
                       fontSize:26,
                       fontWeight:FontWeight.bold,
                       ),
                     ),
                    // 
                    Container(
                      margin:EdgeInsets.symmetric(vertical:20),
                     child:RaisedButton(
                       
                      onPressed: () {
                      Navigator.pop(context);
                      },
                     child: Text('Go back!',style:TextStyle(
                       fontSize:20,
                       fontWeight:FontWeight.bold,
                       color:Colors.white,
                       ),
                       ),
                       shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10),
                      ),
                       color:Colors.blue[900],
                     ),
                    ),
                 
               ],
             )
           ),
                ),
            );
          }
        
}

class MyAppMultiply extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _CalculatorStateMulti();
  }
}

class _CalculatorStateMulti extends State<MyAppMultiply> {
  // This widget is the root of your application.
  double result = 0.0 ;
  double firstNum,secondNum;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
           leading: Icon(Icons.menu),
           title:Text( "Calculater"),
           actions: [
             Icon(Icons.calculate_rounded,size: 30,),
             Padding(padding:EdgeInsets.symmetric(horizontal:10),
             child : Icon(Icons.delete),
             ),
             Icon(Icons.more_vert),
           ],
           backgroundColor:Colors.blue[900],
           ),
           
           body: Container(
             margin:EdgeInsets.all(20,),
             child: Column(
             mainAxisAlignment:MainAxisAlignment.center,
               children:[
                 Row(
                   children:[
                     Expanded(
                       flex:2,
                     child:TextField(
                       keyboardType: TextInputType.number,
                       decoration:InputDecoration(
                         hintText:"First number",  
                         enabledBorder: UnderlineInputBorder(
                           borderSide:BorderSide(
                             width:2,
                             color:Colors.green,
                             ),//borderside
                         ),//enabledborder
                         focusedBorder:UnderlineInputBorder(
                           borderSide:BorderSide(
                             width:2,
                             color:Colors.red,
                             ),//boderside
                         ),//focusedborder                     
                        ),//decoration
                      onChanged:(value)
                      {
                        setState(()
                        {
                        firstNum=double.parse(value);
                        }
                        );
                      },                          
                     ), 
                     ),
                     SizedBox(width:20,),
                     Expanded(
                       
                     //  Padding(padding:EdgeInsets.symmetric(horizontal:10),
                       flex:0,
                       child:Text(
                       "X",
                     style:TextStyle(color:Colors.blue[900],
                     fontWeight:FontWeight.bold,
                     fontSize:26),
                     )
                       
                     ),
                     SizedBox(width:20,),
                     Expanded(
                       flex:2,
                      child:TextField(
                       keyboardType: TextInputType.number,
                       decoration:InputDecoration(
                         hintText:"Second number",  
                         enabledBorder: UnderlineInputBorder(
                           borderSide:BorderSide(
                             width:2,
                             color:Colors.green,
                             ),//borderside
                         ),//enabledborder
                         focusedBorder:UnderlineInputBorder(
                           borderSide:BorderSide(
                             width:2,
                             color:Colors.red,
                             ),//boderside
                         ),//focusedborder                     
                        ),//decoration
                      onChanged:(value)
                      {
                        setState(()
                        {
                        secondNum=double.parse(value);
                        }
                        );
                      },                          
                     ), 
                     ),
                    
                   ],
                 ),
                   Container(
                   margin:EdgeInsets.symmetric(vertical:20),
                   child:RaisedButton(
                     child:Text(
                       "=",
                     style:TextStyle(color:Colors.white,
                     fontWeight:FontWeight.bold,
                     fontSize:26),
                     ),
                     onPressed:(){
                       
                       setState(()
                        {
                        result=firstNum*secondNum;
                        }
                        );
                     },
                      shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10),
                      ),
                     color:Colors.blue[900],
                     ),
                     
                     ),
                     Text("Result : $result" ,style:TextStyle(
                       fontSize:26,
                       fontWeight:FontWeight.bold,
                       ),
                     ),
                    // 
                    Container(
                      margin:EdgeInsets.symmetric(vertical:20),
                     child:RaisedButton(
                       
                      onPressed: () {
                      Navigator.pop(context);
                      },
                     child: Text('Go back!',style:TextStyle(
                       fontSize:20,
                       fontWeight:FontWeight.bold,
                       color:Colors.white,
                       ),
                       ),
                       shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10),
                      ),
                       color:Colors.blue[900],
                     ),
                    ),
                 
               ],
             )
           ),
                ),
            );
          }
        
}

class MyAppdivide extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _CalculatorStatedivide();
  }
}

class _CalculatorStatedivide extends State<MyAppdivide> {
  // This widget is the root of your application.
  double result = 0.0 ;
  double firstNum,secondNum;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
           leading: Icon(Icons.menu),
           title:Text( "Calculater"),
           actions: [
             Icon(Icons.calculate_rounded,size: 30,),
             Padding(padding:EdgeInsets.symmetric(horizontal:10),
             child : Icon(Icons.delete),
             ),
             Icon(Icons.more_vert),
           ],
           backgroundColor:Colors.blue[900],
           ),
           
           body: Container(
             margin:EdgeInsets.all(20,),
             child: Column(
             mainAxisAlignment:MainAxisAlignment.center,
               children:[
                 Row(
                   children:[
                     Expanded(
                       flex:2,
                     child:TextField(
                       keyboardType: TextInputType.number,
                       decoration:InputDecoration(
                         hintText:"First number",  
                         enabledBorder: UnderlineInputBorder(
                           borderSide:BorderSide(
                             width:2,
                             color:Colors.green,
                             ),//borderside
                         ),//enabledborder
                         focusedBorder:UnderlineInputBorder(
                           borderSide:BorderSide(
                             width:2,
                             color:Colors.red,
                             ),//boderside
                         ),//focusedborder                     
                        ),//decoration
                      onChanged:(value)
                      {
                        setState(()
                        {
                        firstNum=double.parse(value);
                        }
                        );
                      },                          
                     ), 
                     ),
                     SizedBox(width:20,),
                     Expanded(
                       
                     //  Padding(padding:EdgeInsets.symmetric(horizontal:10),
                       flex:0,
                       child:Text(
                       "%",
                     style:TextStyle(color:Colors.blue[900],
                     fontWeight:FontWeight.bold,
                     fontSize:26),
                     )
                       
                     ),
                     SizedBox(width:20,),
                     Expanded(
                       flex:2,
                      child:TextField(
                       keyboardType: TextInputType.number,
                       decoration:InputDecoration(
                         hintText:"Second number",  
                         enabledBorder: UnderlineInputBorder(
                           borderSide:BorderSide(
                             width:2,
                             color:Colors.green,
                             ),//borderside
                         ),//enabledborder
                         focusedBorder:UnderlineInputBorder(
                           borderSide:BorderSide(
                             width:2,
                             color:Colors.red,
                             ),//boderside
                         ),//focusedborder                     
                        ),//decoration
                      onChanged:(value)
                      {
                        setState(()
                        {
                        secondNum=double.parse(value);
                        }
                        );
                      },                          
                     ), 
                     ),
                    
                   ],
                 ),
                   Container(
                   margin:EdgeInsets.symmetric(vertical:20),
                   child:RaisedButton(
                     child:Text(
                       "=",
                     style:TextStyle(color:Colors.white,
                     fontWeight:FontWeight.bold,
                     fontSize:26),
                     ),
                     onPressed:(){
                       
                       setState(()
                        {
                        result=firstNum/secondNum;
                        }
                        );
                     },
                      shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10),
                      ),
                     color:Colors.blue[900],
                     ),
                     
                     ),
                     Text("Result : $result" ,style:TextStyle(
                       fontSize:26,
                       fontWeight:FontWeight.bold,
                       ),
                     ),
                    
                    Container(
                      margin:EdgeInsets.symmetric(vertical:20),
                     child:RaisedButton(
                       
                      onPressed: () {
                      Navigator.pop(context);
                      },
                     child: Text('Go back!',style:TextStyle(
                       fontSize:20,
                       fontWeight:FontWeight.bold,
                       color:Colors.white,
                       ),
                       ),
                       shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10),
                      ),
                       color:Colors.blue[900],
                     ),
                    ),
                 
               ],
             )
           ),
                ),
            );
          }
        
}


class MyAppsub extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _CalculatorStatesub();
  }
}

class _CalculatorStatesub extends State<MyAppsub> {
  // This widget is the root of your application.
  double result = 0.0 ;
  double firstNum,secondNum;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
           leading: Icon(Icons.menu),
           title:Text( "Calculater"),
           actions: [
             Icon(Icons.calculate_rounded,size: 30,),
             Padding(padding:EdgeInsets.symmetric(horizontal:10),
             child : Icon(Icons.delete),
             ),
             Icon(Icons.more_vert),
           ],
           backgroundColor:Colors.blue[900],
           ),
           
           body: Container(
             margin:EdgeInsets.all(20,),
             child: Column(
             mainAxisAlignment:MainAxisAlignment.center,
               children:[
                 Row(
                   children:[
                     Expanded(
                       flex:2,
                     child:TextField(
                       keyboardType: TextInputType.number,
                       decoration:InputDecoration(
                         hintText:"First number",  
                         enabledBorder: UnderlineInputBorder(
                           borderSide:BorderSide(
                             width:2,
                             color:Colors.green,
                             ),//borderside
                         ),//enabledborder
                         focusedBorder:UnderlineInputBorder(
                           borderSide:BorderSide(
                             width:2,
                             color:Colors.red,
                             ),//boderside
                         ),//focusedborder                     
                        ),//decoration
                      onChanged:(value)
                      {
                        setState(()
                        {
                        firstNum=double.parse(value);
                        }
                        );
                      },                          
                     ), 
                     ),
                     SizedBox(width:20,),
                     Expanded(
                       
                       flex:0,
                       child:Text(
                       "-",
                     style:TextStyle(color:Colors.blue[900],
                     fontWeight:FontWeight.bold,
                     fontSize:26),
                     )
                       
                     ),
                     SizedBox(width:20,),
                     Expanded(
                       flex:2,
                      child:TextField(
                       keyboardType: TextInputType.number,
                       decoration:InputDecoration(
                         hintText:"Second number",  
                         enabledBorder: UnderlineInputBorder(
                           borderSide:BorderSide(
                             width:2,
                             color:Colors.green,
                             ),//borderside
                         ),//enabledborder
                         focusedBorder:UnderlineInputBorder(
                           borderSide:BorderSide(
                             width:2,
                             color:Colors.red,
                             ),//boderside
                         ),//focusedborder                     
                        ),//decoration
                      onChanged:(value)
                      {
                        setState(()
                        {
                        secondNum=double.parse(value);
                        }
                        );
                      },                          
                     ), 
                     ),
                    
                   ],
                 ),
                   Container(
                   margin:EdgeInsets.symmetric(vertical:20),
                   child:RaisedButton(
                     child:Text(
                       "=",
                     style:TextStyle(color:Colors.white,
                     fontWeight:FontWeight.bold,
                     fontSize:26),
                     ),
                     onPressed:(){
                       
                       setState(()
                        {
                        result=firstNum-secondNum;
                        }
                        );
                     },
                      shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10),
                      ),
                     color:Colors.blue[900],
                     ),
                     
                     ),
                     Text("Result : $result" ,style:TextStyle(
                       fontSize:26,
                       fontWeight:FontWeight.bold,
                       ),
                     ),
                    
                    Container(
                      margin:EdgeInsets.symmetric(vertical:20),
                     child:RaisedButton(
                       
                      onPressed: () {
                      Navigator.pop(context);
                      },
                     child: Text('Go back!',style:TextStyle(
                       fontSize:20,
                       fontWeight:FontWeight.bold,
                       color:Colors.white,
                       ),
                       ),
                       shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10),
                      ),
                       color:Colors.blue[900],
                     ),
                    ),
                 
               ],
             )
           ),
                ),
            );
          }
        
}