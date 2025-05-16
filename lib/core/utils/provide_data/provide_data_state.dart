part of 'provide_data_cubit.dart';

class ProvideDataState {
  final ZekerItem zekerItem;
  final GlobalKey widgtScreenShot;
  final VoidCallback? onDeleteFavoriteZeker;
  final Animation<double>? animation;
  const ProvideDataState({
    required this.zekerItem,
    required this.widgtScreenShot,
    this.animation,
    this.onDeleteFavoriteZeker,
  });
}
