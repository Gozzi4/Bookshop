

angular.module('bookshop').factory('AuthService', function ($http, Session) {

    var authService = {};
    authService.login = function (credentials) {
        return $http
            .post('http://www.localhost.com/Angular-PhpSlim/public/login', credentials)
            .then(function (res) {
                Session.create(res.data.id, res.data.username
                 );
                return res.data;
            });
    };
    authService.register = function (credentials) {
        return $http
            .post('http://www.localhost.com/Angular-PhpSlim/public/register', credentials)
            .then(function (res) {
                Session.create(res.data.id, res.data.username
                );
                return res.data;
            });
    };

    authService.isAuthenticated = function () {
        return !!Session.userId;
    };

    authService.isAuthorized = function (authorizedRoles) {
        if (!angular.isArray(authorizedRoles)) {
            authorizedRoles = [authorizedRoles];
        }
        return (authService.isAuthenticated() &&
        authorizedRoles.indexOf(Session.userRole) !== -1);
    };

    return authService;
})