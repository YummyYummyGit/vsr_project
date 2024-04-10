import 'package:flutter/material.dart';
import 'package:vsr_application/ui/vsr_ui_createaccount.dart';

/* Classes */

class HomeElements extends StatefulWidget {
  const HomeElements({Key? key}) : super(key: key);

  @override
  HomeElementsState createState() => HomeElementsState();
}

/* HomeElements */

class HomeElementsState extends State<HomeElements> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          /* Email Field */
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.account_circle),
                border: OutlineInputBorder(),
                labelText: 'Correo Electrónico',
                hintText: 'abc@vsr.com',
                helperText: 'Introduzca su Correo Electrónico',
              ),
            ),
          ),
          /* Password Field */
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.vpn_key),
                border: OutlineInputBorder(),
                labelText: 'Contraseña',
                hintText: '********',
                helperText: 'Introduzca su Contraseña',
              ),
            ),
          ),
          /* Login Button */
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent),
                child: const Text('Inciar Sesión',
                    style: TextStyle(color: Colors.white)),
                onPressed: () {},
              )),
          /* Register Button */
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.blueAccent,
                    side: const BorderSide(
                      color: Colors.blueAccent,
                    )),
                child: const Text('Crear Usuario',
                    style: TextStyle(color: Colors.black)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterElements()));
                },
              ))
        ],
      ),
    );
  }
}
