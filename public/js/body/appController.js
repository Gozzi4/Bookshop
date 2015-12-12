/**
 * Created by puter on 20/11/2015.
 */

angular.module('bookshop').controller('appController',['$scope','AuthService','$routeParams','$http', function ($scope,

                                                                                                        AuthService,$routeParams,$http) {
   // function to keep user logged in
   keepuser();
    //url id
    $scope.bookId = $routeParams.bookId;

    $scope.currentUser = null;
    //$scope.userRoles = USER_ROLES;
    $scope.isAuthorized = AuthService.isAuthorized;

    $scope.setCurrentUser = function (user) {
        $scope.currentUser = user;
    };
    
    function keepuser(){

            var url = "/log";

            $http.get(url).then(function(response){
                // when user refreshes page data shows
                if (response.data == 'null'){
                    
                   
                }else{
                    $scope.setCurrentUser(response.data);
                    
                    
                    
                }
                
                
            }) .catch(function () {

            });
        }




}])