import 'package:bloc/bloc.dart';
import 'package:bloc_practice/model/package.dart';
import 'package:bloc_practice/repository/package_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_event.dart';
part 'package_state.dart';

class PackageBloc extends Bloc<PackageEvent, PackageState> {
  final PackageRepository packageRepository;

  PackageBloc({required this.packageRepository}) : super(Empty()) {
    on<GetPackageEvent>(_onGetPackageEvent);
  }

  void _onGetPackageEvent(
      GetPackageEvent event, Emitter<PackageState> emit) async {
    try {
      emit(Loading());

      final resp = await packageRepository.getPackages(event.pages);

      final packages = resp
          .map<Package>(
            (e) => Package.fromJson(e),
          )
          .toList();

      emit(Loaded(packages: packages));
    } catch (e) {
      emit(Error("", message: e.toString()));
    }
  }
}
