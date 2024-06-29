import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hostel_hop_super_admin/main.dart';
import 'package:hostel_hop_super_admin/src/features/property_owners/cubit/property_owners_cubit.dart';

class PropertyOwnersPage extends StatelessWidget {
  const PropertyOwnersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PropertyOwnersCubit>(),
      child: const PropertyOwnersContent(),
    );
  }
}

class PropertyOwnersContent extends StatelessWidget {
  const PropertyOwnersContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PropertyOwnersCubit, PropertyOwnersState>(
      builder: (context, state) {
        switch (state) {
          case PropertyOwnersLoading():
            return const Center(child: CircularProgressIndicator());
          case PropertyOwnersLoaded():
            final owners = state.owners;
            return ListView.builder(
              itemCount: owners.length,
              itemBuilder: (context, index) {
                final owner = owners[index];
                return ListTile(
                  title: Text('${owner.firstName} ${owner.lastName}'),
                  subtitle: Text(owner.email),
                );
              },
            );
          case PropertyOwnersError():
            return const Center(child: Text('Error loading owners'));
        }
      },
    );
  }
}
