import 'package:flutter/cupertino.dart';

import '../../title_model.dart';

class PracProvider extends ChangeNotifier {

  final List<PracModel> _lst = [];

  List<PracModel> get lst => _lst;

   addItem(PracModel item) {
    _lst.add(item);
  }
}
