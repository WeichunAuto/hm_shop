import 'package:flutter/material.dart';
import 'package:hm_shop/utils/hexColor.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // 一般应用程序的导航名称不变
  final List<Map<String, String>> _tabList = [
    {
      "icon": "lib/assets/home.png", // 正常显示的图标
      "icon_active": "lib/assets/home-active.png", // 激活后显示的图标
      "text": "Home",
    },
    {
      "icon": "lib/assets/category.png", // 正常显示的图标
      "icon_active": "lib/assets/category-active.png", // 激活后显示的图标
      "text": "Category",
    },
    {
      "icon": "lib/assets/cart.png", // 正常显示的图标
      "icon_active": "lib/assets/cart-active.png", // 激活后显示的图标
      "text": "Cart",
    },
    {
      "icon": "lib/assets/me.png", // 正常显示的图标
      "icon_active": "lib/assets/me-active.png", // 激活后显示的图标
      "text": "Me",
    },
  ];

  // 当前激活的导航栏索引
  int _currentTabIndex = 0;

  List<BottomNavigationBarItem> _getTabBarWidget() {
    return List.generate(_tabList.length, (index) {
      return BottomNavigationBarItem(
        icon: Image.asset(_tabList[index]["icon"]!, width: 30, height: 30),
        activeIcon: Image.asset(
          _tabList[index]["icon_active"]!,
          width: 30,
          height: 30,
        ),
        label: _tabList[index]["text"],
        // backgroundColor: Colors.black26,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("这是首页页面"),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTabIndex,
        onTap: (index) {
          print("tab index = ${index}");
          _currentTabIndex = index;
          setState(() {}); // 设置激活的Tab索引后 重新渲染视图
        },
        showUnselectedLabels: true, // 显示未选中Tab的文本
        selectedItemColor: HexColor.fromHex("#e0620d"), // Tab激活后的文本颜色
        unselectedItemColor: Colors.black87, // Tab未激活的文本颜色
        items: _getTabBarWidget(),
      ),
    );
  }
}
