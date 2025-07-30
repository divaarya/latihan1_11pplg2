import 'package:flutter/material.dart';
import 'register_page.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String statusLogin= "login status";
  TextEditingController txtUsename = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome to our application",
            style: TextStyle(
              fontSize: 20,
              color: Colors.cyanAccent,
              fontWeight: FontWeight.bold
            ),),
            
            Text("Please fill username and password below"),

            Center(
              child: Container(
                width: 100,
                child: Image.asset('assets/logotim.png'),
              ),
            ),

           
            Container(
              margin: EdgeInsets.only(top: 10,bottom: 10),
              child: TextField(
              controller:  txtUsename,
              decoration: InputDecoration(
                labelText: "UserName",
                border: OutlineInputBorder()
              ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10,bottom: 10),
              child: TextField(
              controller: txtPassword,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
              
              ),
            ),
            
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              child: OutlinedButton(onPressed: () {
                if(txtUsename.text == "arya" && txtPassword.text == "123"){
                  setState(() {
                    statusLogin = "sukses login";
                  });
                }
                else{
                  setState(() {
                    statusLogin = "gagal login";
                  });
                }
                print("status " + statusLogin);

              },
               child: Text('Login')),
              ),
              Text(statusLogin),

              TextButton(
                onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegisterPage()),
               );
             },
          child: Text("Belum punya akun? Register di sini"),
         ),


          ],
          
        ),
      ),
    );
  }
}