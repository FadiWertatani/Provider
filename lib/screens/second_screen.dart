import 'package:flutter/material.dart';
import 'package:learn_provider_with_scatter/providers/shopping_card.dart';
import 'package:provider/provider.dart';

import '../providers/counter_provider.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Example App (${context.watch<Counter>().count})'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('${context.watch<ShoppingCard>().count}'),
            Text('${context.watch<ShoppingCard>().cart}')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: Key('addItem_floatingActionButton'),
        onPressed: () => context.read<ShoppingCard>().addItem('Bread'),
        tooltip: 'Add Item',
        child: Icon(Icons.add),
      ),
    );
  }
}
