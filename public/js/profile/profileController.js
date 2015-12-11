/**
 * Created by puter on 09/12/2015.
 */
angular.module('bookshop').controller('profileController',['$scope','$routeParams','BookService','$http',
    function ($scope,$routeParams,BookService,$http) {


    $scope.userId = $routeParams.id;

    $scope.user;

    $scope.bookname;
    $scope.description;
    $scope.author;
    $scope.image;

    var arr;

    usersBooks();

    $scope.add = function (bookname,description,author,image) {


        var userid = $scope.currentUser.id;
         arr = {
             name: bookname,
             description: description,
             author: author,
             image: image,
             id: userid
         }

        BookService.addbook(arr).then(function (added) {

            console.log(added);

            $scope.bookname= ' ';
            $scope.description=' ';
            $scope.author=' ';
            $scope.image=' ';

            //update users book list
            usersBooks();

        }, function () {



        });
    }

    function usersBooks(){

        var userid = $scope.currentUser.id;
        var url = "http://www.localhost.com/Angular-PhpSlim/public/getUserBooks/"+userid;

        $http.get(url).then(function(response){
            //setting the output value to the text input so the user can convert back
            $scope.userbooks = response.data;
            console.log(response.data);
        }) .catch(function () {

        });
    }
}]);