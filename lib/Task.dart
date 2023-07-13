
import 'package:flutter/material.dart';

import 'BussinsCardScreen.dart';

class FirstScreenTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Task(),
    );
  }

}

class Task extends StatefulWidget {
  @override
  contain createState() => contain();
}

class contain extends State<Task>{
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Please Enter The Following Requirement',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    SizedBox(height: 10,),

                    // Name

                  TextFormField(
                  keyboardType: TextInputType.name,
                  controller: nameController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: 'Name',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                    labelText: 'Name',
                  ),
                    validator: (value){
                    if(value!.isEmpty){
                      return 'Please Enter Your Name';
                    }
                    return null;
                    },
                  ),
                    SizedBox(height: 10,),

                    // Title

                    TextFormField(
                      keyboardType: TextInputType.text,
                      controller: titleController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.title),
                        hintText: 'Title',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        labelText: 'Title',
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Please Enter Your Title';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10,),

                    // Email

                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail),
                        hintText: 'Email',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        labelText: 'Email',
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Please Enter Your Email';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10,),

                    // Phone

                    TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: phoneController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        hintText: 'Phone',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        labelText: 'Phone',
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Please Enter Your Phone';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10,),
                    ElevatedButton(
                        onPressed:(){
                          if(formKey.currentState!.validate()) {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) =>
                                    SecondScreen(nameController.text, titleController.text, emailController.text, phoneController.text)));
    }
    },
                        //Navigator.push(
                            //context, MaterialPageRoute(builder: (context) => SecondScreen(nameController.text,titleController.text,emailController.text,phoneController.text)));},
                        child: Text('Login')),

    ],
    ),
              ),
            ),
    ),
    )
    );
  }
}