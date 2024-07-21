import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      title: 'Streamlined Fish Ordering',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Streamlined Fish Ordering",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            backgroundColor: Colors.black,
          ),
          body: Expanded(
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Image.asset(
                        'assets/background.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                        child: Container(
                          width: double.infinity * 0.9,
                          color: Colors.black26,
                          alignment: Alignment.center,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: double.infinity,
                                    height: 300,
                                    child: Image.asset(
                                      'assets/Logo.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  const Text(
                                    "Welcome Back!",
                                    style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    "Documenting is Organizing!!",
                                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 50, top: 20, right: 50),
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              "Username",
                                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                          TextField(
                                             controller: _usernameController,
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              labelText: 'Username',
                                              prefixIcon: Icon(Icons.quick_contacts_mail),
                                              suffixIcon: Icon(Icons.check),
                                            ),
                                          ),
                                          const SizedBox(height: 20), // Add some spacing between the fields
                                          const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              "Password",
                                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                          TextField(
                                            controller: _passwordController,
                                            obscureText: _obscureText,
                                            decoration: InputDecoration(
                                              border: const OutlineInputBorder(),
                                              labelText: 'Password',
                                              prefixIcon: const Icon(Icons.lock),
                                              suffixIcon: IconButton(
                                                icon: Icon(
                                                  _obscureText ? Icons.visibility : Icons.visibility_off,
                                                ),
                                                onPressed: _toggleVisibility,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: TextButton(onPressed: (){}, child: const Text("Forgot Password?"))
                                          ),
                                          const SizedBox(height: 20),
                                          ElevatedButton(
                                            onPressed: (){},
                                            child: const Text('Sign In'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          
                        ),
                      ),
                    ),
                  ],
                ),
              ),
        ),
      ),
    );
  }
}
