/**
 * Created by puter on 16/11/2015.
 */
angular.module('bookshop')
    .controller('loginController', ['$scope', '$http', '$location', 'AuthService', function ($scope, $http, $location, AuthService) {


        //$scope.login = login;
        $scope.username = '';
        $scope.Email = '';
        $scope.password = '';
        var arr = {};


        $scope.login = function (username, password, Email) {

            // adding the input to an array
            arr = {
                username: username,
                password: password,
                email: Email
            }
            AuthService.login(arr).then(function (user) {
                console.log(user);
                //$rootScope.$broadcast(AUTH_EVENTS.loginSuccess);
                $scope.setCurrentUser(user);
                $location.path();
                //
                // change the path
                $location.path('/')
            }, function () {
                //$rootScope.$broadcast(AUTH_EVENTS.loginFailed);
            });
        };

    }]);
