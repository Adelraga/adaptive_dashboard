import 'package:responsive_app/cors/app_images.dart';

import '../models/all_expensess_item_model.dart';
import '../models/drawer_item_model.dart';

const List<DrawerItemModel> DrawerItems =[
  DrawerItemModel(image: Assets.assetsSvgsDashboard, title: 'Dashboard'),
  DrawerItemModel(image: Assets.assetsSvgsMyTransctions, title: 'My Transaction'),
  DrawerItemModel(image: Assets.assetsSvgsStatistics, title: 'Statistics'),
  DrawerItemModel(image: Assets.assetsSvgsWalletAccount, title: 'Wallet Account'),
  DrawerItemModel(image: Assets.assetsSvgsMyInvestments, title: 'My Investments'),

];

   const items = [
    AllExpensessItemModel(
        title: "Balabce",
        image: Assets.assetsSvgsBalance,
        date: "April 2024",
        price: "\$ 20.129"),
    AllExpensessItemModel(
        title: "Income",
        image: Assets.assetsSvgsIncome,
        date: "April 2024",
        price: "\$ 20.129"),
    AllExpensessItemModel(
        title: "Income",
        image: Assets.assetsSvgsExpenses,
        date: "April 2024",
        price: "\$ 20.129"),
  ];