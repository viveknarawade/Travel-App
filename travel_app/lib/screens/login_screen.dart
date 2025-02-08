import 'package:flutter/material.dart';
import 'package:travel_app/screens/home_screen.dart';

import 'sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

bool visible = true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        
            Spacer(),
            Text(
              "Sign in now"
              ,style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "Please sign in to continue our app",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
                 SizedBox(height: 20,),
            _buildEmailTextField(hintText: "Email"),
                 SizedBox(height: 20,),
            _buildPasswordTextField(hintText: "Password"),     SizedBox(height: 20,),
        
        Row(
          children: [
            Spacer(),
            Text("forgot password?",
            style: TextStyle(
              color: Color.fromRGBO(13, 110, 253, 1),
            ),),
          ],
        ),
             SizedBox(height: 23,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                  return HomeScreen();
                },),);
              },
              child: Container(
                  alignment: Alignment.center,
                  height: 56,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(13, 110, 253, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                  "Sign in",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
            ),
                   SizedBox(height: 20,),
        
              Text("Don't have an account?"),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return SignUpScreen();
                  },),);
                },
                child: Text("Sign up",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(13, 110, 253, 1),
                ),),
              ),
        Spacer(),
        
              Row(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [_buildImage(img:"assets/fb.png"),
              SizedBox(width: 20,),
              _buildImage(img:"assets/insta.png"),
                   SizedBox(width: 20,),
              _buildImage(img:"assets/twiter.png"),],),
             SizedBox(height: 70,),
        
        
          ],
        ),
      ),
    );
  }
_buildImage({required String img}) {

  return Image.asset(img, height: 60, width: 60,fit: BoxFit.contain,);
}



Widget  _buildEmailTextField({required String hintText}) {
    return Container(

      
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
      
              decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          contentPadding: EdgeInsets.all( 16),
        ),
      ),
    );
  }
  Widget  _buildPasswordTextField({required String hintText}) {
    return Container( 
      
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        obscureText: visible,
        
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          contentPadding: EdgeInsets.all(16),
      
          suffixIcon: IconButton(
      
            onPressed: (){
              setState(() {
                
                visible = !visible;
      
              });
            },
            icon: (visible)?Icon(Icons.visibility):Icon(Icons.visibility_off),
          ),
        
        ),
      ),
    );
  }
}