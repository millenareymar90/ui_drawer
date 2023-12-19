import 'package:flutter/material.dart';

class CustomNavDrawer extends StatelessWidget {
  const CustomNavDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          _UserProfile(),
          Expanded(
            child: _Navigation()
          ),
          Divider(
            height: 1,
            color:Colors.grey,
          ),
          _SignOut(),
        ],
      ),
    );
  }
}

class _SignOut extends StatelessWidget {
  const _SignOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text(
            'Sign Out',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Colors.black
            ),
            textAlign: TextAlign.left,
          ),
          trailing: const Icon(
            Icons.power_settings_new,
            color: Colors.red,
          ),
          onTap: () {
          },
        ),
        SizedBox(
          height: MediaQuery.of(context).padding.bottom,
        )
      ],
    );
  }
}

class _Navigation extends StatelessWidget {
  const _Navigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 10.0),
      children: [
        ListTile(
          leading: const Icon(Icons.people),
          title: const Text(
            'User Information',
            style: TextStyle(
              fontFamily: 'Roboto',
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          onTap: (){
            
          },
        ),
        ListTile(
          leading: const Icon(Icons.upload),
          title: const Text(
            'Upload',
            style: TextStyle(
              fontFamily: 'Roboto',
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          onTap: (){

          },
        ),
        ListTile(
          leading: const Icon(Icons.download),
          title: const Text(
            'Download',
            style: TextStyle(
              fontFamily: 'Roboto',
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          onTap: (){
            
          },
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text(
            'Settings',
            style: TextStyle(
              fontFamily: 'Roboto',
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          onTap: (){
            
          },
        ),
      ],
    );
  }
}

class _UserProfile extends StatelessWidget {
  const _UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 60.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.green.shade300.withOpacity(0.8),
              Colors.green.shade800.withOpacity(0.8)
            ]
          ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      offset: const Offset(0.7, 0.3),
                      blurRadius: 3),
                ]),
            child: Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(100.0),
                      ),
                      border: Border.all(
                          width: 4, color: Colors.blue.withOpacity(0.2)),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 45,
                          backgroundColor: Colors.white,
                          child: Text(
                            'JB',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w900,
                              fontSize: 48,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
            child: Column(
              children: [
                Text(
                  'John S. Smith',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Service Crew',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.white,
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
