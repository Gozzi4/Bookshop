/**
 * Created by puter on 09/12/2015.
 */
angular.module('bookshop').controller('bookController',['$scope','$routeParams','BookService','OrderService','$location',
    function ($scope, $routeParams,BookService,OrderService,$location) {

   //url id
    $scope.bookId = $routeParams.id;
    $scope.book;
        //var userid =  $scope.currentUser.id
    // goes to the book service and retrives the data
    BookService.book($scope.bookId).then(function (book) {

        $scope.book= book;


    }, function () {

    });

    $scope.order = function (){
        
        
        if($scope.currentUser != null){
             var book =  $scope.bookId;
        var userid = $scope.currentUser.id;
        arr ={
            bookId:book,
            userId:userid
        };

        OrderService.addorder(arr).then(function (response) {

            $location.path();
            //
            // change the path
            $location.path('/profile')
        }, function () {

        });
        }else{
            
            
            window.alert("please log in");
        }
      


    }


}]);