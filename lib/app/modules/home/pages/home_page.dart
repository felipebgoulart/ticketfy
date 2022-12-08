import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../core/theme/app_images.dart';
import '../../../core/theme/app_svgs.dart';
import '../widgets/ticketfy_nav_item.dart';
import '../home_store.dart';
import 'home_content_page.dart';

class HomePage extends StatefulWidget {

  const HomePage({
    Key? key
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late final HomeStore _store;

  final List<Widget> _screensList = const [
    HomeContentPage(),
    HomeContentPage(),
    HomeContentPage(),
    HomeContentPage(),
    HomeContentPage()
  ];

  @override
  void initState() {
    super.initState();
    _store = Modular.get<HomeStore>();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    final List<String> navbarIconsList = [
      AppSvgs.home,
      AppSvgs.discover,
      AppSvgs.movies,
      AppSvgs.ticket,
      AppSvgs.profile
    ];

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.galaxyBackground),
          fit: BoxFit.cover
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _screensList.elementAt(_store.currentIndex),
        bottomNavigationBar: Observer(
          builder: (BuildContext context) {
            return BottomAppBar(
              color: theme.primaryColor,
              child: SizedBox(
                height: 82,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(navbarIconsList.length, (int index) {
                    return TicketfyNavItem(
                      index: index,
                      enabled: _store.currentIndex == index,
                      svgPath: navbarIconsList[index]
                    );
                  })
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}
