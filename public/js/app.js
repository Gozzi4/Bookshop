// Declare app level module which depends on filters, and services
angular.module('bookshop', ['ngResource', 'ngRoute', 'ui.bootstrap', 'ui.date'])
  .config(['$routeProvider','$locationProvider','$httpProvider', function ($routeProvider,$locationProvider,$httpProvider) {



        $httpProvider.defaults.headers.common = {};
        $httpProvider.defaults.headers.post = {};
        $httpProvider.defaults.headers.put = {};
        $httpProvider.defaults.headers.patch = {};


      $locationProvider.html5Mode({enabled: true});
    $routeProvider
      .when('/', {
        templateUrl: 'views/home/home.html', 
        controller: 'HomeController'})
        .when('/register', {
          templateUrl: 'views/home/register.html',
          controller: 'authController'})
        .when('/login', {
          templateUrl: 'views/home/login.html',
          controller: 'loginController'})
      .otherwise({redirectTo: '/'});
  }]);
