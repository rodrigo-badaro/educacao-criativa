import 'package:educacao_criativa/models/serie_model.dart';

abstract class SeriesState {
  List<SerieModel> series;

  SeriesState({
    required this.series,
  });
}

class SeriesInitialState extends SeriesState {
  SeriesInitialState() : super(series: []);
}

class SeriesLoadingState extends SeriesState {
  SeriesLoadingState() : super(series: []);
}

class SeriesSuccessState extends SeriesState {
  SeriesSuccessState({required super.series});
}
