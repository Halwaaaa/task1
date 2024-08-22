import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<SliverAnimatedListState> _listKey =
      GlobalKey<SliverAnimatedListState>();
  final List<String> _items = [];

  void _addItem() {
    final newIndex = _items.length;
    _items.add('Item $newIndex');
    _listKey.currentState?.insertItem(newIndex);
  }

  void _removeItem() {
    if (_items.isNotEmpty) {
      final removedIndex = _items.length - 1;
      final removedItem = _items.removeAt(removedIndex);
      _listKey.currentState?.removeItem(
        removedIndex,
        (context, animation) => _buildItem(removedItem, animation),
      );
    }
  }

  Widget _buildItem(String item, Animation<double> animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: Card(
        margin: const EdgeInsets.all(8.0),
        child: ListTile(title: Text(item)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliverAnimatedList Example'),
        actions: [
          IconButton(icon: const Icon(Icons.add), onPressed: _addItem),
          IconButton(icon: const Icon(Icons.remove), onPressed: _removeItem),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAnimatedList(
            key: _listKey,
            initialItemCount: _items.length,
            itemBuilder: (context, index, animation) {
              return _buildItem(_items[index], animation);
            },
          ),
        ],
      ),
    );
  }
}
