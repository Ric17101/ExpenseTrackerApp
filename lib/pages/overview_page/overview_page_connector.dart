import 'package:async_redux/async_redux.dart';
import 'package:fin_tracker_app/pages/overview_page/overview_page.dart';
import 'package:fin_tracker_app/pages/overview_page/overview_page_vm.dart';
import 'package:fin_tracker_app/state/action/actions.dart';
import 'package:fin_tracker_app/state/app_state.dart';
import 'package:flutter/material.dart';

class OverviewPageConnector extends StatelessWidget {
  const OverviewPageConnector({super.key});

  @override
  Widget build(BuildContext context) =>
      StoreConnector<AppState, OverviewPageVm>(
        vm: () => OverviewPageVmFactory(),
        // TODO: can be used when no need to access state
        // E.g. run the dispatch action
        // converter: (store) => TodoPageVm(
        //   loadMoreCallback: () {},
        //   todoItemUiList: const AsyncResult.success([]),
        // ),
        onInitialBuild: (_, store, __) => store.dispatch(GetDataAction()),
        builder: (context, vm) => OverviewPage(
          // loadMoreCallback: vm.loadMoreCallback,
        ),
      );
}
