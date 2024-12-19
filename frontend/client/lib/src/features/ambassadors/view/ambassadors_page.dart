import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hostel_hop_super_admin/main.dart';
import 'package:hostel_hop_super_admin/src/features/ambassadors/cubit/ambassadors_cubit.dart';
import 'package:hostel_hop_super_admin/src/shared/widgets/fade_in_up_card.dart';

class AmbassadorsPage extends StatelessWidget {
  const AmbassadorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AmbassadorsCubit>(),
      child: const AmbassadorsContent(),
    );
  }
}

class AmbassadorsContent extends HookWidget {
  const AmbassadorsContent({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();

    return BlocBuilder<AmbassadorsCubit, AmbassadorsState>(
      builder: (context, state) {
        if (state is AmbassadorsLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is AmbassadorsLoaded) {
          final referrals = state.referrals;

          final rows = List.generate(referrals.length, (index) {
            final referral = referrals[index];
            return DataRow(cells: [
              DataCell(Text(referral.backpackerId,
                  style: const TextStyle(fontSize: 12))),
              DataCell(Text(referral.username,
                  style: const TextStyle(fontSize: 12))),
              DataCell(Text(referral.type.toString() == '1' ? 'Yes' : 'No',
                  style: const TextStyle(fontSize: 12))),
              DataCell(Text(referral.code.toString(),
                  style: const TextStyle(fontSize: 12))),
              DataCell(Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        context.read<AmbassadorsCubit>().changeStatus(
                            id: referral.backpackerId, type: referral.type);
                      },
                      child: const Text('Change Ambassador Status',
                          style: TextStyle(fontSize: 12))),
                ],
              )),
            ]);
          });

          return LayoutBuilder(
            builder: (context, constraints) {
              return SelectionArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: FadeInUpCard(
                    padding: EdgeInsets.zero,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              const Text('User wallets'),
                              const SizedBox(width: 20),
                              Expanded(
                                child: AnimSearchBar(
                                  width: constraints.maxWidth < 600 ? 200 : 400,
                                  textController: textController,
                                  onSuffixTap: () {},
                                  onSubmitted: (String value) {
                                    context
                                        .read<AmbassadorsCubit>()
                                        .search(value);
                                  },
                                ),
                              ),
                              Spacer(),
                              TextButton(
                                onPressed: () {
                                  context
                                      .read<AmbassadorsCubit>()
                                      .generateCsv();
                                },
                                child: const Text('Generate Backpackers CSV'),
                              ),
                            ],
                          ),
                        ),
                        const Divider(),
                        Expanded(
                          child: ConstrainedBox(
                            constraints:
                                BoxConstraints(minWidth: constraints.maxWidth),
                            child: DataTable2(
                              columnSpacing:
                                  constraints.maxWidth < 600 ? 10 : 20,
                              dataRowHeight: 100,
                              columns: const [
                                DataColumn(
                                  label: Text('Backpacker ID',
                                      style: TextStyle(fontSize: 12)),
                                ),
                                DataColumn(
                                  label: Text('Username',
                                      style: TextStyle(fontSize: 12)),
                                ),
                                DataColumn(
                                  label: Text('Is Ambassador',
                                      style: TextStyle(fontSize: 12)),
                                ),
                                DataColumn(
                                  label: Text('Referral Code',
                                      style: TextStyle(fontSize: 12)),
                                ),
                                DataColumn(
                                  label: Text('Actions',
                                      style: TextStyle(fontSize: 12)),
                                ),
                              ],
                              rows: rows,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        } else if (state is AmbassadorsError) {
          return const Center(child: Text('Error loading wallets'));
        } else {
          return const Center(child: Text('Unexpected state'));
        }
      },
    );
  }
}
