

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

  final _icons = <String, IconData>{
    'add_alert' :Icons.add_alert,
    'accessibility' : Icons.accessibility,
    'folder_open' : Icons.folder_open
  };

  getIcon(String nomIcona){
    return Icon(_icons[nomIcona],color:Colors.blue);
  }

