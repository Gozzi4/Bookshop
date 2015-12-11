// Declare app level module which depends on filters, and services
angular.module('bookshop', ['ngResource', 'ngRoute', 'ui.bootstrap','ngCookies', 'ui.date'])
  .config(['$routeProvider','$locationProvider','$httpProvider', function ($routeProvider,$locationProvider,$httpProvider) {

        //var $cookies;
        //angular.injector(['ngCookies']).invoke(['$cookies', function(_$cookies_) {
        //    $cookies = _$cookies_;
        //}]);
        //
        //activated();
        //function activated() {
        //
        //    /*If there is already a cookie, we can guess that the user has refreshed the page, so it can be considered
        //     as a user. */
        //    ////console.log($cookies.get('PHPSESSID'));
        //    if(typeof $cookies['PHPSESSID'] !== "undefined") {
        //        //userRole = 'ROLE_USER';
        //        //logger.info("using previous session");
        //        console.log('old session')
        //    }
        //
        //}
        //
        $httpProvider.defaults.headers.common = {};
        $httpProvider.defaults.headers.post = {};
        $httpProvider.defaults.headers.put = {};
        $httpProvider.defaults.headers.patch = {};


      $locationProvider.html5Mode({enabled: true,
          requireBase: false});
    $routeProvider
      .when('/', {
        templateUrl: 'views/home/home.html', 
        controller: 'HomeController'})
        .when('/profile', {
            templateUrl: 'views/home/profile.html',
            controller: 'profileController'})
        .when('/register', {
          templateUrl: 'views/home/register.html',
          controller: 'registerController'})
        .when('/login', {
          templateUrl: 'views/home/login.html',
          controller: 'loginController'})
        .when('/:id', {
            templateUrl: 'views/home/book.html',
            controller: 'bookController'})
      .otherwise({redirectTo: '/'});

  }]);
