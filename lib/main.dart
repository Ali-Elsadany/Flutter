/*
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'First App For Ali Elsadany'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'package:flutter_test_project/BussinsCardScreen.dart';

import 'Task.dart';

void main() {
  runApp(MaterialApp(
    title: 'route',
    home: FirstScreenTask(),
  ));
  //runApp(const SecondScreen());
  //runApp(FirstScreen());
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }

}

class MyApp extends StatefulWidget {
  @override
  content createState() => content();
}

  class content extends State<MyApp>{
    final formKey = GlobalKey<FormState>();
    final forEmail = TextEditingController();
    final forPass = TextEditingController();
    String erorr = '';
    bool isVis = true;
    bool emailCorrect = false;


    void login(){
      String email = forEmail.text;
      String password = forPass.text;
      if(email == 'flutter@gmail.com' && password == 'upacademy') {
        //Navigator.push(
            //context, MaterialPageRoute(builder: (context) => SecondScreen()));
      }
      else {
        setState(() {
          erorr = '* Invalid Email and Password *';
        });
      }
      if(formKey.currentState!.validate()){
        print('data valid');
      }
    }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //bool emailValid = RegExp('flutter@gmail.com').hasMatch(value);
            appBar: AppBar(
              leading: Icon(Icons.table_rows),
              centerTitle: true,
              title: Text('Login'),
              actions: [Icon(Icons.account_circle_sharp)],
              backgroundColor: Colors.black,
            ),
            backgroundColor: Colors.grey[300],
            body: SafeArea(
              child: Center(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Text('Please Enter the email and password',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    SizedBox(height: 20,),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                        controller: forEmail,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail),
                          hintText: 'Email',
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: emailCorrect == false ? Colors.red : Colors.green),borderRadius:BorderRadius.circular(20)
                          ),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        labelText: 'Email',
                        ),
                    validator: (value){
                        if(!value!.contains('@gmail.com')){
                          return 'Email not Valid';
                        }
                        return null;
                    },



                    //validator: (String){
                        //bool emailValid = RegExp('ali').hasMatch(String!);
                        //if(!emailValid){
                         // return 'Enter Valid Email';
                       // }
                    //},

                    ),



                    SizedBox(height: 20,),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                        controller: forPass,
                        obscureText: isVis,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Password',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepOrange),
                            borderRadius: BorderRadius.circular(20)),
                          labelText: 'Password',
                            //suffixIcon: Icon(Icons.visibility),
                          suffixIcon: IconButton(
                            onPressed: (){setState(() {
                              isVis = !isVis;
                              });
                            },
                            icon: isVis ? Icon(Icons.visibility_off) : Icon(Icons.visibility ),
                          ),
                        ),




                     // validator: (value) {
                       // bool emailValid = RegExp('ali').hasMatch(value!);
                       // if (!emailValid) {
                        //  return 'Enter Valid Email';
                      //  }
                    //  }
                      ),
                    SizedBox(height: 30,),


                    ElevatedButton(
                        onPressed:
                        login,
                           child: Text('Login')),
                    SizedBox(height: 10,),
                    Text(erorr,style: TextStyle(color: Colors.red),),
                          ],
                          ),

                         // Navigator.push(context, MaterialPageRoute(
                             // builder: (context) => SecondScreen()));


                          //var checkPass = forPass.text;
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen() ));






                ),
              ),

            );



    }

  }





