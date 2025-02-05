import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Column(
            children: [
              Text("Welcome to my app"),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "email",
                        labelText: "Email",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return"empty value is not required";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Password",
                        labelText: "Password",
                      ),
                      validator: (value){
                        if(value == null || value.length<=6){
                          return"password should be at least 6 digit";
                        }
                        return null;
                      },
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: 30,
            width: double.infinity,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  if(_formKey.currentState!.validate()){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>userInfo()));
                  }
                },
                child: Text(
                  "Send",
                  style: TextStyle(color: Colors.white),
                )),
          ),
          SizedBox(height: 300,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 6,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: 30,
                  itemBuilder: (context,index){
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Icon(Icons.account_circle,size: 30,color: Colors.white,),
                    );
                  }
              )
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print("I am floating action button");
        },
        label: Text("add new"),
      ),
    );
  }
}

class userInfo extends StatelessWidget {
  const userInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Back")),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Page1()));
            }, child: Text("Page1")),
          ],
        )
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Column(
            children: [
              Text("PAGE 1",style: TextStyle(color: Colors.white, fontSize: 40),),
            ],
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Back")),
        ],
      ),
    );
  }
}


