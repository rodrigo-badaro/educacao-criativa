import 'package:educacao_criativa/screens/clientes/bloc/clientes_bloc.dart';
import 'package:educacao_criativa/screens/deficiencias/bloc/deficiencias_bloc.dart';
import 'package:educacao_criativa/screens/espacos/bloc/espacos_bloc.dart';
import 'package:educacao_criativa/screens/estacoes/bloc/estacoes_bloc.dart';
import 'package:educacao_criativa/screens/estrutura_organizacional/anos/bloc/series_bloc.dart';
import 'package:educacao_criativa/screens/estrutura_organizacional/modalidades/bloc/modalidades_bloc.dart';
import 'package:educacao_criativa/screens/formato_de_notas/bloc/formato_notas_bloc.dart';
import 'package:educacao_criativa/screens/itens/bloc/itens_bloc.dart';
import 'package:educacao_criativa/screens/materiais_de_apoio/bloc/materiais_de_apoio_bloc.dart';
import 'package:educacao_criativa/screens/periodicidade/bloc/periodicidade_bloc.dart';
import 'package:educacao_criativa/screens/tipo_de_unidades/bloc/tipo_de_unidades_bloc.dart';
import 'package:educacao_criativa/screens/unidades/bloc/unidades_bloc.dart';
import 'package:educacao_criativa/screens/usuarios/bloc/usuarios_bloc.dart';
import 'package:educacao_criativa/services/auth_bloc/auth_bloc.dart';
import 'package:educacao_criativa/services/notification/bloc/notification_bloc.dart';
import 'package:educacao_criativa/widgets/autocomplete_cidade_estado/bloc/autocomplete_cidade_estado_bloc.dart';
import 'package:educacao_criativa/widgets/menu/menu_cubit.dart';
import 'package:educacao_criativa/widgets/menu/menu_itens.dart';
import 'package:educacao_criativa/widgets/modal/modal_listener.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

AuthBloc authBloc = getIt<AuthBloc>();
AutocompleteCidadeEstadoBloc autocompleteCidadeEstadoBloc = getIt<AutocompleteCidadeEstadoBloc>();
MenuItens menuItens = getIt<MenuItens>();
MenuCubit menuCubit = getIt<MenuCubit>();
ModalListener modalListener = getIt<ModalListener>();
NotificationBloc notificationBloc = getIt<NotificationBloc>();
FormatoNotasBloc formatoNotasBloc = getIt<FormatoNotasBloc>();
PeriodicidadeBloc periodicidadeBloc = getIt<PeriodicidadeBloc>();
DeficienciasBloc deficienciasBloc = getIt<DeficienciasBloc>();
TipoDeUnidadesBloc tiposDeUnidadesBloc = getIt<TipoDeUnidadesBloc>();
ModalidadesBloc modalidadesBloc = getIt<ModalidadesBloc>();
SeriesBloc seriesBloc = getIt<SeriesBloc>();
EstacoesBloc estacoesBloc = getIt<EstacoesBloc>();
MateriaisDeApoioBloc materiaisDeApoioBloc = getIt<MateriaisDeApoioBloc>();
ItensBloc itensBloc = getIt<ItensBloc>();
UsuariosBloc usuariosBloc = getIt<UsuariosBloc>();
ClientesBloc clientesBloc = getIt<ClientesBloc>();
UnidadesBloc unidadesBloc = getIt<UnidadesBloc>();
EspacosBloc espacosBloc = getIt<EspacosBloc>();

setupProviders() {
  getIt
    ..registerLazySingleton<AuthBloc>(() => AuthBloc())
    ..registerLazySingleton<NotificationBloc>(() => NotificationBloc())
    ..registerLazySingleton<FormatoNotasBloc>(() => FormatoNotasBloc())
    ..registerLazySingleton<PeriodicidadeBloc>(() => PeriodicidadeBloc())
    ..registerLazySingleton<DeficienciasBloc>(() => DeficienciasBloc())
    ..registerLazySingleton<TipoDeUnidadesBloc>(() => TipoDeUnidadesBloc())
    ..registerLazySingleton<ModalidadesBloc>(() => ModalidadesBloc())
    ..registerLazySingleton<SeriesBloc>(() => SeriesBloc())
    ..registerLazySingleton<EstacoesBloc>(() => EstacoesBloc())
    ..registerLazySingleton<MateriaisDeApoioBloc>(() => MateriaisDeApoioBloc())
    ..registerLazySingleton<ItensBloc>(() => ItensBloc())
    ..registerLazySingleton<UsuariosBloc>(() => UsuariosBloc())
    ..registerLazySingleton<ClientesBloc>(() => ClientesBloc())
    ..registerLazySingleton<UnidadesBloc>(() => UnidadesBloc())
    ..registerLazySingleton<EspacosBloc>(() => EspacosBloc())

    //..registerLazySingleton<ActivityBloc>(() => ActivityBloc())
    //..registerLazySingleton<MapsController>(() => MapsController())

    //..registerLazySingleton<ContainerBloc>(() => ContainerBloc())

    //..registerLazySingleton<EmpresasBloc>(() => EmpresasBloc())
    //..registerLazySingleton<MotoristasBloc>(() => MotoristasBloc())
    //..registerLazySingleton<VeiculosBloc>(() => VeiculosBloc())
    //..registerLazySingleton<CredenciaisBloc>(() => CredenciaisBloc())
    //..registerLazySingleton<Co2Bloc>(() => Co2Bloc())
    //..registerLazySingleton<UsuariosBloc>(() => UsuariosBloc())
    //..registerLazySingleton<UsuariosBloc2>(() => UsuariosBloc2())

    //..registerLazySingleton<VeiculosCoresBloc>(() => VeiculosCoresBloc())
    //..registerLazySingleton<TipoVeiculoBloc>(() => TipoVeiculoBloc())
    //..registerLazySingleton<VeiculosMarcasBloc>(() => VeiculosMarcasBloc())
    ..registerLazySingleton<AutocompleteCidadeEstadoBloc>(() => AutocompleteCidadeEstadoBloc())
    ..registerLazySingleton<MenuItens>(() => MenuItens())
    ..registerLazySingleton<MenuCubit>(() => MenuCubit())
    ..registerLazySingleton<ModalListener>(() => ModalListener());
}

resetProviders() async {
  getIt.resetLazySingleton<AutocompleteCidadeEstadoBloc>();
}
