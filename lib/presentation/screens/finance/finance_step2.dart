import 'package:finniu/constants/colors.dart';
import 'package:finniu/presentation/providers/settings_provider.dart';
import 'package:finniu/widgets/buttons.dart';
import 'package:finniu/widgets/custom_select_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:percent_indicator/percent_indicator.dart';

class FinanceStep2 extends HookConsumerWidget {
  final fieldValues = <String, dynamic>{
  
  };

  @override
  Widget build(BuildContext context, WidgetRef ref) {
 
    final themeProvider = ref.watch(settingsNotifierProvider);
    final currentTheme = ref.watch(settingsNotifierProvider);

    final namesController = useTextEditingController();
    final amountController = useTextEditingController();
    final incomeController = useTextEditingController();
  


    String mapControllerKey(String key) {
      if (key == 'names') {
        return namesController.text;
      } else if (key == 'docNumber') {
        return amountController.text;
      } else if (key == 'department') {
        return incomeController.text;
  
      } else {
        return '';
      }
    }

    return Scaffold(
    bottomNavigationBar: const BottomNavigationBarHome(),
       appBar: AppBar(
  
          backgroundColor:themeProvider.isDarkMode ? const Color(backgroundColorDark) : const Color(whiteText),
          elevation: 0,
          leading: themeProvider.isDarkMode
              ? const CustomReturnButton(
                  colorBoxdecoration: primaryDark,
                  colorIcon: primaryDark,
                )
              : const CustomReturnButton(),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 14.0),
              child: SizedBox(
                width: 70,
                height: 70,
                child: themeProvider.isDarkMode
                    ? Image.asset('assets/images/logo_small_dark.png')
                    : Image.asset('assets/images/logo_small.png'),
              ),
            ),
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                const SizedBox(
                  height: 25,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
              image: AssetImage('assets/images/finance.png'),
              width: 40, // ajusta el tamaño de la imagen según tus necesidades
              height: 40,
            ),        
                      Text(
                        'Mis finanzas',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 1.5,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: themeProvider.isDarkMode ? const Color(primaryLight) : const Color(primaryDark),
                        ),
                      ),
                
                  ],
                 ),
                 
                    Column(
                      children: [
                        Text(
                            'Ingresa tu ingreso mensual',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              height: 1.5,
                              fontSize: 14,
                   
                              color: themeProvider.isDarkMode ? const Color(whiteText) : const Color(blackText),
                            ),
                          ),
                      ],
                    ),
                 const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 224,
                  child: TextFormField(
                    controller: amountController,
                    key: const Key('amount'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Este dato es requerido';
                      }
                      return null;
                    },

          
                    decoration: const InputDecoration(
                      hintText: 'Ingrese el monto de sus ingreos',
                      label: Text("Monto"),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
               
               
                    Column(
                      children: [
                        SizedBox(width: 185,
                          child: Text(
                              'Elige cuanto de tus ingreso destinarias para invertir',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                height: 1.4,
                                fontSize: 14,
                                         
                                color: themeProvider.isDarkMode ? const Color(whiteText) : const Color(blackText),
                              ),
                            ),
                        ),
                      ],
                    ),
                 const SizedBox(height: 2,),
              
               Text(
               '',
               textAlign: TextAlign.left,
               style: TextStyle(
                 fontSize: 12,
                 height: 1.5,
                 color: currentTheme.isDarkMode
                     ? const Color(whiteText)
                     : const Color(blackText),
               ),
             ),
                     CustomSelectButton(
                     textEditingController: incomeController,
                     items: const ['De 10% a 15%', 'Entre 20% a 30%'],
                     labelText: "Seleccione su % de ingres",
                    
                   ),
             const SizedBox(height: 50,),

             
             Stack(
                    clipBehavior: Clip.none,
                    children: [
             const CircularFinanceSimulation(),

               Positioned(
                        right: 110,
                        bottom: 150,
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 110,
                            height: 50,
                            // padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: currentTheme.isDarkMode
                                    ? const Color(gradient_primary)
                                    : const Color(primaryLightAlternative),
                              border: Border.all(
                                width: 2,
                                color: currentTheme.isDarkMode
                                    ? const Color(primaryLight)
                                    : const Color(primaryDark),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            // color: Color(primaryDark),
                    

                            child: Column(
                              children: const [
                                Center(
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    'Si inviertes el 11% de tu monto',
                                    style: TextStyle(
                                      color: Color(blackText),
                                      fontSize: 8,
                                    ),
                                  ),
                                ),
                                Text(
                                  textAlign: TextAlign.center,
                                  'S/400',
                                  style: TextStyle(
                                    
                                    color:Color(primaryDark),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold
                                  ,),
                                ),
           ]
                ,),
                ),
                ),
                ),
                
                    ]
                    ,)
                             
                    ]
                    ,)
                    ,)
                    ,),
                    )
                    ,);
                }
                }
  

                class CircularFinanceSimulation extends ConsumerWidget {
  const CircularFinanceSimulation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final themeProvider = ref.watch(settingsNotifierProvider);
    return Container(
      margin: const EdgeInsets.only(right: 20.0),
      child: CircularPercentIndicator(
        circularStrokeCap: CircularStrokeCap.round,
        radius: 80.0,
        lineWidth: 10.0,
        percent: 0.5,
        center: CircleAvatar(
          radius: 50,
          backgroundColor: themeProvider.isDarkMode
              ? const Color(backgroundColorDark)
              : Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            
              const SizedBox(height: 8),
              Text(
                "S/4000",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: themeProvider.isDarkMode
                        ? const Color(whiteText)
                        : const Color(blackText)),
              ),
             Text(
                "Total de ingresos",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: themeProvider.isDarkMode
                        ? const Color(whiteText)
                        : const Color(blackText)),
              ),
    
            
            ],
          ),
        ),
        progressColor:
            Color(themeProvider.isDarkMode ? primaryLight : primaryDark),
        backgroundColor:
            Color(themeProvider.isDarkMode ? primaryDark : primaryLight),
        fillColor: themeProvider.isDarkMode
            ? const Color(backgroundColorDark)
            : Colors.white,
      ),
    );
  }
}
