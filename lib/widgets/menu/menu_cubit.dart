import 'package:bloc/bloc.dart';
import 'package:educacao_criativa/widgets/menu/menu_model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class MenuCubit extends Cubit<MenuModel> {
  MenuCubit() : super(MenuModel(isOpen: false, isHover: false)) {
    _initialize();
  }

  bool _isOpen = false;
  bool get isOpen => _isOpen;

  bool _isHover = false;
  bool get isHover => _isHover;

  bool _hasInitialized = false;
  bool get hasInitialized => _hasInitialized;

  Box? boxMenu;

  Future<MenuModel> _initialize() async {
    try {
      if (!_hasInitialized) {
        if (Hive.isBoxOpen('MENU')) {
          boxMenu = Hive.box('MENU');
        } else {
          await Hive.openBox('MENU');
          boxMenu = Hive.box('MENU');
        }

        if (boxMenu != null) {
          _isOpen = await boxMenu?.get('open') ?? false;
        }

        _hasInitialized = true;
      }
    } catch (err) {
      debugPrint('Erro ao iniciar o status do menu => $err');
    }

    return MenuModel(isOpen: _isOpen, isHover: _isHover);
  }

  Future<void> expand(bool value) async {
    try {
      if (boxMenu != null) {
        await boxMenu?.put('open', value);
      }
    } catch (err) {
      debugPrint('Erro ao alterar o status do menu => $err');
    }

    _isOpen = value;
    emit(MenuModel(isOpen: _isOpen, isHover: _isHover));
  }

  Future<void> hover(bool value) async {
    _isHover = value;
    emit(MenuModel(isOpen: _isOpen, isHover: _isHover));
  }

  void open({required MenuModel state}) => emit(state);
}
