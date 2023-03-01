import 'package:flutter/material.dart';
import 'package:authentest_632021105/auth_sevice.dart';
class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}
final _formKey = GlobalKey<FormState>();

TextEditingController emailuser = TextEditingController();
TextEditingController passworduser = TextEditingController();
TextEditingController username = TextEditingController();
TextEditingController tel = TextEditingController();

String groupSimple='';
bool ischecked = false;
class _registerState extends State<register> {
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

        controller: emailuser,
      validator: (value) {
    if (value!.isEmpty) {
    return 'Enter text';
    }
    return null;
    },
       decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        labelText: "email",
        hintText: "please enter email",
        hintStyle: TextStyle(color: Colors.grey)


      ),

     
      ),
       TextFormField(
           obscureText: true,
        controller: passworduser,
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
     

  TextFormField(

        controller: username,
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

        controller: tel,
      validator: (value) {
    if (value!.isEmpty) {
    return 'Enter text';
    }
    return null;
    },
       decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        labelText: "tel",
        hintText: "please enter tel",
        hintStyle: TextStyle(color: Colors.grey)


      ),

     
      ),
      
      Text("typr user"),
          RadioListTile(
        tileColor: Colors.blue,
        activeColor: Colors.red,
        selectedTileColor: Colors.yellow,
        title: Text('admin'),
        controlAffinity: ListTileControlAffinity.platform,
        value: 'admin',
        groupValue: groupSimple,
        onChanged: (value) {
        setState(() {
        groupSimple = value!;
        });
        print(groupSimple);
        },
        ),


          RadioListTile(
        tileColor: Colors.blue,
        activeColor: Colors.red,
        selectedTileColor: Colors.yellow,
        title: Text('user'),
        controlAffinity: ListTileControlAffinity.platform,
        value: 'user',
        groupValue: groupSimple,
        onChanged: (value) {
        setState(() {
        groupSimple = value!;
        });
        print(groupSimple);
        },
        ),


    

      
      ElevatedButton(
        onPressed: () {
          AuthService.registeruser    (emailuser.text ,passworduser.text).then((value){
            print("pass");
            Navigator.pop(context);
          });
        },
        child: Text('login'),
        )

       ],

      ),)
      

    );

    
  }
}
