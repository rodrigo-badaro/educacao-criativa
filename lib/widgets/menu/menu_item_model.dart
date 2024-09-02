// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MenuItemModel {
  IconData icon;
  String title;
  String? subTitle;
  String? secao;
  String path;
  List<String> subPath;
  bool isMenuRoute;
  PageController? pageControllerDetalhes;
  Widget child;

  MenuItemModel({
    required this.icon,
    required this.title,
    this.subTitle,
    this.secao,
    required this.path,
    required this.subPath,
    required this.isMenuRoute,
    this.pageControllerDetalhes,
    required this.child,
  });
}
