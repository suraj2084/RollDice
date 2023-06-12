enum Environment { dev, prod }

abstract class FlavorConfig {
  static late String appTitle;
  static late String baseApiUrl;
  static late Environment _environment;
  static Environment get environment => _environment;
  static setUpEnv(Environment env) {
    _environment = env;
    switch (env) {
      case Environment.dev:
        {
          baseApiUrl = 'https://api-dev.com';
          appTitle = 'Flutter Flavors dev';
          break;
        }
      case Environment.prod:
        {
          baseApiUrl = 'https://api-prod.com';
          appTitle = 'Flutter Flavors';
          break;
        }
    }
  }
}
