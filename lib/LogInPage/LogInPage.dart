import 'package:dashboard/HomePage.dart';
import 'package:flutter/material.dart';




TextEditingController nameController = TextEditingController();
TextEditingController passwordController = TextEditingController();


class LogInPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Login Page'),
      centerTitle: true,
    ),
    body: Padding(

        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[

            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            FlatButton(
              onPressed: (){
                //forgot password screen
              },
              textColor: Colors.blue,
              child: Text('Forgot Password'),
            ),
            Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: Text('Login'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()
                        ),
                    );
                  },
                )),
            Container(
                child: Row(
                  children: <Widget>[
                    Text('Does not have account?'),
                    FlatButton(
                      textColor: Colors.blue,
                      child: Text(
                        'Sign in',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        //signup screen
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ))
          ],
        ))
  );
}