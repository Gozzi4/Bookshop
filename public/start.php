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
require '../helpers/Hash.php';
require '../validator/validator.php';
require '../middleware/beforeMiddelware.php';
require '../routes/routes.php';
use models\User as User;


session_cache_limiter(false);
session_start();
ini_set('display_errors','On');

$app->auth = false;

$app->add(new \middleware\beforeMiddelware());
$app->container->set('user',function(){
    return new User;
});
$app->container->singleton('hash',function(){
    return new \helpers\Hash();
});
$app->container->singleton('validation',function() use ($app){

return new \validator\validator($app->user);

});

