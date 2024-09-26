import 'package:flutter/material.dart';
import 'package:projeto_flutter/pagina_principal.dart';

class filis_inicio extends StatelessWidget {
  const filis_inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          'Outra página',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                accountName: Text('Samanta Rodacki'),
                accountEmail: Text('lalala@gmail.com'),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://i.pinimg.com/originals/ac/27/06/ac2706eb6561e031642d2cf30f634b0c.gif"),
                      fit: BoxFit.fill),
                ),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text('I am not throwin away my shot '),
                subtitle: Text('I am not throwin away my shot'),
                trailing: Icon(Icons.bedtime),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text('I know about whisper'),
                subtitle: Text('I see how you look at my sister'),
                trailing: Icon(Icons.bedtime),
              ),
              Divider(
                height: 10,
                thickness: 5,
              ),
              Text(
                'Músicas que já conheço',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text(
                    'You strike me as a woman who has never been satisfied'),
                subtitle:
                    Text('Youre like me, Im never satisfied, Is that right?'),
                trailing: Icon(Icons.bedtime),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text('Hamilton wrote the other 51'),
                subtitle: Text(
                    'How do you write like youre running out of time? (Running out of time?)'),
                trailing: Icon(Icons.bedtime),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Pagina_principal();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Volte!'),
        ),
      ),
    );
  }
}
