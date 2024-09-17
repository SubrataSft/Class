import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/":(context) => const HomeScreen(),
        "/Setting":(context)=> const SettingScreen(),
        "/Profile":(context)=> const ProfileScreen( ),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("home"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, "/Setting");
            }, child:const Text("Setting",)),
            ElevatedButton(onPressed: () {
              Navigator.pushReplacementNamed(context, "/Profile",arguments:45);
            }, child:const Text("Profile")),
          ],
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args =ModalRoute.of(context)?.settings.arguments as int;
    print(args);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, "/", (route)=>false);
            }, child: Text("Home")),
            ElevatedButton(onPressed: () {}, child: Text("Setting")),
          ],
        ),
      ),
    );
  }
}

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: Text("Profile")),
            ElevatedButton(onPressed: () {}, child: Text("Home")),
          ],
        ),
      ),
    );
  }
}
