import 'package:flutter/material.dart';
Widget build(BuildContext context) {
  // final _formkey = GlobalKey<FormState>();
  return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body:Column(
        children: [
          Form(
            // key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your Name",
                      labelText: "Name",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your Phone Number",
                      labelText: "Number",
                      border: OutlineInputBorder(),
                    ),
                  ),


                ],
              )),
         SizedBox(height: 20),
          // ElevatedButton(
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor: Colors.blue,
          //   ),
          //     onPressed: (){
          //     if(_formkey.currentState!.validate()){
          //       Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
          //     }
          //   // Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
          // },
          //
          // child: Text("Submit",style: TextStyle(color:Colors.white),)),

          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>userInfo()));
              },
              child: Text("Submit",style: TextStyle(color:Colors.white),)),
        ],
      )
  );
}