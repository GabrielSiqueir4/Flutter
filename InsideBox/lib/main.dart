import 'package:flutter/material.dart';

class BottomComponent extends StatelessWidget {
  var route = '';
  var index = 0;
  BottomComponent(String? name, {Key? key}) : super(key: key) {
    route = name!;

    switch (route) {
      case '/home':
        index = 0;
        break;
      case '/curso':
        index = 1;
        break;
      case '/download':
        index = 2;
        break;
      case '/history':
        index = 3;
        break;
      default:
        index = 0;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          //canvasColor: Colors.green,
          // sets the active color of the `BottomNavigationBar` if `Brightness` is light
          primaryColor: Colors.red,
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: const TextStyle(
                  color: Colors
                      .yellow))), // sets the inactive color of the `BottomNavigationBar`
      child: getBar(context),
    );
  }

  BottomNavigationBar getBar(BuildContext context) {
    return BottomNavigationBar(
        onTap: (value) {
          print(value);
          switch (value) {
            case 0:
              Navigator.of(context).pushNamed('/home');
              break;
            case 1:
              Navigator.of(context).pushNamed('/curso');
              break;
            case 2:
              Navigator.of(context).pushNamed('/download');
              break;
            case 3:
              Navigator.of(context).pushNamed('/history');
              break;
          }
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.amber[800],
        currentIndex: index,
        items: getItens());
  }

  List<BottomNavigationBarItem> getItens() {
    return const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        tooltip: 'Todos os videos',
        icon: Icon(Icons.home),
        label: 'KardecPlay',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.ballot_outlined),
        label: 'Cursos',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.download_rounded),
        label: 'Download',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.history),
        label: 'Historico',
      ),
    ];
  }
}