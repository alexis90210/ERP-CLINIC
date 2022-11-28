import 'package:clinic/Widget/Header.dart';
import 'package:clinic/Widget/LeftNav.dart';
import 'package:clinic/Widget/SmartDialog.dart';
import 'package:clinic/dashboard/Consultation.dart';
import 'package:clinic/dashboard/DossierDesPatients.dart';
import 'package:clinic/dashboard/GestionCaisse.dart';
import 'package:clinic/dashboard/GestionDesAgents.dart';
import 'package:clinic/dashboard/GestionDesMedecins.dart';
import 'package:clinic/dashboard/GestionDesPatients.dart';
import 'package:clinic/dashboard/GestionEmploiDuTemps.dart';
import 'package:clinic/dashboard/GestionSalaire.dart';
import 'package:flutter/material.dart';
import 'package:d_chart/d_chart.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 33, 35, 50),
      body: Row(
        children: [
          Container(
            width: 200,
            height: size.height,
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 42, 45, 62)),
            child: const LeftNav(),
          ),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Header(),
                    const SizedBox(
                      height: 30,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Wrap(
                              children: [
                                SizedBox(
                                  width: size.width <= 830
                                      ? size.width
                                      : size.width * .65,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 20),
                                        child: SizedBox(
                                          height: 50,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                                'TABLEAU DE BORD',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () => {
                                                  loadPage(
                                                      assetName:
                                                          'assets/Actions-list-add-user-icon.png',
                                                      title:
                                                          'Nouvelle Consultation',
                                                      context: context,
                                                      page: Consultation(),
                                                      size: size)
                                                },
                                                child: Ink(
                                                  height: 40,
                                                  width: 210,
                                                  decoration:
                                                      const BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10)),
                                                          color: Color.fromARGB(
                                                              255,
                                                              49,
                                                              75,
                                                              222)),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: const [
                                                      Icon(
                                                        Icons.add,
                                                        color: Colors.white,
                                                      ),
                                                      Text(
                                                        'Nouvelle Consultation',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Wrap(
                                        children: [
                                          BoxStats(
                                              size: size,
                                              color: Colors.green,
                                              label: 'Consultation',
                                              total: '12',
                                              asset:
                                                  'assets/Actions-list-add-user-icon.png'),
                                          BoxStats(
                                              size: size,
                                              color: Colors.blue,
                                              label: 'Patients',
                                              total: '15',
                                              asset:
                                                  'assets/People-Patient-Female-icon.png'),
                                          BoxStats(
                                              size: size,
                                              color: Colors.amber,
                                              label: 'Urgences',
                                              total: '15',
                                              asset:
                                                  'assets/ambulance-icon.png'),
                                          BoxStats(
                                              size: size,
                                              color: const Color.fromARGB(
                                                  123, 226, 12, 158),
                                              label: 'Hospitalisation',
                                              total: '2',
                                              asset: 'assets/plus-icon.png'),
                                          BoxStats(
                                              size: size,
                                              color: Colors.orange,
                                              label: 'Salle',
                                              total: '6',
                                              asset: 'assets/bedroom-icon.png'),
                                          BoxStats(
                                              size: size,
                                              color: Colors.purple,
                                              label: 'Pharmacie',
                                              total: '348',
                                              asset: 'assets/pill-3-icon.png'),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: size.width <= 830
                                      ? size.width
                                      : size.width * .21,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 42, 45, 62),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Personnel',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Center(
                                          child: SizedBox(
                                            height: 200,
                                            child: AspectRatio(
                                              aspectRatio: 4 / 5,
                                              child: DChartPie(
                                                data: const [
                                                  {
                                                    'domain': 'Flutter',
                                                    'measure': 28
                                                  },
                                                  {
                                                    'domain': 'React Native',
                                                    'measure': 27
                                                  },
                                                  {
                                                    'domain': 'Ionic',
                                                    'measure': 20
                                                  },
                                                  {
                                                    'domain': 'Cordova',
                                                    'measure': 15
                                                  },
                                                ],
                                                fillColor: (pieData, index) {
                                                  switch (pieData['domain']) {
                                                    case 'Flutter':
                                                      return Colors
                                                          .blue.shade300;
                                                    case 'React Native':
                                                      return Colors
                                                          .blue.shade500;
                                                    case 'Ionic':
                                                      return Colors
                                                          .blue.shade700;
                                                    default:
                                                      return Colors
                                                          .blue.shade900;
                                                  }
                                                },
                                                pieLabel: (pieData, index) {
                                                  return "${pieData['measure']}";
                                                },
                                                labelPosition:
                                                    PieLabelPosition.auto,
                                                labelColor: Colors.white,
                                                labelFontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                        outlinedBox(
                                            size: size,
                                            assetName:
                                                'assets/People-Patient-Male-icon.png',
                                            label: 'Agents',
                                            press: () {
                                              loadPage(
                                                  assetName:
                                                      'assets/People-Patient-Male-icon.png',
                                                  title: 'Agents',
                                                  context: context,
                                                  page: GestionDesAgents(),
                                                  size: size);
                                            }),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        outlinedBox(
                                            size: size,
                                            assetName:
                                                'assets/People-Patient-Male-icon.png',
                                            label: 'Medecins',
                                            press: () {
                                              loadPage(
                                                  assetName:
                                                      'assets/People-Patient-Male-icon.png',
                                                  title: 'Medecins',
                                                  context: context,
                                                  page: GestionDesMedecins(),
                                                  size: size);
                                            }),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              color: Color.fromARGB(60, 79, 78, 94),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  features(
                                      size: size,
                                      label: 'Gestion de caisse',
                                      press: () {
                                        loadPage(
                                            assetName:
                                                'assets/cash-register-icon.png',
                                            title: 'Gestion de caisse',
                                            context: context,
                                            page: GestionCaisse(),
                                            size: size);
                                      },
                                      asset: 'assets/cash-register-icon.png'),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  features(
                                      size: size,
                                      label: 'Gestion des presences',
                                      press: () {
                                        loadPage(
                                            assetName: 'assets/place.png',
                                            title: 'Gestion des presences',
                                            context: context,
                                            page: DossierDesPatients(),
                                            size: size);
                                      },
                                      asset: 'assets/place.png'),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  features(
                                      size: size,
                                      label: 'Gestion des salaires',
                                      press: () {
                                        loadPage(
                                            assetName:
                                                'assets/payment-icon.png',
                                            title: 'Gestion des salaires',
                                            context: context,
                                            page: GestionSalaire(),
                                            size: size);
                                      },
                                      asset: 'assets/payment-icon.png'),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  features(
                                      size: size,
                                      label: 'Gestion des emploi du temps',
                                      press: () {
                                        loadPage(
                                            assetName: 'assets/time.png',
                                            title:
                                                'Gestion des emploi du temps',
                                            context: context,
                                            page: GestionEmploiDuTemps(),
                                            size: size);
                                      },
                                      asset: 'assets/time.png'),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  features(
                                      size: size,
                                      label: 'Dossier des patients',
                                      press: () {
                                        loadPage(
                                            assetName:
                                                'assets/Folder-Add-icon.png',
                                            title: 'Dossier des patients',
                                            context: context,
                                            page: GestionDesPatients(),
                                            size: size);
                                      },
                                      asset: 'assets/Folder-Add-icon.png'),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Widget outlinedBox(
      {required Size size,
      required String assetName,
      required String label,
      required VoidCallback press}) {
    return InkWell(
      onTap: press,
      child: Container(
        width: size.width,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.white12),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            color: const Color.fromARGB(255, 42, 45, 62)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Image.asset(assetName)),
                  ),
                  Text(
                    label,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget features(
      {required Size size,
      required String label,
      required String asset,
      required VoidCallback press}) {
    return InkWell(
      onTap: press,
      child: Ink(
        width: size.width,
        height: 50,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            color: Color.fromARGB(255, 42, 45, 62)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Image.asset(asset)),
                  ),
                  Text(
                    label,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const Icon(
                Icons.chevron_right,
                color: Colors.white38,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget BoxStats(
      {required Size size,
      required Color color,
      required String label,
      required String asset,
      required String total}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
      child: InkWell(
        onTap: () => {},
        child: Ink(
          width: size.width * .15,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 42, 45, 62),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: color,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Image.asset(asset),
                          )),
                    ),
                    Text(
                      total,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(label,
                      softWrap: true,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 12)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LinearProgressBar(
                    maxSteps: 6,
                    progressType: LinearProgressBar
                        .progressTypeLinear, // Use Linear progress
                    currentStep: 1,
                    progressColor: color,
                    backgroundColor: Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
