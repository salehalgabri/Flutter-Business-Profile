import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.title, this.subtitle, this.trailing, this.leading});
  final Widget? leading;
  final String title;
  final String? subtitle;
  final IconData? trailing;
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading:leading,
      title: Text(title),
      subtitle: Text(subtitle!),
      trailing: Icon(trailing),
    );
  }
}
