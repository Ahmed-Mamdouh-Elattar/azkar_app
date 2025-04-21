part of 'body_cubit.dart';

sealed class BodyState {
  int get index;
}

final class HomeBody extends BodyState {
  @override
  int get index => 0;
}

final class FavoriteBody extends BodyState {
  @override
  int get index => 1;
}

final class ChartBody extends BodyState {
  @override
  int get index => 2;
}
