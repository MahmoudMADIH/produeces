import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../components/app_card.dart';
import '../../features/programs/programs_provider.dart';

class ProgramListPage extends ConsumerWidget {
  const ProgramListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final programsAsync = ref.watch(programsListProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('جدول البرامج')),
      body: programsAsync.when(
        data: (programs) => ListView.builder(
          itemCount: programs.length,
          itemBuilder: (context, index) {
            final program = programs[index];
            return AppCard(
              child: ListTile(
                title: Text(program.title),
                subtitle: Text(program.description),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {},
              ),
            );
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('خطأ في تحميل البرامج')),
      ),
    );
  }
}
