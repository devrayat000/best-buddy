import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/auth/auth_cubit.dart';
import '../../../auth/data/graphql/auth_mutations.graphql.dart';
import '../../../../core/widgets/loading_view.dart';

class LogoutDialogPage extends StatelessWidget {
  const LogoutDialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Logout'),
      content: const Text('Are you sure you want to logout?'),
      actions: [
        TextButton(
          onPressed: () => context.pop(),
          child: const Text('Cancel'),
        ),
        Mutation$EndSession$Widget(
          options: WidgetOptions$Mutation$EndSession(
            onCompleted: (data, result) {
              context.read<AuthCubit>().logout();
              // Close dialog and let router redirect to auth pages
              context.pop();
            },
            onError: (error) {
              // Even if logout fails on server, clear local state
              context.read<AuthCubit>().logout();
              // Close dialog and let router redirect to auth pages
              context.pop();
            },
          ),
          builder: (runMutation, result) {
            return FilledButton(
              onPressed: () {
                runMutation();
              },
              style: FilledButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.error,
              ),
              child: result?.isLoading == true
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: LoadingView(
                        fullScreen: false,
                        size: 20,
                        strokeWidth: 2,
                        color: Colors.white,
                        padding: EdgeInsets.zero,
                      ),
                    )
                  : const Text('Logout'),
            );
          },
        ),
      ],
    );
  }
}
