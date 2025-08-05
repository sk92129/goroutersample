enum MyPage { home, search, settings, help }

MyPage findRoute(String url) {
  switch (url) {
    case "/":
      return MyPage.home;
    case "/search":
      return MyPage.search;
    case "/settings":
      return MyPage.settings;
    case "/help":
      return MyPage.help;
    default:
      return MyPage.home;
  }
}

extension MyPageExtension on MyPage {
  String get toName {
    switch (this) {
      case MyPage.home:
        return "home";
      case MyPage.search:
        return "search";
      case MyPage.settings:
        return "settings";
      case MyPage.help:
        return "help";
    }
  }
}

extension AppRouteExtension on MyPage {
  String get toPath {
    switch (this) {
      case MyPage.home:
        return "/";
      case MyPage.search:
        return "/search";
      case MyPage.settings:
        return "/settings";
      case MyPage.help:
        return "/help";
    }
  }
}
