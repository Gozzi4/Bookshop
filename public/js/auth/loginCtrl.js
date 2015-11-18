/**
 * Created by puter on 16/11/2015.
 */
angular.module('bookshop')
    .controller('loginController', ['$scope', function ($scope) {


        $scope.username='';
        $scope.email='';
        $scope.password='';




        function login(){

            $http.post().then(function(response){
                if(response.data==='' || response.data===' '){
                    //returning the data back so it can be used in the view
                    $scope.result ={CelValue:"Blank value"};
                }else{
                    $scope.result =response.data;

                }
                //setting the output value to the text input so the user can convert back
                $scope.temp=response.data.CelValue;
            }) .catch(function () {

                $scope.result ={CelValue:"Bad input"};
            });;
        }



    }]);
