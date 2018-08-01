import 'package:flutter/material.dart';
import 'package:speedy_haaj_data/camera/CameraApp.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class CameraState extends State<CameraApp>{
  picker() async{
    print('Picker is called');
    File image = await ImagePicker.pickImage(source: ImageSource.camera);
    print(image.path);
  }

  @override
  Widget build (BuildContext context){
    return new MaterialApp(
      home: new Scaffold(appBar: AppBar(title: new Text('Image picker'),),
      body: new Container(child: new Center(child: new Text('No Image To Show'),
      ),
      ),
      floatingActionButton: new FloatingActionButton(onPressed: picker, child: new Icon(Icons.camera_alt ),),)
    );
  }
}