/**
 * Created by puter on 09/12/2015.
 */
angular.module('bookshop').factory('BookService', function ($http) {

    // book service for individual books by ID
    var bookService = {};
    bookService.book = function (id) {
        return $http
            .get('http://www.localhost.com/Angular-PhpSlim/public/book/'+id)
            .then(function (res) {
                return res.data;
            });
    };
    bookService.addbook = function (id) {
        return $http
            .post('http://www.localhost.com/Angular-PhpSlim/public/addbook',id)
            .then(function (res) {
                return res.data;
            });
    };
    bookService.deletebook = function (id) {
        return $http
            .post('http://www.localhost.com/Angular-PhpSlim/public/addbook',id)
            .then(function (res) {
                return res.data;
            });
    };
    return bookService;
})