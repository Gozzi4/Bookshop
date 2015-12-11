/**
 * Created by puter on 16/11/2015.
 */
angular.module('bookshop')
    .controller('registerController', ['$scope','$http','$location','AuthService', function ($scope,$http,$location,AuthService) {


        $scope.username='';
        $scope.email='';
        $scope.password='';

        var arr={};
        $scope.register = function (username, password, email) {

            // adding the input to an array
            arr = {
                username: username,
                password: password,
                email: email
            }
            console.log(username);
            AuthService.register(arr).then(function (user) {
                console.log(user);
                //$rootScope.$broadcast(AUTH_EVENTS.loginSuccess);
                $scope.setCurrentUser(user);
                $location.path();
                // change the path
                $location.path('/')
            }, function () {
                //$rootScope.$broadcast(AUTH_EVENTS.loginFailed);
            });
        };





    }]);
