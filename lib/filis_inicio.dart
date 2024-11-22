import 'package:flutter/material.dart';
import 'package:projeto_flutter/Cachorros.dart';
import 'package:projeto_flutter/Gatos.dart';

class filis_inicio extends StatelessWidget {
  const filis_inicio({super.key});

  void _navegarParaGatos(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Gatos(),
      ),
    );
  }

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
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          'Fílis',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
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
        height: 300.0,
        width: 700.0,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                'https://www.patasdacasa.com.br/sites/default/files/styles/article_detail_1200/public/2023-05/fotos%20de%20capa%20-%20patas_4.jpg.webp?itok=AMuK7AUu',
              ),
            ),
            const Text(
              'Gato',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: filis_inicio(),
  ));
}
