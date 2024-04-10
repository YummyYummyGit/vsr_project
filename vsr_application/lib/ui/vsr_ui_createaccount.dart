// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:vsr_application/repositories/vsr_db_connection.dart';
import 'package:vsr_application/ui/vsr_ui_home.dart';

class RegisterElements extends StatefulWidget {
  const RegisterElements({Key? key}) : super(key: key);

  @override
  RegisterElementsState createState() => RegisterElementsState();
}

class RegisterElementsState extends State<RegisterElements> {
  final DatabaseConnection dbConnection = DatabaseConnection();
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _apellidoPController = TextEditingController();
  final TextEditingController _apellidoMController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          /* Name Field */
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
            child: TextFormField(
              controller: _nombreController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.chevron_right_rounded),
                border: OutlineInputBorder(),
                labelText: 'Nombre',
                hintText: 'Darío',
                helperText: 'Introduzca su Nombre',
              ),
            ),
          ),
          /* First Name Field */
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
            child: TextFormField(
              controller: _apellidoPController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.chevron_right_rounded),
                border: OutlineInputBorder(),
                labelText: 'Apellido Paterno',
                hintText: 'Chávez',
                helperText: 'Introduzca su Apellido Paterno',
              ),
            ),
          ),
          /* Second Name Field */
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
            child: TextFormField(
              controller: _apellidoMController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.chevron_right_rounded),
                border: OutlineInputBorder(),
                labelText: 'Apellido Materno',
                hintText: 'Ibarra',
                helperText: 'Introduzca su Apellido Materno',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.blueAccent,
                side: const BorderSide(
                  color: Colors.blueAccent,
                ),
              ),
              child: const Text('Crear', style: TextStyle(color: Colors.black)),
              onPressed: () {
                _saveUserData();
              },
            ),
          ),
        ],
      ),
    );
  }

  void _saveUserData() async {
    Map<String, dynamic> userData = {
      'nombre': _nombreController.text,
      'apellido_p': _apellidoPController.text,
      'apellido_m': _apellidoMController.text,
    };

    print('Inserting user data: $userData');

    await dbConnection.insertUser(userData);

    print('User data inserted successfully');

    // ignore: use_build_context_synchronously
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomeElements()));
  }
}
