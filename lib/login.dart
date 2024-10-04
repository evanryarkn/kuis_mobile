import 'package:flutter/material.dart';
import 'package:kuis_mobile/Home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _Loginpage();
}

class _Loginpage extends State<LoginPage> {
  String username = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(backgroundColor: Colors.cyan,
        title: const Text('Login Page', style: TextStyle(color: Colors.black)),
      ),

      body: Padding(padding: const EdgeInsets.only(top: 40),
        child: SizedBox(
          height:600,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Image(image: AssetImage('assets/upnLogo.png')),
        
          
                TextField(
                  onChanged: (value) {
                    setState(() {
                      username = value;
                    });
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: 'Username',
                    ),
                ),
                TextField(
                  obscureText: true,
                   onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: 'Password',
                    ),
                ),
        
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.blue),
                      foregroundColor: WidgetStatePropertyAll(Colors.white),
                    ),
                    onPressed: (){
                      if (username=='panry' && password=='panry123' ) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Login Berhasil!'),backgroundColor: Color.fromARGB(255, 57, 199, 62),));
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage(username: username,)));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Login Gagal!'),backgroundColor: Color.fromARGB(255, 210, 62, 51),));
                        
                      }
                    }, 
                    child: const Text('Login', style: TextStyle(fontSize: 20),)))
        
              ],
            ),
          ),
        ),
      ),

    );
  }
}