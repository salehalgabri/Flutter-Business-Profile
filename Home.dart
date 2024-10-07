import 'package:flutter/material.dart';
import 'package:flutter_application_1/Custom_Card.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B465D),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Made With 💙 By Saleh ALgabri',
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                child: Column(
                  children: [
                    const CustomListTile(
                      leading: CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: Colors.blue,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 45,
                        ),
                      ),
                      title: ("Saleh Algabri"),
                      subtitle: ("Software Developer"),
                      trailing: (Icons.more_vert),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {},
                            color: Colors.blue,
                            height: 50,
                            minWidth: 50,
                            child: const Text('Blue Box'),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {},
                            color: Colors.green,
                            height: 50,
                            minWidth: 50,
                            child: const Text('Green Box'),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Card(
                child: CustomListTile(
                  leading: IconButton(
                    onPressed: () async {
                      final Uri url = Uri(
                        scheme: 'mailto',
                        path: "s96557867@gmail.com",
                      );
                      await launchUrl(url);
                    },
                    icon: const Icon(
                      Icons.email,
                      size: 40,
                    ),
                  ),
                  title: ('Email'),
                  subtitle: ('s96557867@gmail.com'),
                  trailing: (Icons.edit),
                ),
              ),
              Card(
                child: CustomListTile(
                  leading: IconButton(
                    onPressed: () async {
                      final Uri url = Uri(
                        scheme: 'tel',
                        path: "+967770489242",
                      );
                      await launchUrl(url);
                    },
                    icon: const Icon(
                      Icons.phone,
                      size: 40,
                    ),
                  ),
                  title: ('Phone'),
                  subtitle: ('+967770489242'),
                  trailing: (Icons.phone),
                ),
              ),
            ],
          )),
    );
  }
}
