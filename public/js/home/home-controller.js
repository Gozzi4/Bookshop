angular.module('bookshop')
  .controller('HomeController', ['$scope','$http', function ($scope,$http) {


      $http({
        method: 'GET',
        url: 'http://www.localhost.com/Angular-PhpSlim/public/api/login'
      }).then(function successCallback(response) {
        console.log(response.data);
      }, function errorCallback(response) {
        console.log(response);
      });
  }]);
