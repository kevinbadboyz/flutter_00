import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile'),
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ContainerHeader(),
            Divider(height: 10, thickness: 1),
            ContainerBody(),
            Divider(height: 10, thickness: 1),
            ContainerFooter(),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, bottom: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BottomNavigationBar(
              backgroundColor: Theme.of(context).colorScheme.primary,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white60,
              iconSize: 28,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_outline),
                  label: 'Favourite',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search_rounded),
                  label: 'Search',
                ),
                BottomNavigationBarItem(icon: Icon(Icons.paste), label: 'Report'),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Account',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContainerHeader extends StatelessWidget {
  const ContainerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0.0, end: 1.0),
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInCubic,
          builder: (context, value, child) {
            return Transform.scale(scale: value, child: child);
          },
          child: CircleAvatar(
            radius: 75,
            backgroundImage: NetworkImage(
              'https://hips.hearstapps.com/hmg-prod/images/gettyimages-1356675370.jpg?crop=1xw:1.0xh;center,top&resize=640:*',
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Kevin Pasaribu',
          style: Theme.of(context).textTheme.bodyLarge
              ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Text(
          'kevinbadboyz@gmail.com',
          style: Theme.of(context).textTheme.bodyMedium
              ?.copyWith(color: Colors.black),
        ),
        SizedBox(height: 10),
        FilledButton(onPressed: () {}, child: Text('Edit Profile')),
        SizedBox(height: 20),
      ],
    );
  }
}

class ContainerBody extends StatelessWidget {
  const ContainerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: (){},
          leading: Icon(Icons.settings),
          title: Text('Settings'),
          trailing: Icon(Icons.navigate_next_sharp),
        ),
        ListTile(
          onTap: (){},
          leading: Icon(Icons.paste),
          title: Text('My Orders'),
          trailing: Icon(Icons.navigate_next_sharp),
        ),
        ListTile(
          onTap: (){},
          leading: Icon(Icons.location_on_outlined),
          title: Text('Address'),
          trailing: Icon(Icons.navigate_next_sharp),
        ),
        ListTile(
          onTap: (){},
          leading: Icon(Icons.lock_outline),
          title: Text('Change Password'),
          trailing: Icon(Icons.navigate_next_sharp),
        ),
      ],
    );
  }
}

class ContainerFooter extends StatelessWidget {
  const ContainerFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: (){},
          leading: Icon(Icons.help_outline),
          title: Text('Help & Support'),
          trailing: Icon(Icons.navigate_next_sharp),
        ),
        ListTile(
          onTap: (){},
          leading: Icon(Icons.logout),
          title: Text('Logout'),
          trailing: Icon(Icons.navigate_next_sharp),
        ),
      ],
    );
  }
}
