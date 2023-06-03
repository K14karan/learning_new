import 'package:flutter/material.dart';
class PopMenuScreen extends StatefulWidget {
  const PopMenuScreen({Key? key}) : super(key: key);

  @override
  State<PopMenuScreen> createState() => _PopMenuScreenState();
}

class _PopMenuScreenState extends State<PopMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Popup Menus',
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (ctx) =>
            [
              _buildPopupMenuItem('Search', Icons.search),
              _buildPopupMenuItem('Upload', Icons.upload),
              _buildPopupMenuItem('Copy', Icons.copy),
              _buildPopupMenuItem('Exit', Icons.exit_to_app),
            ],
          )
        ],
      ),
    );
  }

  PopupMenuItem _buildPopupMenuItem(String title, IconData iconData) {
    return PopupMenuItem(
        child: Row(
          children: [
            Icon(iconData, color: Colors.black,),
            Text(title),
          ],
        )
    );
  }
}







