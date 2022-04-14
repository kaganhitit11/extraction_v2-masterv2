import 'package:flutter/material.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';
import 'package:extraction_v2/AgendaPage.dart';

import 'main.dart';

class MySideBar extends StatefulWidget {
  const MySideBar({Key? key}) : super(key: key);

  @override
  State<MySideBar> createState() => _MySideBarState();
}
class _MySideBarState extends State<MySideBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MultiLevelDrawer(
        backgroundColor: Colors.white,
        rippleColor: Colors.white,
        subMenuBackgroundColor: Colors.grey.shade100,
        header: Container(                  // Header for Drawer
          height: MediaQuery.of(context).size.height * 0.25,
          child: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 10,),
              Text("Peker App")
            ],
          )),
        ),

        children: [           // Child Elements for Each Drawer Item
          MLMenuItem(
              leading: Icon(Icons.person),
              trailing: Icon(Icons.arrow_right),
              content: Text(
                "My Profile",
              ),
              subMenuItems: [
                MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
                MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
                MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
              ],
              onClick: () {}),
          MLMenuItem(
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.arrow_right),
              content: Text("Assignments"),
              onClick: () {},
              subMenuItems: [
                MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
                MLSubmenu(onClick: () {}, submenuContent: Text("Option 2"))
              ]),
          MLMenuItem(
            leading: Icon(Icons.notifications),
            content: Text("Pending Jobs"),
            onClick: () {},
          ),
          MLMenuItem(
              leading: Icon(Icons.payment),
              trailing: Icon(Icons.arrow_right),
              content: Text("Agenda"),
              subMenuItems: [
                MLSubmenu(onClick: () {Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const AgendaPage()));},
                    submenuContent: Text("Agenda")),
              ],
              onClick: () {}),
          MLMenuItem(
            leading: Icon(Icons.logout),
            content: Text("Log Out"),
            onClick: () {Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyApp()));},
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Menu",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1)
        ),
        child: Container(
          alignment: Alignment.center,
          child: Column(children:[
            Container(
              width: MediaQuery.of(context).size.width * 0.50,
              height: MediaQuery.of(context).size.height * 0.3,
              color: Colors.blue,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Welcome",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ],
          ),
        ),
      ),
    );
  }
}