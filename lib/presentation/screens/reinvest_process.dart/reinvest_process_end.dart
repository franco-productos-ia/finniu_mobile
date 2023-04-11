import 'package:finniu/constants/colors.dart';
import 'package:finniu/presentation/providers/settings_provider.dart';
import 'package:finniu/widgets/custom_select_button.dart';
import 'package:finniu/widgets/scaffold.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
class ReinvestEnd extends HookConsumerWidget{
  const ReinvestEnd({super.key});

  @override
 Widget build(BuildContext context,WidgetRef ref) {

        final mountController = useTextEditingController();
         final termController = useTextEditingController();
       final themeProvider = ref.watch(settingsNotifierProvider);
   return CustomScaffoldReturnLogo(
      body:  Padding(
        padding: const EdgeInsets.all(32.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
            
              
              SizedBox(width: 160,
               child: Text(textAlign:TextAlign.justify,
                 'Reinvierte tu inversión ',
                 style: TextStyle(
                   color: 
                    themeProvider.isDarkMode
                  ? const Color(primaryLight)
                  : const Color(primaryDark),
                   fontSize: 24,
                   fontWeight: FontWeight.bold,
                 ),
               ),
                  ),
        
            
             const SizedBox(height: 25,),
             Padding(
               padding: const EdgeInsets.only(right: 37),
               child: SizedBox(
                  width: 320,
                  height: 102,
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 185,
                          height: 85,
                          padding:  const EdgeInsets.only(
                            right:10,
                         
                            top: 20,
                          
                          ),
                          decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                            color:
                                 const Color(secondary),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: const Color(secondary),
                            ),
                          ),
                          child: Column(
                            children: const [
                              Text(textAlign: TextAlign.center,
                             
                                style: TextStyle(
                                  fontSize: 14,
                                  color: 
                                       Color(blackText),
                                  fontWeight: FontWeight.w500,
                                ),
                                "Tu inversión generada",
                              ),
                           Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 24,
                                  color: 
                                       Color(primaryDark),
                                  fontWeight: FontWeight.bold,
                                ),
                                "S/583",
                              ), ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 3,
                        left: 35,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 88,
                            width: 86,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/money3.png"),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
             ),
              SizedBox(
                width: 320,
                height: 102,
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 252,
                        height: 84,
                        padding:  const EdgeInsets.only(
                          left:20,
                       
                          top: 20,
                        
                        ),
                        decoration: BoxDecoration(
                          color:
                           themeProvider.isDarkMode
                  ?  Colors.transparent
                  : const Color(whiteText),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: const Color(gradient_secondary_option),
                          ),
                        ),
                        child: Column(
                          children:  [
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(textAlign: TextAlign.center,
                                                       
                                style: TextStyle(
                                  fontSize: 12,
                                  color: 
                                 themeProvider.isDarkMode
                  ? const Color(whiteText)
                  : const Color(primaryDark),
                                  fontWeight: FontWeight.w500,
                                ),
                                "Seleccionaste la opción reinvertir tu capital + intereses",
                              ),
                            ),
                         ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 3,
                     left: 1,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 88,
                          width: 86,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/plane.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ), 
           
           Center(
             child: Column(
               children: [
                 SizedBox(
                      width: 224,
                      child: TextFormField(
                        controller: mountController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Este dato es requerido';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          // nickNameController.text = value.toString();
                        },
                        decoration: const InputDecoration(
                          hintText: 'Escriba su monto de ganancia',hintStyle: TextStyle(color:Color(grayText),fontSize: 11),
                          label: Text("Monto de ganancia"),
                        ),
                      ),
                    ),
                
                const SizedBox(height: 10,),
                
                 Text(textAlign: TextAlign.center,
                             
                                style: TextStyle(
                                  fontSize: 12,
                                  color: 
                                     themeProvider.isDarkMode
                  ? const Color(whiteText)
                  : const Color(blackText),
                                  fontWeight: FontWeight.w500,
                                ),
                                "Plan recomendado por el monto",
                              ),],
             ),
           ),
           
           
           
           
           
            Center(
              child: Container(
                  // alignment: Alignment.topRight,
                  width: 224,
                  height: 99,
                 
                  margin: const EdgeInsets.only(
                    top: 30,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(cardBackgroundColorLight),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.transparent,
                        child: const Center(
                          child: SizedBox(
                            width: 80, // ancho deseado de la imagen
                            height: 80, // alto deseado de la imagen
                            child: Image(
                              image: AssetImage('assets/result/money.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          const Text(
                            'Plan Origen',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Color(primaryDark),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Image(
                  image: AssetImage('assets/icons/dollar.png'),
                  width: 12, // ancho deseado de la imagen
                  height: 12, // alto deseado de la imagen
                  color: Color(primaryDark), // color de la imagen si es necesario
                ),
                              Text(
                                'Monto minimo',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color(primaryDark),
                                  fontSize: 10,
                                  height: 1.5,
                                ),
                              ),
                              SizedBox(width: 5,),
                              Text(
                                'S/500',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color(primaryDark),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  height: 1.5,
                                ),
                              ),],
                          ),
                          const SizedBox(height: 6),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                               Image(
                  image: AssetImage('assets/icons/double_dollar.png'),
                  width: 21, // ancho deseado de la imagen
                  height: 21, // alto deseado de la imagen
                  color: Color(primaryDark), // color de la imagen si es necesario
                ),
                              Text(
                                'Retorno anual',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color(primaryDark),
                                  fontSize: 10,
                                  height: 1.5,
                                ),
                              ),
                                SizedBox(width: 5,),
                             Text(
                                '12 %',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color(primaryDark),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  height: 1.5,
                                ),
                              ), ],
                          ),
                        const SizedBox(height: 15),
                
                
                
                ],
                      ),
                   
                   
                
                   
                   
                   
                    ],
                  ),
                ),
            ),    
              
              const SizedBox(height: 15),
              Center(
                child: CustomSelectButton(
                  textEditingController: termController,
                  items: const ['6 meses', '1 año', '5 años'],
                  labelText: "Plazo",
                  hintText:"Seleccione su plazo de inversión" ,
                ),
              ),
                 SizedBox(height: 15,),
                  Center(
                    child: CustomSelectButton(
                                  textEditingController: termController,
                                  items: const ['BCP', 'Interbank','Scotiabank'],
                                  labelText: "Eleccion de Rentabilidad",
                                  hintText: "Seleccione su eleccion",
                                ),
                  ),
              SizedBox(height: 10,),
  Row(
    children: [
      Container(width: 136,height: 81,decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
        
        
        
        color: 
                                const Color(primaryLight), 
                      
                      
                      borderRadius: BorderRadius.circular(10)),
             child: Column(mainAxisAlignment: MainAxisAlignment.center,
               children: const [
                 Text( textAlign:TextAlign.center,
                        'Monto inicial',
                        style: TextStyle(
                          fontSize: 10,
                      
                          color:
                              Color(blackText),
                        ),
                            
                     ),
               Text( textAlign:TextAlign.center,
                        'S/583',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                      
                          color:
                               Color(blackText),
                        ),
                            
                     ), 
                  ],
             ),
           ),
SizedBox(width: 10,),
      Container(width: 136,height: 81,decoration: BoxDecoration(
        boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
        
        
        color: 
                                const Color(secondary), 
                      
                      
                      borderRadius: BorderRadius.circular(10)),
             child: Column(mainAxisAlignment: MainAxisAlignment.center,
               children: const [
                 Text( textAlign:TextAlign.center,
                        'En 6 meses tendrias',
                        style: TextStyle(
                          fontSize: 10,
                      
                          color:
                              Color(blackText),
                        ),
                            
                     ),
               Text( textAlign:TextAlign.center,
                        'S/617.983',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                      
                          color:
                               Color(blackText),
                        ),
                            
                     ), 
                  ],
             ),) ],
  ),
     
     const SizedBox(height: 20,),
      Center(
        child: SizedBox(
                            width: 224,
                            height: 50,
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/finance_screen2');
                              },
                              child: const Text(
                                'Reinvertir',
                              ),
                            ),
      
      
      
            ),
      ),
      
       
      
      
      ],
             ),
             ),
             ),
             );
           
 }
 }