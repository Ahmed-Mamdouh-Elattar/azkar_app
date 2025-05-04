import 'package:azkar_app/core/services/service_locator.dart';
import 'package:azkar_app/features/home/presentation/managers/azkar_cubit/azkar_cubit.dart';

Future<void> saveAzkarListAndCloseCubit() async {
  var azkarCubit = getIt.get<AzkarCubit>();
  await azkarCubit.saveAzkarList();
  azkarCubit.close();
}
