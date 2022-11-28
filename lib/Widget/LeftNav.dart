import 'package:clinic/Widget/SmartDialog.dart';
import 'package:clinic/dashboard/Configuration.dart';
import 'package:clinic/dashboard/Consultation.dart';
import 'package:clinic/dashboard/GestionDesPatients.dart';
import 'package:clinic/dashboard/GestionDesSalles.dart';
import 'package:clinic/dashboard/GestionHospitalisation.dart';
import 'package:clinic/dashboard/GestionPharmacie.dart';
import 'package:flutter/material.dart';

class LeftNav extends StatefulWidget {
  const LeftNav({
    super.key,
  });

  @override
  State<LeftNav> createState() => _LeftNavState();
}

class _LeftNavState extends State<LeftNav> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const SizedBox(
          height: 35,
        ),
        SizedBox(
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/hospital-icon.png',
                width: 80,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: 120,
                      child: Text(
                        'CENTRE MEDICAL MARIE LOUISE',
                        softWrap: true,
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      child: Text(
                        '40 rue pool, La poudriere',
                        softWrap: true,
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              leftSideItem(
                  label: 'Consulation',
                  press: () async => {
                        loadPage(
                            assetName: 'assets/Cardiology-blue-icon.png',
                            title: 'Consulation',
                            context: context,
                            page: Consultation(),
                            size: size)
                      }),
              leftSideItem(
                  label: 'Patients',
                  press: () => {
                        loadPage(
                            assetName: 'assets/People-Patient-Female-icon.png',
                            title: 'Patients',
                            context: context,
                            page: GestionDesPatients(),
                            size: size)
                      }),
              leftSideItem(
                  label: 'Hospitalisation',
                  press: () => {
                        loadPage(
                            assetName: 'assets/plus-icon.png',
                            title: 'Hospitalisation',
                            context: context,
                            page: GestionHospitalisation(),
                            size: size)
                      }),
              leftSideItem(
                  label: 'Pharmacie',
                  press: () => {
                        loadPage(
                            assetName: 'assets/pill-3-icon.png',
                            title: 'Pharmacie',
                            context: context,
                            page: GestionPharmacie(),
                            size: size)
                      }),
              leftSideItem(
                  label: 'Salle',
                  press: () => {
                        loadPage(
                            assetName: 'assets/bedroom-icon.png',
                            title: 'Salle',
                            context: context,
                            page: GestionDesSalles(),
                            size: size)
                      }),
              leftSideItem(
                  label: 'Configuration',
                  press: () => {
                        loadPage(
                            assetName: 'assets/Settings-icon.png',
                            title: 'Configuration',
                            context: context,
                            page: Configuration(),
                            size: size)
                      }),
            ],
          ),
        )
      ],
    );
  }

  Widget leftSideItem({required String label, required VoidCallback press}) {
    return Column(
      children: [
        InkWell(
          onTap: press,
          child: Text(label,
              softWrap: true,
              style: const TextStyle(color: Colors.white, fontSize: 12)),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
