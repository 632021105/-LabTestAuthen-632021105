import 'package:flutter/material.dart';
import 'package:authentest_632021105/reg.dart';
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _lohinState();
}
final _formKey = GlobalKey<FormState>();
TextEditingController _controller1 = TextEditingController();
TextEditingController _controller2 = TextEditingController();





class _lohinState extends State<login> {
  @override
  Widget build(BuildContext context) {


    
    
    
    return Scaffold(
         appBar: AppBar(
        title: Text("เข้าสู่ระบบ"),

      ),
      body:Form(
        key: _formKey ,
        child:  Column(children: 
       [ 
      TextFormField(

        controller: _controller1,
      validator: (value) {
    if (value!.isEmpty) {
    return 'Enter text';
    }
    return null;
    },
       decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        labelText: "username",
        hintText: "please enter username",
        hintStyle: TextStyle(color: Colors.grey)


      ),

     
      ),
       TextFormField(
           obscureText: true,
        controller: _controller2,
      validator: (value) {
    if (value!.isEmpty) {
    return 'Enter text';
    }
    return null;
    },
       decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        labelText: "plassword",
     
        hintText: "please enter plassword",
        hintStyle: TextStyle(color: Colors.grey)


      ),
      ),

      
      ElevatedButton(
        onPressed: () {
          if(_formKey.currentState!.validate()) {
            print(_controller1.text);
          }

           if(_formKey.currentState!.validate()) {
            print(_controller2.text);
          }
          
        },
        child: Text('login'),
        ),
          
      ElevatedButton(
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: ((context) => register())));

          
        },
        child: Text('register'),
        )


        

       ],

      ),)
      











      
    
    );

    
  }
}
