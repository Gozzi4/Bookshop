/**
 * Created by puter on 20/11/2015.
 */

angular.module('bookshop').controller('appController',['$scope','AuthService','$routeParams', function ($scope,

                                                                                                        AuthService,$routeParams) {
    //url id
    $scope.bookId = $routeParams.bookId;

    $scope.currentUser = null;
    //$scope.userRoles = USER_ROLES;
    $scope.isAuthorized = AuthService.isAuthorized;

    $scope.setCurrentUser = function (user) {
        $scope.currentUser = user;
    };




}])