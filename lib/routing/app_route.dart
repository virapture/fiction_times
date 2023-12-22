enum AppRoute {
  boot,
  top,
  article;

  const AppRoute();

  String get path {
    switch (this) {
      case AppRoute.boot:
        return '/boot';
      case AppRoute.top:
        return '/';
      case AppRoute.article:
        return '/articles/:id';
    }
  }

  String pathWithId(String id) {
    return path.replaceAll(':id', id);
  }
}
