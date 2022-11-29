import 'package:flutter/material.dart';
import 'package:project_live_coding/app/modules/home/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeController controller;

  @override
  void initState() {
    controller = HomeController()..init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bromas')),
      body: ValueListenableBuilder<bool>(
        valueListenable: controller.loading,
        builder: (context, value, child) {
          return (value)
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: controller.jokesModels.length,
                  itemBuilder: (ctx, idx) => ListTile(
                    leading: CircleAvatar(
                      child: Image.network(
                        controller.jokesModels[idx].iconUrl,
                        errorBuilder: (ctx, _, __) => Icon(Icons.error_outline),
                      ),
                    ),
                    title: Text(controller.jokesModels[idx].value,
                        overflow: TextOverflow.ellipsis),
                  ),
                );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restart_alt_outlined),
        onPressed: () async => controller.reloadData(),
      ),
    );
  }
}
