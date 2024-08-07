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
    final scrollController = useScrollController();
    final textController = useTextEditingController();

    return BlocConsumer<AmbassadorsCubit, AmbassadorsState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is AmbassadorsLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is AmbassadorsLoaded) {
          final referrals = state.referrals;

          final rows = List.generate(referrals.length, (index) {
            final referral = referrals[index];
            return DataRow(cells: [
              DataCell(Text(referral.backpackerId)),
              DataCell(Text(referral.username)),
              DataCell(Text(referral.type.toString() == '1' ? 'Yes' : 'No')),
              DataCell(Text(referral.code.toString())),
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
                      child: const Text('Change Ambassador Status')),
                ],
              )),
            ]);
          });

          return SelectionArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: FadeInUpCard(
                padding: EdgeInsets.zero,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(20),
                          child: Text('User wallets'),
                        ),
                        Theme(
                          data: Theme.of(context).copyWith(
                              inputDecorationTheme:
                                  const InputDecorationTheme()),
                          child: AnimSearchBar(
                            width: 400,
                            textController: textController,
                            onSuffixTap: () {},
                            onSubmitted: (String value) {
                              context.read<AmbassadorsCubit>().search(value);
                            },
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Expanded(
                      child: Stack(
                        children: [
                          DataTable2(
                            scrollController: scrollController,
                            dataRowHeight: 100,
                            columns: const [
                              DataColumn(
                                label: Text('Backpacker ID'),
                              ),
                              DataColumn(
                                label: Text('Username'),
                              ),
                              DataColumn(
                                label: Text('Is Ambassador'),
                              ),
                              DataColumn(
                                label: Text('Referral Code'),
                              ),
                              DataColumn(
                                label: Text('Actions'),
                              ),
                            ],
                            rows: rows,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
