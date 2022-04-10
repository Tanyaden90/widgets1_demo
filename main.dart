import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(
            color: const Color(0xffde9e9e), width: 2));
    const linkTextStyle = TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xFF2A8692)
    );
    return MaterialApp(
      home: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/pexels-aleksandar-pasaric-1527934.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            child: Column(children: [
              SizedBox(height: 60,),
              const SizedBox(width: 110, height: 84, child: Image(image: AssetImage('assets/dart-logo.png')),),
              SizedBox(height: 20,),
              Text('Введите логин в виде 10 цифр номера телефона',
                style: TextStyle(fontSize: 16, color: Color.fromRGBO(
                    0, 0, 0, 0.6)),),
              SizedBox(height: 20,),
              const SizedBox(width: 224,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xff999da1),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: 'Телефон',
                  ),
                ),
              ),
              SizedBox(height: 20,),
              const SizedBox(width: 224,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xff548db1),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: 'Пароль',
                  ),
                ),
              ),
              SizedBox(height: 28,),
              SizedBox(width: 154, height: 42, child:
              ElevatedButton(onPressed: () {},
                  child: Text('Войти'),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF063150),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(36.0),
                      )
                  )
              )
              ),
              SizedBox(height: 32,),
              InkWell(child: const Text('Регистрация', style: linkTextStyle,),
                  onTap: () {} ),

              SizedBox(height: 20,),
              InkWell(child: const Text('Забыли пароль?', style: linkTextStyle,),
                  onTap: () {} ),
            ],),
          )
      ),
    );
  }
}
