import 'package:clinic/Widget/SmartDialog.dart';
import 'package:clinic/dashboard/CompteUtilisateur.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Mercredi , 10 janver 2022',
              softWrap: true,
              style: TextStyle(color: Colors.white, fontSize: 12)),
          Row(
            children: [
              Container(
                width: 200,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Color.fromARGB(255, 42, 45, 62)),
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              color: Color.fromARGB(255, 4, 156, 25)),
                          child: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      labelText: 'Recherche',
                      enabledBorder: InputBorder.none,
                      contentPadding: const EdgeInsets.all(10)),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 200,
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                ),
                                child: Image.asset(
                                    'assets/People-Patient-Male-icon.png')),
                          ),
                          const Text(
                            'Profile',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      PopupMenuButton(
                          position: PopupMenuPosition.under,
                          color: const Color.fromARGB(255, 42, 45, 62),
                          icon: const Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Colors.white,
                          ),
                          onSelected: ((value) => {
                                print(value),
                              }),
                          itemBuilder: (BuildContext context) {
                            return [
                              PopupMenuItem(
                                  onTap: () => {
                                        loadPage(
                                            assetName:
                                                'assets/People-Patient-Male-icon.png',
                                            title: 'Modifier mon compte',
                                            context: context,
                                            page: CompteUtilisateur(),
                                            size: size)
                                      },
                                  child: Text(
                                    'Modifier mon compte',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  )),
                              PopupMenuItem(
                                  onTap: () => {
                                        loadPage(
                                            assetName:
                                                'assets/People-Patient-Male-icon.png',
                                            title: 'Fermeture de la session',
                                            context: context,
                                            page: CompteUtilisateur(),
                                            size: size)
                                      },
                                  child: Text('Se deconnecter',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12))),
                            ];
                          }),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
