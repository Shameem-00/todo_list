import 'package:flutter/material.dart';
import 'package:prac_list/prac_form.dart';
import 'package:provider/provider.dart';
import '../../title_model.dart';
import '../provider/prac_provider.dart';

class PracList extends StatefulWidget {
  const PracList({super.key});

  @override
  State<PracList> createState() => _PracListState();
}

class _PracListState extends State<PracList> {
  List<PracModel> lst = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List', style: TextStyle(fontWeight: FontWeight.bold)), centerTitle: true, backgroundColor: Colors.greenAccent),
      body: Consumer<PracProvider>(
        builder: (context, value, child) {
          final lst = value.lst;
          return ListView.builder(
            itemCount: lst.length,
            itemBuilder: (context, index) {
              final title = lst[index].title;
              final subtitle = lst[index].subtitle;
              return ListTile(title: Text("$title $index"), subtitle: Text(subtitle));
            },
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final data = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return PracForm();
              },
            ),
          );
          if (data != null) {
            context.read<PracProvider>().addItem(data);}

          context.read<PracProvider>().addItem(data);
          // context.watch<PracProvider>().addItem(data);
          // Provider.of<PracProvider>(context,listen: true);
        },
        backgroundColor: Colors.greenAccent,
        child: Icon(Icons.add),
      ),
    );
  }
}

/// Provider( Can be used )
/// Riverpod ( New Version of Provider)
/// Getx ( Third party build by developer)
/// Bloc ( Offical state management by flutter)
///
/// const
/// final
