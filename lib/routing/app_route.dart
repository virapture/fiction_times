enum AppRoute {
  boot,
  top,
  article,
  draftNew,
  ;

  const AppRoute();

  String get path {
    switch (this) {
      case AppRoute.boot:
        return '/boot';
      case AppRoute.top:
        return '/';
      case AppRoute.article:
        return '/articles/:id';
      case AppRoute.draftNew:
        return '/drafts/new';
    }
  }

  String pathWithId(String id) {
    return path.replaceAll(':id', id);
  }
}
