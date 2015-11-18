/**
 * Created by puter on 16/11/2015.
 */
angular.module('bookshop')
    .controller('loginController', ['$scope','$http', function ($scope,$http) {


        $scope.login = login;
        $scope.username='';
        $scope.Email='';
        $scope.password='';
        var arr={};

        var base ='http://www.localhost.com/Angular-PhpSlim/public/api/login'

        function login(username,password,Email){
            arr={
                username:username,
                password:password,
                email:Email
            }

            $http.post(base, arr).then(function successCallback(response){

                console.log(response.data.username)
                $scope.Username = response.data.username;

            }, function errorCallback(response){


                console.log(response.username)
            });

        }



    }]);
