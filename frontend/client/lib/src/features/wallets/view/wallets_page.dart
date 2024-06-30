import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hostel_hop_super_admin/main.dart';
import 'package:hostel_hop_super_admin/src/features/wallets/cubit/wallets_cubit.dart';
import 'package:hostel_hop_super_admin/src/shared/widgets/fade_in_up_card.dart';
import 'package:hostel_hop_super_admin/src/shared/widgets/password_validator.dart';

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
  const WalletsContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final scrollControler = useScrollController();
    final textController = useTextEditingController();

    return BlocBuilder<WalletsCubit, WalletsState>(
      builder: (context, state) {
        switch (state) {
          case WalletsLoading():
            return const Center(child: CircularProgressIndicator());
          case WalletsLoaded():
            final wallets = state.wallets;

            final rows = List.generate(wallets.length, (index) {
              final wallet = wallets[index];
              return DataRow(cells: [
                DataCell(Text(
                  wallet.backpackerId,
                )),
                DataCell(Text(
                  wallet.username,
                )),
                DataCell(
                  Text(
                    wallet.balanceOfNonWithdrawableCredits.toString(),
                  ),
                ),
                DataCell(Text(
                  wallet.balanceOfWithdrawableCredits.toString(),
                )),
                DataCell(Text(
                  wallet.balanceOfPendingNonWithdrawableCredits.toString(),
                )),
                DataCell(Text(
                  wallet.balanceOfPendingWithdrawableCredits.toString(),
                )),
                DataCell(Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        final cubit = context.read<WalletsCubit>();
                        showDialog(
                          context: context,
                          builder: (context) {
                            return HookBuilder(builder: (context) {
                              final passwordController =
                                  useTextEditingController();

                              final passwordValue = useState('');

                              useEffect(
                                () {
                                  passwordController.addListener(() {
                                    passwordValue.value =
                                        passwordController.text;
                                  });

                                  return () => passwordController.dispose();
                                },
                                [passwordController],
                              );

                              return Dialog(
                                child: SizedBox(
                                  width: 400,
                                  height: 400,
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 20),
                                      Text(
                                        'Update Password',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge,
                                      ),
                                      const SizedBox(height: 20),
                                      PasswordValidator(
                                        password: passwordValue.value,
                                      ),
                                      const SizedBox(height: 20),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          controller: passwordController,
                                          decoration: const InputDecoration(
                                            labelText: 'New Password',
                                          ),
                                        ),
                                      ),
                                      const Spacer(),
                                      Padding(
                                        padding: const EdgeInsets.all(20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text('Cancel'),
                                            ),
                                            const SizedBox(width: 10),
                                            TextButton(
                                              onPressed: () {},
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
                      child: const Text('Update Password'),
                    ),
                    const SizedBox(width: 10),
                    TextButton(
                      onPressed: () {
                        final cubit = context.read<WalletsCubit>();
                        showDialog(
                          context: context,
                          builder: (context) {
                            return HookBuilder(builder: (context) {
                              final emailController =
                                  useTextEditingController();

                              final emailValue = useState('');

                              useEffect(
                                () {
                                  emailController.addListener(() {
                                    emailValue.value = emailController.text;
                                  });

                                  return () => emailController.dispose();
                                },
                                [emailController],
                              );

                              return Dialog(
                                child: SizedBox(
                                  width: 400,
                                  height: 400,
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 20),
                                      Text(
                                        'Update Email',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge,
                                      ),
                                      const SizedBox(height: 20),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          controller: emailController,
                                          decoration: const InputDecoration(
                                            labelText: 'New Email',
                                          ),
                                        ),
                                      ),
                                      const Spacer(),
                                      Padding(
                                        padding: const EdgeInsets.all(20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text('Cancel'),
                                            ),
                                            const SizedBox(width: 10),
                                            TextButton(
                                              onPressed: () {},
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
                      child: const Text('Update Email'),
                    ),
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
                              child: Text(
                                'Property wallets',
                              ),
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
                                  context.read<WalletsCubit>().search(value);
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
                              scrollController: scrollControler,
                              dataRowHeight: 100,
                              columns: const [
                                DataColumn(
                                  label: Text(
                                    'Backpacker ID',
                                  ),
                                ),
                                DataColumn(
                                  label: Text(
                                    'Username',
                                  ),
                                ),
                                DataColumn(
                                  label: Text(
                                    'Balance of Withdrawable Credits',
                                  ),
                                ),
                                DataColumn(
                                  label: Text(
                                    'Balance of Non-Withdrawable Credits',
                                  ),
                                ),
                                DataColumn(
                                  label: Text(
                                    'Balance of Pending Withdrawable Credits',
                                  ),
                                ),
                                DataColumn(
                                  label: Text(
                                    'Balance of Pending Non-Withdrawable Credits',
                                  ),
                                ),
                                DataColumn(
                                  label: Text(
                                    'Actions',
                                  ),
                                ),
                              ],
                              rows: rows,
                            ),
                            // if (loaded.loadingMore)
                            //   const Align(
                            //     alignment: Alignment.bottomCenter,
                            //     child: Padding(
                            //         padding: EdgeInsets.only(bottom: 50),
                            //         child: CircularProgressIndicator()),
                            //   ).animate().fade()
                          ],
                        )),
                      ],
                    )),
              ),
            );
          case WalletsError():
            return const Center(child: Text('Error loading wallets'));
        }
      },
    );
  }
}
