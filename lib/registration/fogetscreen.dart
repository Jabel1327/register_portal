import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'forgotscreen2.dart';

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
              child: Text("Forgpt Password",
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
              child: Text("Enter your email account to rest password", style: TextStyle(
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



class ForgotPassWord extends StatelessWidget {
  final String? forgotpassword;
  const ForgotPassWord({Key? key,this.forgotpassword}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController forgotpassword2Controller = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(),
          body:
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "email",
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
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
              var forgotpassword2 = forgotpassword2Controller.text.toString();

              Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  ForgotPassword2(forgotpassword2: forgotpassword2,)));


            }, child: Text("Continue", style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
            style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                elevation: 0
            ),

          ),
        )),
        ],
    ),
      ),

    );
  }
}
