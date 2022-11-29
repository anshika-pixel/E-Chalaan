import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import '../login_signup/signup.dart' as signup;
import '../homepage/settings.dart';
import '../login_signup/logout.dart';
import '../globals.dart' as globals;

class Home extends StatefulWidget {
  createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  List<CameraDescription>? cameras; //list out the camera available
  CameraController? controller; //controller for camera
  // XFile? image; //for captured image

  @override
  void initState() {
    loadCamera();
    super.initState();
  }

  loadCamera() async {
    cameras = await availableCameras();
    if (cameras != null) {
      controller = CameraController(cameras![0], ResolutionPreset.max);
      //cameras[0] = first camera, change to 1 to another camera

      controller!.initialize().then((_) {
        if (!mounted) {
          return;
        }
        setState(() {});
      });
    } else {
      print("NO any camera found");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Capture Image from Camera"),
        backgroundColor: Colors.redAccent,
      ),
      drawer: MyDrawer(),
      body: Container(
          child: Column(children: [
        Container(
            height: 300,
            width: 400,
            child: controller == null
                ? Center(child: Text("Loading Camera..."))
                : !controller!.value.isInitialized
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : CameraPreview(controller!)),
        ElevatedButton.icon(
          //image capture button
          onPressed: () async {
            try {
              if (controller != null) {
                //check if contrller is not null
                if (controller!.value.isInitialized) {
                  //check if controller is initialized
                  globals.image =
                      await controller!.takePicture(); //capture image
                  setState(() {
                    //update UI
                  });
                }
              }
            } catch (e) {
              print(e); //show error
            }
          },
          icon: Icon(Icons.camera),
          label: Text("Capture"),
        ),
        Container(
          //show captured image
          padding: EdgeInsets.all(10),
          child: globals.image == null
              ? Text("No image captured")
              : Image.file(
                  File(globals.image!.path),
                  height: 250,
                ),
          //display captured image
        )
      ])),
    );
  }
}

class MyDrawer extends StatelessWidget {
  build(context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("user"),
            accountEmail: Text("user@gmail.com"),
            currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Text('T', style: TextStyle(color: Colors.black87))),
            decoration: new BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.purple, Colors.purple]),
            ),
          ),
          ListTile(
              leading: Icon(Icons.home),
              title: new Text("Home"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              }),
          ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {
                Navigator.pop(context);
              }),
          ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Settings()));
                print('alldone');
                ;
              }),
          ListTile(
              leading: Icon(Icons.power_settings_new),
              title: Text("Logout"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Logoutdialog()));
              }),
        ],
      ),
    );
  }
}
