import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  final void Function()? onFabTab;
  final Widget? child;
  const Screen({Key? key, this.onFabTab, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yelp 2.0'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: onFabTab != null
          ? IconButton(
              icon: const Icon(Icons.add_outlined),
              onPressed: onFabTab,
            )
          : const Offstage(),
      body: Center(
        child: child,
      ),
    );
  }
}
