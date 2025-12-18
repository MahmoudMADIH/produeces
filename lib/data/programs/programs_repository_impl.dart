import '../../domain/programs/program.dart';
import 'programs_remote_data_source.dart';

class ProgramsRepositoryImpl {
  final ProgramsRemoteDataSource remoteDataSource;
  ProgramsRepositoryImpl(this.remoteDataSource);

  Future<List<Program>> getPrograms() async {
    final data = await remoteDataSource.fetchPrograms();
    return data.map((json) => Program.fromJson(json)).toList();
  }
}
