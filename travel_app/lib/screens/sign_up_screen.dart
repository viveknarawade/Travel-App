import 'package:flutter/material.dart';
import 'package:travel_app/screens/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  
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
              "Sign up now"
              ,style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "Please fill the details and create account",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
                 SizedBox(height: 20,),
            _buildEmailTextField(hintText: "Name"),
           SizedBox(height: 20,),
            _buildEmailTextField(hintText: "Email"),
                 SizedBox(height: 20,),
            _buildPasswordTextField(hintText: "Password"),     SizedBox(height: 20,),
        
        Row(
          children: [
              Text("Password must be 8 character",
            style: TextStyle(
              color: Colors.grey,
            ),),
            Spacer(),
          
          ],
        ),
             SizedBox(height: 23,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginScreen(),),);
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
                  "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
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