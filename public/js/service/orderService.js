/**
 * Created by puter on 10/12/2015.
 */
angular.module('bookshop').factory('OrderService', function ($http) {


    var orderService = {};
    orderService.getOrders = function (id) {
        return $http
            .get('http://www.localhost.com/Angular-PhpSlim/public/book/'+id)
            .then(function (res) {
                return res.data;
            });
    };
    orderService.addorder = function (id) {
        return $http
            .post('http://www.localhost.com/Angular-PhpSlim/public/addorder',id)
            .then(function (res) {
                return res.data;
            });
    };
    orderService.deleteorder = function (id) {
        return $http
            .post('http://www.localhost.com/Angular-PhpSlim/public/addbook',id)
            .then(function (res) {
                return res.data;
            });
    };
    return orderService;
})