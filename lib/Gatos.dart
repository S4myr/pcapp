import 'package:flutter/material.dart';
import 'package:projeto_flutter/Cachorros.dart';
import 'package:projeto_flutter/filis_inicio.dart';

class Gatos extends StatelessWidget {
  const Gatos({super.key});

  void _navegarParaCachorros(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Cachorros(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adote seu Gatinho'),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                accountName: Text(
                  'Ana Carolina',
                ),
                accountEmail: Text('ana@gmail.com'),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://64.media.tumblr.com/71d182329a1f0a0c0a38bc0744cc7da8/670a27338f53ef07-44/s500x750/65ce8e8dce265e79d9fb14850a25c15a60afe254.gifv",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Início'),
                subtitle: const Text('Voltar para a página inicial'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const filis_inicio()),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.pets),
                title: const Text('Cachorros'),
                subtitle: const Text('Cachorrinhos à espera de um lar'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Cachorros()),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.pets),
                title: const Text('Gatos'),
                subtitle: const Text('Gatinhos também são amorosos'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Gatos()),
                ),
              ),
              const Divider(
                height: 10,
                thickness: 5,
              ),
              const Text(
                'Mais serviços',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              ListTile(
                leading: const Icon(Icons.event),
                title: const Text('Agenda'),
                subtitle: const Text(
                    'Agende um horário para visitar seu futuro bichinho'),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: const Icon(Icons.savings),
                title: const Text('Doações'),
                subtitle: const Text('Ajude-nos com uma doação'),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: Colors.blue[50],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Adote seu Gatinho',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.7,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 4,
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(16)),
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRiY7waDqESwM_BWgSqp6r9Ke6SZPJSh2u3gluMCC7lvaoqkRp2',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange[100],
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 8,
                              ),
                            ),
                            child: const Text('Mais Informações'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange[300],
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 8,
                              ),
                            ),
                            child: const Text('Adote'),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
