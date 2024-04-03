import 'package:flutter/material.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SearchViewBody(),
      ),
    );
  }
}

// Steps to implement search correctly:
// 1. Create SearchRepository
// 2. Create SearchCubit
// 3. Trigger SearchCubit
