import 'package:finniu/constants/colors.dart';
import 'package:finniu/presentation/providers/settings_provider.dart';
import 'package:finniu/widgets/buttons.dart';
import 'package:finniu/widgets/graphics.dart';
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
        ],
      ),
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
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
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 210,
              child: Text(
                textAlign: TextAlign.center,
                'Rentabilidad prioriza la estabilidad generando una rentabilidad moderada.Si recién empiezas a invertir, este plan es perfecto para ti.',
                style: TextStyle(
                  height: 1.5,
                  color: currentTheme.isDarkMode
                      ? const Color(whiteText)
                      : const Color(primaryDark),
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const LineReportCalculatorWidget(
              initialAmount: 550,
              finalAmount: 583,
              revenueAmount: 33,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () => showDialog<String>(
                      barrierColor: Colors.transparent,
                      context: context,
                      builder: (BuildContext context) => ConstrainedBox(
                        constraints: const BoxConstraints(),
                        child: AlertDialog(
                          backgroundColor: const Color(primaryLightAlternative),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          content: Container(
                            height: 200,
                            width: 228,
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 18, bottom: 18),
                                    child: IconButton(
                                      alignment: Alignment.bottomRight,
                                      icon: const Icon(Icons.close),
                                      color: const Color(blackText),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ),
                                ),
                                const Text(
                                  'Este 5% es la tributacion correspondiente por renta de 2da categoria(inversiones).Aplica sobre tus intereses ganados. ',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 14,
                                    height: 1.8,
                                    color: Color(blackText),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Declaración a la Sunat 5%',
                          style: TextStyle(
                            fontSize: 14,
                            height: 1.5,
                            color: currentTheme.isDarkMode
                                ? const Color(whiteText)
                                : const Color(blackText),
                          ),
                        ),
                        ImageIcon(
                          const AssetImage('assets/icons/questions.png'),
                          size: 20,
                          color: currentTheme.isDarkMode
                              ? const Color(primaryLight)
                              : const Color(primaryDark),
                        ),
                        const SizedBox(width: 5),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 390,
              height: 150,
              // padding: const EdgeInsets.all(20),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    width: 330,
                    height: 110,
                    decoration: BoxDecoration(
                      color: currentTheme.isDarkMode
                          ? const Color(backgroundColorDark)
                          : const Color(whiteText),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: const Color(gradient_secondary_option),
                        width: 2,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text(
                            "Fecha estimada de tu retorno si empiezas a invertir desde hoy.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 12,
                              height: 1.5,
                              color: currentTheme.isDarkMode
                                  ? const Color(whiteText)
                                  : const Color(blackText),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          "20 de Diciembre",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: currentTheme.isDarkMode
                                ? const Color(primaryLight)
                                : const Color(primaryDark),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 35,
                    left: -0,
                    child: SizedBox(
                      height: 81,
                      width: 86,
                      child: Image.asset(
                        "assets/images/calendar.png",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 224,
              height: 50,
              child: TextButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all<double>(
                      4), // Altura de la sombra

                  shadowColor: MaterialStateProperty.all<Color>(Colors.grey),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/my_investment');
                },
                child: const Text(
                  'Comenzar a invertir',
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
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
