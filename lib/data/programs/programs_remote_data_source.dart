import 'dart:convert';
import '../../core/network/api_service.dart';

class ProgramsRemoteDataSource {
  final ApiService apiService;
  ProgramsRemoteDataSource(this.apiService);

  Future<List<dynamic>> fetchPrograms() async {
    final response = await apiService.get('/programs');
    // Parse and return program list
    return response.body.isNotEmpty
        ? List<dynamic>.from(jsonDecode(response.body))
        : [];
  }
}
