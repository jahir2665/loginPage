import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  return MaterialApp(home: HomeActivity(),debugShowCheckedModeBanner: false);

  }

}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text("Login page"),
    backgroundColor: Colors.cyan,),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Enter your login credentials',
          style: TextStyle(
            fontSize: 20,
            color: Colors.teal,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Form(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(15),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),
                      labelText: 'Email adress',prefixIcon:Icon(Icons.email) ),),),
                  Padding(padding: EdgeInsets.all(15),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),
                      labelText: 'phone number',prefixIcon:Icon(Icons.phone) ),),),
                  Padding(padding: EdgeInsets.all(15),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),
                      labelText: 'password',prefixIcon:Icon(Icons.password) ),),),

                  SizedBox(height: 30,),

                  MaterialButton(onPressed: (){},
                  child:Text('Login'),
                    color: Colors.green,
                    textColor: Colors.white,
                  ),
                ],
              )
          ),
        ),
      ],
    ),
  );
  }
}