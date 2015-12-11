angular.module('bookshop')
  .controller('HomeController', ['$scope','$http', function ($scope,$http) {


      books();
     $scope.search = search;
      function books(){
        $http.get('http://www.localhost.com/Angular-PhpSlim/public/books').then(function(response){
          //setting the output value to the text input so the user can convert back
            $scope.book = response.data;
          console.log(response.data);
        }) .catch(function () {


        });
      }

        function search(Query){

            var url = "http://www.localhost.com/Angular-PhpSlim/public/search/"+Query;

            $http.get(url).then(function(response){
                //setting the output value to the text input so the user can convert back
                $scope.searchbook = response.data;
                console.log(response.data);
            }) .catch(function () {

            });
        }
  }]);
