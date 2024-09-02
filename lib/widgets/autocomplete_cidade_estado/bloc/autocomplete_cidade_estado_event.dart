abstract class AutocompleteCidadeEstadoEvent {}

class LoadIBGE extends AutocompleteCidadeEstadoEvent {
  final String pesquisaPor;

  LoadIBGE({required this.pesquisaPor});
}
