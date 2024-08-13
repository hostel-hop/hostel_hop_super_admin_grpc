import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hostel_hop_super_admin/main.dart';
import 'package:hostel_hop_super_admin/src/features/wallets/cubit/wallets_cubit.dart';
import 'package:hostel_hop_super_admin/src/shared/widgets/fade_in_up_card.dart';

class WalletsPage extends StatelessWidget {
  const WalletsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<WalletsCubit>(),
      child: const WalletsContent(),
    );
  }
}

class WalletsContent extends HookWidget {
  const WalletsContent({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    final textController = useTextEditingController();

    return BlocConsumer<WalletsCubit, WalletsState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is WalletsLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is WalletsLoaded) {
          final wallets = state.wallets;

          final rows = List.generate(wallets.length, (index) {
            final wallet = wallets[index];
            return DataRow(cells: [
              DataCell(Text(wallet.backpackerId,
                  style: const TextStyle(fontSize: 12))),
              DataCell(
                  Text(wallet.username, style: const TextStyle(fontSize: 12))),
              DataCell(Text(wallet.balanceOfNonWithdrawableCredits.toString(),
                  style: const TextStyle(fontSize: 12))),
              DataCell(Text(wallet.balanceOfWithdrawableCredits.toString(),
                  style: const TextStyle(fontSize: 12))),
              DataCell(Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext dialogContext) {
                          return HookBuilder(builder: (hookContext) {
                            final withdrawableCreditController =
                                useTextEditingController();
                            final nonWithdrawableCreditController =
                                useTextEditingController();

                            final withdrawableCreditValue = useState('');
                            final nonWithdrawableCreditValue = useState('');

                            useEffect(() {
                              withdrawableCreditController.addListener(() {
                                withdrawableCreditValue.value =
                                    withdrawableCreditController.text;
                              });
                              return () =>
                                  withdrawableCreditController.dispose();
                            }, [withdrawableCreditController]);

                            useEffect(() {
                              nonWithdrawableCreditController.addListener(() {
                                nonWithdrawableCreditValue.value =
                                    nonWithdrawableCreditController.text;
                              });
                              return () =>
                                  nonWithdrawableCreditController.dispose();
                            }, [nonWithdrawableCreditController]);

                            return Dialog(
                              child: SizedBox(
                                width: 400,
                                height: 400,
                                child: Column(
                                  children: [
                                    const SizedBox(height: 20),
                                    Text(
                                      'Update Withdrawable Credits',
                                      style: Theme.of(dialogContext)
                                          .textTheme
                                          .titleLarge,
                                    ),
                                    const SizedBox(height: 20),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextField(
                                        controller:
                                            withdrawableCreditController,
                                        decoration: const InputDecoration(
                                          labelText: 'Enter Amount',
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Text(
                                      'Update Non-Withdrawable Credits',
                                      style: Theme.of(dialogContext)
                                          .textTheme
                                          .titleLarge,
                                    ),
                                    const SizedBox(height: 20),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextField(
                                        controller:
                                            nonWithdrawableCreditController,
                                        decoration: const InputDecoration(
                                          labelText: 'Enter Amount',
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(dialogContext).pop();
                                            },
                                            child: const Text('Cancel'),
                                          ),
                                          const SizedBox(width: 10),
                                          TextButton(
                                            onPressed: () {
                                              context
                                                  .read<WalletsCubit>()
                                                  .updateCredits(
                                                    backpackerId:
                                                        wallet.backpackerId,
                                                    withdrawableCredits:
                                                        withdrawableCreditValue
                                                                    .value !=
                                                                ''
                                                            ? int.parse(
                                                                withdrawableCreditValue
                                                                    .value)
                                                            : 0,
                                                    nonWithdrawableCredits:
                                                        nonWithdrawableCreditValue
                                                                    .value !=
                                                                ''
                                                            ? int.parse(
                                                                nonWithdrawableCreditValue
                                                                    .value)
                                                            : 0,
                                                  );
                                              Navigator.of(dialogContext).pop();
                                            },
                                            child: const Text('Update'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                        },
                      );
                    },
                    child: const Text('Update Credits',
                        style: TextStyle(fontSize: 12)),
                  ),
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
                                    context.read<WalletsCubit>().search(value);
                                  },
                                ),
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
                              scrollController: scrollController,
                              dataRowHeight:
                                  constraints.maxWidth < 600 ? 60 : 100,
                              columnSpacing:
                                  constraints.maxWidth < 600 ? 5 : 20,
                              columns: const [
                                DataColumn(
                                  label: Flexible(
                                    child: Text(
                                      'Backpacker ID',
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: true,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: Flexible(
                                    child: Text(
                                      'Username',
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: true,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: Flexible(
                                    child: Text(
                                      'Withdrawable Credits',
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: true,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: Flexible(
                                    child: Text(
                                      'Non-Withdrawable Credits',
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: true,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: Flexible(
                                    child: Text(
                                      'Actions',
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: true,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
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
        } else if (state is WalletsError) {
          return const Center(child: Text('Error loading wallets'));
        } else {
          return const Center(child: Text('Unexpected state'));
        }
      },
    );
  }
}
