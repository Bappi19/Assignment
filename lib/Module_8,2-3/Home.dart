// import 'package:flutter/material.dart';
// import 'package:practice_app/Assignment/main.dart';
// class Home extends StatefulWidget {
//   const Home({super.key});
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   List<String> _task=[];
//
//   TextEditingController _taskController = TextEditingController();
//
//   addTask(){
//     if(_taskController.text.isNotEmpty)
//       setState(() {
//         _task.add(_taskController.text);
//         _taskController.clear();
//       });
//   }
//   removeTask(int index){
//     setState(() {
//       _task.removeAt(index);
//     });
//   }
//   clearTask(){
//     setState(() {
//       _task.clear();
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Column(
//           children: [
//             Text("This is a Home Page")
//           ],
//         ),
//
//       ),
//       body:Column(
//         children: [
//           TextField(
//             controller: _taskController,
//             decoration: InputDecoration(
//               hintText: "Enter your name",
//               border: OutlineInputBorder(),
//               suffixIcon: IconButton(onPressed: addTask, icon: Icon(Icons.add)),
//             ),
//           ),
//           SizedBox(height: 20,),
//
//           Expanded(
//             child: ListView.builder(
//                 itemCount: _task.length,
//                 itemBuilder:(Context,index){
//                   return Card(
//                     child: ListTile(
//                       title: Text(_task[index]),
//                       trailing: IconButton(onPressed: () => removeTask(index), icon:Icon(Icons.delete,color: Colors.red,)),
//                     ),
//                   );
//
//                 }),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(onPressed: () =>  clearTask,child: Icon(Icons.delete_forever),),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'Home.dart';

class UserForm extends StatelessWidget {  // Change the class name to UserForm
  const UserForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Form'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Form(
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
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));  // Navigate to Home page
            },
            child: Text("Submit", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
