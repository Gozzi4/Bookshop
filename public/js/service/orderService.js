/**
 * Created by puter on 10/12/2015.
 */
angular.module('bookshop').factory('OrderService', function ($http) {


    var orderService = {};
    orderService.getOrders = function (id) {
        return $http
            .get('/get orders')
            .then(function (res) {
                return res.data;
            });
    };
    orderService.addorder = function (id) {
        return $http
            .post('/addorder',id)
            .then(function (res) {
                return res.data;
            });
    };
    orderService.deleteorder = function (id) {
        return $http
            .post('/delete',id)
            .then(function (res) {
                return res.data;
            });
    };
    return orderService;
})