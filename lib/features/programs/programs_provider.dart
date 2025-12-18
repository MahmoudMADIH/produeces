import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/network/api_service.dart';
import '../../data/programs/programs_remote_data_source.dart';
import '../../data/programs/programs_repository_impl.dart';
import '../../domain/programs/program.dart';

final apiServiceProvider = Provider<ApiService>(
  (ref) => ApiService('http://localhost:3000'),
);
final programsRemoteDataSourceProvider = Provider<ProgramsRemoteDataSource>(
  (ref) => ProgramsRemoteDataSource(ref.read(apiServiceProvider)),
);
final programsRepositoryProvider = Provider<ProgramsRepositoryImpl>(
  (ref) => ProgramsRepositoryImpl(ref.read(programsRemoteDataSourceProvider)),
);
final programsListProvider = FutureProvider<List<Program>>((ref) async {
  return ref.read(programsRepositoryProvider).getPrograms();
});
