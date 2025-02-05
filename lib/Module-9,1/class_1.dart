import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basic App',   // App title
      theme: ThemeData(             // Theme customization
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),      // Home screen
      debugShowCheckedModeBanner: false,  // Hide debug banner
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),   // AppBar title
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              // This is Layoutbuilder
              child:LayoutBuilder(
                  builder: (context,contrast){
                    if(contrast.maxWidth >600){
                      return Center(
                        child: Text("This is tablate view"),
                      );
                    }else{
                      return Center(
                        child: Text("This is mobail view"),
                      );
                    }
                  }
              ),
            ),
        
            // This is Expanded view
            // This is Expanded view
            // This is Expanded view
            SizedBox(height: 500,width: 500,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
        
                Expanded(
                  flex: 2,
                    child: Container(
                  color: Colors.amber,
                ))
        
              ],
            )
            ),

           // THis is StackView
           // THis is StackView
           // THis is StackView
           // THis is StackView
           SizedBox(height: 30,),

           Center(
             child: Stack(
               children: [
                 Container(
                   height: 400,
                   width: 4000,
                   decoration: BoxDecoration(
                       color: Colors.red,
                       borderRadius: BorderRadius.circular(20)
                   ),
                 ),

                 Positioned(
                   // bottom: 5,
                   // right: 10,
                   child: Container(
                     height: 100,
                     width: 100,
                     decoration: BoxDecoration(
                         color: Colors.blue,
                         borderRadius: BorderRadius.circular(20)
                     ),
                   ),
                 ),

                 Positioned(
                   // bottom: 5,
                   // right: 10,
                   child: Container(
                     height: 50,
                     width: 50,
                     decoration: BoxDecoration(
                         color: Colors.amber,
                         borderRadius: BorderRadius.circular(20)
                     ),
                   ),
                 ),
               ],
             ),
           )
          ],
        ),
      ),
    );
  }
}
