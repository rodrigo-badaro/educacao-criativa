import 'package:educacao_criativa/global.dart';
import 'package:educacao_criativa/responsive_size.dart';
import 'package:educacao_criativa/services/notification/list_notification.dart';
import 'package:educacao_criativa/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'login/login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final PageController _pageViewController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 0,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Stack(
        children: [
          LayoutBuilder(builder: (BuildContext layoutBuildercontext, BoxConstraints constraints) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Visibility(
                  visible: (constraints.maxWidth >= sm),
                  child: Stack(
                    children: [
                      Container(
                        width: constraints.maxWidth > xl ? constraints.maxWidth * 0.75 : constraints.maxWidth * 0.6,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                            // image: AssetImage('/images/teste/containeres2.jpg'),
                            // image: NetworkImage('https://images.unsplash.com/photo-1531683760080-7bb28a630bd7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2127&q=80'),
                            image: NetworkImage('https://images.unsplash.com/photo-1605732562742-3023a888e56e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1935&q=80'),
                            // image: NetworkImage('https://images.unsplash.com/photo-1590301602442-c151c8ddb003?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1026&q=80'),
                            // image: NetworkImage('https://images.unsplash.com/photo-1613690399151-65ea69478674?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80'),
                            fit: BoxFit.cover,
                            opacity: 0.6,
                            repeat: ImageRepeat.noRepeat,
                          ),
                        ),
                      ),
                      Visibility(
                        visible: constraints.maxHeight > 350,
                        child: SizedBox(
                          width: constraints.maxWidth > ResponsiveSize.xl ? constraints.maxWidth * 0.75 : constraints.maxWidth * 0.6,
                          child: LayoutBuilder(builder: (
                            BuildContext layoutBuildercontext,
                            BoxConstraints constraintsPt1,
                          ) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 20.0, top: 50, bottom: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Logo(
                                    size: constraintsPt1.maxWidth > lg ? 72 : 60,
                                  ),
                                  Expanded(child: Container()),
                                  SizedBox(
                                    width: constraintsPt1.maxWidth * 0.8,
                                    child: const SelectableText(
                                      'Conheça o painel de cargas, uma maneira simples e tecnologica de gerenciar seus transportes com acompanhamento em tempo real e documentos relacionados a sua modalidade de frete',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: constraints.maxWidth >= sm
                      ? constraints.maxWidth > xl
                          ? constraints.maxWidth * 0.25
                          : constraints.maxWidth * 0.4
                      : constraints.maxWidth,
                  height: constraints.maxHeight,
                  child: PageView(
                    controller: _pageViewController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      Login(
                          // pageControllerLogin: _pageViewController,
                          ),
                    ],
                  ),
                ),
              ],
            );
          }),
          const ListNotification(),
        ],
      ),
    );
  }
}
