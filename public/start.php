<?php
/**
 * Created by PhpStorm.
 * User: puter
 * Date: 13/11/2015
 * Time: 18:24
 */
require '../vendor/autoload.php';
$app = new Slim\Slim();
require '../config/database.php';
require '../models/User.php';
require '../models/Books.php';
require '../models/Order.php';
require '../helpers/Hash.php';
require '../validator/validator.php';
require '../middleware/beforeMiddleware.php';
require '../routes/routes.php';
use models\User as User;
use models\Books as Book;
use models\Order as Order;


session_cache_limiter(false);
session_start();
ini_set('display_errors','On');


// middle ware to check session
$app->add(new \middleware\beforeMiddelware());


//ORM User Book and Order
$app->container->set('user',function(){
    return new User;
});
$app->container->set('book',function(){
    return new Book();
});
$app->container->set('order',function(){
        return new Order();
});


// hashing passwords
$app->container->singleton('hash',function(){
    return new \helpers\Hash();
});

//validate input
$app->container->singleton('validation',function() use ($app){

return new \validator\validator($app->user);

});

