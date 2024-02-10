import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("Cập nhật thông tin cá nhân",style: TextStyle(fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),)),backgroundColor: Colors.red,),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45,vertical: 100),
        child: Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
              children:  [
                TableRow(
                  children:<Widget>[
                    // TableCell(child: Text("Họ:",style: TextStyle(fontSize: 25,),textAlign: TextAlign.end,)),
                    // TableCell(child: TextField(textAlign: TextAlign.center,)),
                    // TableCell(child: Text("Tên:",style: TextStyle(fontSize: 25,),textAlign: TextAlign.end,)),
                    // TableCell(child: TextField(textAlign: TextAlign.center,)),
                    Container(
                      width:40,
                      height: 45,
                      child: const Text("Họ:*",style: TextStyle(fontSize: 20,),textAlign: TextAlign.end),
                    ),
                    Container(
                     height: 45,
                     width: 80,
                      child: const TextField(),
                    ),
                    Container(
                      width:40,
                      height: 45,
                      child: const Text("Tên:*",style: TextStyle(fontSize: 20,),textAlign: TextAlign.end),
                    ),
                     Container(
                     height: 45,
                     width: 80,
                      child: const TextField(),
                    ),                   
                  ]
                ),
              ],
        ),
      ),
    );
  }
}