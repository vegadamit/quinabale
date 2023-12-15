import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quinable/auth_api/auth_provider.dart';
import 'package:quinable/prsentation/screens/splesh/splesh_screen.dart';

void main() {
  runApp(
   const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>AuthProvider(),
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Spleshscreen()

      ),
    );
  }
}
// class HomePage extends StatefulWidget {
//DataScreen()//HomePage()//
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   void initState() {
//     super.initState();
//      // Provider.of<TodoProvider>(context, listen: false).getAlltodos();
//     context.read<TodoProvider>().getAlltodos();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(child: Text('Api')),
//       ),
//       body: Consumer<TodoProvider>(
//         builder: (context,value,child){
//           if(value.isLoading){
//             return Center(child: CircularProgressIndicator());
//           }
//
//             final todos = value.todo;
//             return ListView.builder(
//                 itemCount: todos.length,
//                 itemBuilder: (context, index) {
//                   final todo = todos[index];
//                   return ListTile(
//                     leading: CircleAvatar(
//                       child: Text(todo.id.toString()),
//                     ),
//                     subtitle: Text(todo.completed.toString()),
//                     title: Text(todo.title.toString()),
//                   );
//                 });
//           }
//
//       ),
//     );
//   }
// }




