import 'package:flutter/material.dart';
import 'package:teste_onde_system/app/modules/home/widgets/header_view.dart';
import 'package:teste_onde_system/app/modules/home/widgets/view_future.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Pendencia de Faturamento',
          ),
          leading: const Icon(
            Icons.arrow_back,
          ),
          //todo: melhorar
          actions: const [
            Icon(
              Icons.more_vert_outlined,
            ),
            SizedBox(
              width: 10,
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Cabeçalho',
              ),
              Tab(
                text: 'Catálogo',
              ),
              Tab(
                text: 'Carrinho',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            HeaderView(),
            ViewFuture(
              text: 'Tab de Catálogo não foi solicitada no desafio',
            ),
            ViewFuture(
              text: 'Tab de Carrinho não foi solicitada no desafio',
            ),
          ],
        ),
      ),
    );
  }
}
