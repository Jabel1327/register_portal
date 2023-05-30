import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'fogetscreen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight +290.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 0, 30, 60),
      flexibleSpace: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 38.0),
            child: Container(
              height: 80.0,
              alignment: Alignment.centerLeft,
              child: Text("Register",
                  style: TextStyle(
                      fontSize: 48,fontWeight: FontWeight.bold,
                      color: Colors.white
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 38.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Create your account", style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                // fontWeight: FontWeight.bold
              ),
              ),
            ),
          ),
          SizedBox(height: 25.0),
        ],
      ),
    );
  }
}

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController forgotpasswordController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(),
         body:
         Padding(
           padding: const EdgeInsets.all(20.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "full name",
                  labelText: "Full Name",
                  border: OutlineInputBorder(),
                )
              ),
               SizedBox(height:20),
               TextFormField(
                   decoration: InputDecoration(
                     hintText: "email",
                     labelText: "Email",
                     border: OutlineInputBorder(),
                   ),
               ),
               SizedBox(height:20),
               TextFormField(
                   obscureText: true,
                   decoration: InputDecoration(
                     hintText: "password",
                     labelText: "Password",
                     border: OutlineInputBorder(),
                     suffixIcon: Icon(
                       Icons.visibility_off_outlined
                     )
                   )
               ),
               SizedBox(height:20),
               TextFormField(
                   obscureText: true,
                   decoration: InputDecoration(
                     hintText: "repeat password",
                     labelText: "Repeat Password",
                     border: OutlineInputBorder(),
                       suffixIcon: Icon(
                           Icons.visibility_off_outlined
                       )
                   )
               ),

               SizedBox(height:20),
    SizedBox(
    width: 400,
    height: 50,
    child:   Container(
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ElevatedButton(
        onPressed: (){
          var forgotpassword = forgotpasswordController.text.toString();


          Navigator.push(context, MaterialPageRoute(builder: (context) =>
              ForgotPassWord(forgotpassword: forgotpassword))
          );
          }, child: Text("Register",
          style: TextStyle(
              fontSize: 17,fontWeight: FontWeight.bold
          )),
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          elevation: 0
        ),
      ),
    )
    ),
               SizedBox(
                 height: 240,
               ),
               Text("Don't have an account? Register",
                   style: TextStyle(
                     fontSize: 20,
                   )
               ),

             ],
           ),
         ),
    );
  }
}
