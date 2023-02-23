import 'package:email_validator/email_validator.dart';
import 'package:finniu/constants/colors.dart';
import 'package:finniu/services/share_preferences_service.dart';
import 'package:finniu/widgets/fonts.dart';
import 'package:finniu/widgets/scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  get emailController => null;

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldReturnLogo(
        body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(children: [
              Row(children: [
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/privacy/privacy.png',
                  width: 90,
                  height: 90,
                ),
                // SizedBox(width: 10),
                Text(
                  "Privacidad",
                  style: TextStyle(fontSize: 24, color: Color(primaryDark), fontWeight: FontWeight.bold),
                )
              ]),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    width: 46.48,
                    height: 34.87,
                    decoration: BoxDecoration(
                      color: Color(primaryDark),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image.asset(
                      'assets/privacy/key.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Contraseñas", style: TextStyle(fontSize: 14, color: Color(primaryDark), fontWeight: FontWeight.bold)),
                ]),
              ),
              Container(
                height: 3,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(gradient_secondary_option),
                      width: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Visualizacion de contraseña",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Color(blackText),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  const Spacer(),
                  const SizedBox(width: 5),
                  FlutterSwitch(
                    width: 29,
                    height: 16,
                    value: Preferences.isDarkMode,
                    inactiveColor: const Color(primaryDark),
                    activeColor: const Color(primaryLight),
                    inactiveToggleColor: const Color(primaryLight),
                    activeToggleColor: const Color(primaryDark),
                    onToggle: (value) {},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    width: 184,
                    child: Text(
                      "Mostrar caracteres brevemente mientras escribes",
                      style: TextStyle(
                        fontSize: 10,
                        color: Color(blackText),
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 13),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Cambio de contraseña",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(blackText),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 241,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(grayText3),
                ),
                child: TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Este dato es requerido';
                    }
                    if (EmailValidator.validate(value) == false) {
                      return 'Ingrese un contraseña válido';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    // emailController.text = value.toString();
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Escriba su contraseña actual',
                    label: Text('Contraseña actual'),
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: Color(primaryDark),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 241,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(grayText3),
                ),
                child: TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Este dato es requerido';
                    }
                    if (EmailValidator.validate(value) == false) {
                      return 'Ingrese una contraseña válido';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    // emailController.text = value.toString();
                  },
                  decoration: const InputDecoration(
                    hintText: 'Escriba su nueva contraseña',
                    label: Text('Nueva contraseña'),
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: Color(primaryDark),
                    ),
                  ),
                ),
              ),
              // Padding(
              //     padding: const EdgeInsets.all(0.0),
              //     child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    width: 46.48,
                    height: 34.87,
                    decoration: BoxDecoration(
                      color: Color(primaryDark),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image.asset(
                      'assets/privacy/lock-circle.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Administrador de permisos", style: TextStyle(fontSize: 14, color: Color(primaryDark), fontWeight: FontWeight.bold)),
                ]),
              ),
              Container(
                height: 3,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(gradient_secondary_option),
                      width: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Permiso de ubicacion actual",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Color(blackText),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  const Spacer(),
                  const SizedBox(width: 5),
                  FlutterSwitch(
                    width: 29,
                    height: 16,
                    value: Preferences.isDarkMode,
                    inactiveColor: const Color(primaryDark),
                    activeColor: const Color(primaryLight),
                    inactiveToggleColor: const Color(primaryLight),
                    activeToggleColor: const Color(primaryDark),
                    onToggle: (value) {},
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    width: 184,
                    child: Text(
                      "Permiso tu ubicacion actual mientras la app esta en uso",
                      style: TextStyle(
                        fontSize: 10,
                        color: Color(blackText),
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Permiso de acceso a tu galeria",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Color(blackText),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  const Spacer(),
                  const SizedBox(width: 5),
                  FlutterSwitch(
                    width: 29,
                    height: 16,
                    value: Preferences.isDarkMode,
                    inactiveColor: const Color(primaryDark),
                    activeColor: const Color(primaryLight),
                    inactiveToggleColor: const Color(primaryLight),
                    activeToggleColor: const Color(primaryDark),
                    onToggle: (value) {},
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    width: 184,
                    child: Text(
                      "Visualizar directamente tus fotos de tu galeria mientras la app esta en uso ",
                      style: TextStyle(
                        fontSize: 10,
                        color: Color(blackText),
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ])));
  }
}
