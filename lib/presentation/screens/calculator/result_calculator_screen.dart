
import 'package:finniu/constants/colors.dart';
import 'package:finniu/presentation/providers/settings_provider.dart';
import 'package:finniu/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';


class ResultCalculator extends HookConsumerWidget {
  const ResultCalculator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTheme = ref.watch(settingsNotifierProvider);
    final themeProvider = ref.watch(settingsNotifierProvider);
   
    return Scaffold(
            backgroundColor: currentTheme.isDarkMode
                                  ? const Color(backgroundColorDark)
                                  : const Color(whiteText),
      appBar: AppBar(
  
          backgroundColor: Theme.of(context).backgroundColor,
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
       
          bottomNavigationBar: const BottomNavigationBarHome(),
      
      body: SingleChildScrollView(
        child: Column(   
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              width: 300,
              height: 40,
              child: Text(
                'Plan Origen',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(Theme.of(context).colorScheme.secondary.value),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // height: 100,
                  // width: MediaQuery.of(context).size.width * 0.90,
                  // width: double.maxFinite,
                  alignment: Alignment.center,
        
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const CircularImageSimulation(),
                      Positioned(
                        right: 125,
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 59.49,
                            height: 31.15,
                            // padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: currentTheme.isDarkMode
                                  ? const Color(primaryLight)
                                  : const Color(primaryDark),
                              border: Border.all(
                                width: 4,
                                color: currentTheme.isDarkMode
                                    ? const Color(primaryLight)
                                    : const Color(primaryDark),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            // color: Color(primaryDark),
        
                            child: Column(
                              children: [
                                Center(
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    '6%',
                                    style: TextStyle(
                                      color: currentTheme.isDarkMode
                                          ? const Color(primaryDark)
                                          : const Color(primaryLight),
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Text(
                                  textAlign: TextAlign.center,
                                  'Rentabilidad',
                                  style: TextStyle(
                                    color: currentTheme.isDarkMode
                                        ? const Color(blackText)
                                        : const Color(whiteText),
                                    fontSize: 7,
                                  ),
                                ),
                                                                             
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
               
              ],
        ),
             const SizedBox(height: 15,),
             
         Container(width: 210,
           child: Text(
                                    textAlign: TextAlign.center,
                                    'Rentabilidad prioriza la estabilidad generando una rentabilidad moderada.Si recien empiezas a invertir, este plan es perfecto para ti.',
                                    style: TextStyle(
                                      height: 1.5,
                                      color: currentTheme.isDarkMode
                                          ? const Color(whiteText)
                                          : const Color(primaryDark),
                                      fontSize: 12,
                                    ),
                                  ),
         ),
             
             const SizedBox(height: 20,),
             Padding(
         padding: const EdgeInsets.all(10.0),
         child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Container(
          width:   136,
          height: 81,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(primaryLight),
            boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
              'Inversion inicial',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10,
                color: Color(blackText),
              ),
            ),
            Text(
              'S/550',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(primaryDark),
              ),
            ),
            
            ],
          ),
           ),
           const SizedBox(width: 17),
           Container(
          width:  136,
          height:  81,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(secondary),
            boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
              'En 6 meses tendrias',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 10,
                color: Color(blackText),
              ),
            ),
            Text(
              'S/583',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(primaryDark),
              ),
            ),
            
          
           
           ],
          ),
           ),
        ],
             ),
             ),
           const SizedBox(height: 5,),   
        
        Container(
        decoration: BoxDecoration(
          color: currentTheme.isDarkMode
                                  ? const Color(primaryDarkAlternative)
                                  : const Color(primaryLightAlternative),
          borderRadius: BorderRadius.circular(10),
        ),
        width: 320,
        height: 210,
        child: 
        
        Column(
          children: [Align
          
          (alignment: Alignment.centerRight, child: MySelect()),
            Row(mainAxisAlignment: MainAxisAlignment.center,
  
              children: [
                Container(alignment: Alignment.center,

            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.start,
          
              children: [
                Text("S/560",style: TextStyle(fontSize: 11,color: currentTheme.isDarkMode
                                      ? const Color(whiteText)
                                      : const Color(blackText),fontWeight: FontWeight.bold ),),
               
                  const SizedBox(height: 60),
                Text("S/530",style: TextStyle(fontSize: 11,color:currentTheme.isDarkMode
                                      ? const Color(whiteText)
                                      : const Color(blackText),fontWeight: FontWeight.bold ),),
               
                 const SizedBox(height: 60),
                Text("S/515",style: TextStyle(fontSize: 11,color:currentTheme.isDarkMode
                                      ? const Color(whiteText)
                                      : const Color(blackText),fontWeight: FontWeight.bold),),
               
              
                
            
               
            
            
              ]),
                ),
                const SizedBox(width: 20,),
     
             
                
            
            GraphContainerWidget(currentTheme: currentTheme),],
            ),
          ],
        )
        ,),
        
        
]
        ,),
        ),
        );
   
    
  }
}

class GraphContainerWidget extends StatelessWidget {
  const GraphContainerWidget({
    super.key,
    required this.currentTheme,
  });

  final SettingsProviderState currentTheme;

  @override
  Widget build(BuildContext context) {
    return Container(alignment:Alignment.bottomRight ,
      // padding: const EdgeInsets.all(10.0),
      child: Row(mainAxisAlignment:MainAxisAlignment.center,
      
        children: [
          Container(
            width: 50,
            height: 155,
            decoration: BoxDecoration(
              color: currentTheme.isDarkMode
                                ? const Color(primaryDark)
                                : const Color(primaryLight),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
         const SizedBox(width: 35,),
          Container(
            width: 50,
            height: 155,
            decoration: BoxDecoration(
              color: currentTheme.isDarkMode
                                ? const Color(primaryDark)
                                : const Color(primaryLight),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
         
         const SizedBox(width: 35,),
          Container(
            width: 50,
            height: 155,
            decoration: BoxDecoration(
              color: currentTheme.isDarkMode
                                ? const Color(primaryDark)
                                : const Color(primaryLight),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}

class _calculatePercentage {
}

class CircularImageSimulation extends ConsumerWidget {
  const CircularImageSimulation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final themeProvider = ref.watch(settingsNotifierProvider);
    return Container(
    alignment: Alignment.center,
      child: CircularPercentIndicator(
        circularStrokeCap: CircularStrokeCap.round,
        radius: 75.0,
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
              Container(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  child: Image.asset(
                    'assets/result/money.png',
                    width: 55,
                    height: 60,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "6 meses",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: themeProvider.isDarkMode
                        ? const Color(primaryLight)
                        : const Color(primaryDark)),
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




class MySelect extends StatefulWidget {
  @override
  _MySelectState createState() => _MySelectState();
}

class _MySelectState extends State<MySelect> {
  String dropdownValue = 'Opción 1';

  @override
  Widget build(BuildContext context) {
    return Container(width:102,
      child: DropdownButton<String>(
        value: dropdownValue,
       dropdownColor: const Color(primaryDark),
        icon: const Icon(Icons.arrow_drop_down_outlined),
        iconSize: 16,
        // elevation: 16,
        style: const TextStyle(color:Color(whiteText),fontSize:11),
        underline: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),  
          border: Border.all(color:const Color (primaryLightAlternative))),
          // height: 2,
      
        ),
        onChanged: (newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>['Opción 1', 'Opción 2', 'Opción 3', 'Opción 4']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Center(
              child: Container(width: 83,height: 22,
                    decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: const Color(primaryDarkAlternative)),
              color: Color (primaryDarkAlternative),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal:10),
                    child: Center(
                    child:Text(value),
                  ),
            ),
          ));
        }).toList(),
      ),
    );
  }
}