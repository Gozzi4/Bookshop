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
use models\User as User;


session_cache_limiter(false);
session_start();
ini_set('display_errors','On');
$app->container->set('user',function(){
    return new User;

});
$app->container->singleton('hash',function(){
    return new \helpers\Hash();
});

//$username ='timmy';
//$password ='celtic06';
//$email='toim@gmail.com';
require '../routes/routes.php';
//$app->user->create([
//    'username' => $username,
//    'password' => $app->hash->password($password),
//    'email' => $email
//]);
//var_dump($users);