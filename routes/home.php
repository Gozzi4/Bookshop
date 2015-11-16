<?php
/**
 * Created by PhpStorm.
 * User: puter
 * Date: 13/11/2015
 * Time: 22:18
 */
// landing home page
$app->get('/', function() use ($app) {
    readfile('index.html');
    $app->stop();
});